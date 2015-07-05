package com.snapchat.videotranscoder.video;

import android.graphics.Bitmap;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import cgb;
import cgc;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.cts.OutputSurface;
import com.snapchat.videotranscoder.cts.OutputSurfaceFactory;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Decoder;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class VideoDecoder
  extends Decoder
{
  protected static final String TAG = "VIDEODECODER";
  public OutputSurface mDecoderOutputSurface = null;
  private VideoEncoder mEncoder;
  private final TranscodingResources mTranscodingResources;
  int tries = 0;
  
  public VideoDecoder(@cgb TranscodingResources paramTranscodingResources, @cgb MediaFormat paramMediaFormat, @cgb OutputSurface paramOutputSurface, @cgb StageDoneCallback paramStageDoneCallback)
  {
    super(paramMediaFormat, paramOutputSurface.getSurface(), paramStageDoneCallback);
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramOutputSurface == null) {
      throw new NullPointerException("outputSurface is null");
    }
    mTranscodingResources = paramTranscodingResources;
    mDecoderOutputSurface = paramOutputSurface;
  }
  
  public VideoDecoder(@cgb TranscodingResources paramTranscodingResources, @cgb MediaFormat paramMediaFormat, @cgb StageDoneCallback paramStageDoneCallback, @cgb float[] paramArrayOfFloat, @cgc Bitmap paramBitmap)
  {
    this(paramTranscodingResources, new OutputSurfaceFactory(), paramMediaFormat, paramStageDoneCallback, paramArrayOfFloat, paramBitmap);
  }
  
  private VideoDecoder(@cgb TranscodingResources paramTranscodingResources, @cgb OutputSurfaceFactory paramOutputSurfaceFactory, @cgb MediaFormat paramMediaFormat, @cgb StageDoneCallback paramStageDoneCallback, @cgb float[] paramArrayOfFloat, @cgc Bitmap paramBitmap)
  {
    this(paramTranscodingResources, paramMediaFormat, paramOutputSurfaceFactory.createOutputSurface(paramTranscodingResources, paramArrayOfFloat, paramBitmap), paramStageDoneCallback);
  }
  
  protected void getFrameFromDecoder()
  {
    boolean bool = false;
    int i = mCodec.dequeueOutputBuffer(10000L);
    VerboseLogging.verboseLog("VIDEODECODER", "Buffer: " + i + " was returned");
    if (i < 0)
    {
      mCodec.handleDequeueError(i);
      return;
    }
    if (mCodec.isConfigBuffer())
    {
      mCodec.releaseOutputBuffer(i, false);
      return;
    }
    if (mCodec.getOutputBufferInfo().size != 0) {
      bool = true;
    }
    VerboseLogging.verboseLog("VIDEODECODER", "video decoder: returned buffer for time " + mCodec.getOutputBufferInfo().presentationTimeUs + " Rending:" + bool);
    mCodec.releaseOutputBuffer(i, bool);
    mFrameToProcess = i;
  }
  
  public void outputFrame()
  {
    VerboseLogging.verboseLog("VIDEODECODER", "output surface: await new image trie: " + tries);
    tries += 1;
    if (mDecoderOutputSurface.checkForNewImage(100))
    {
      InputSurface localInputSurface = mEncoder.getInputSurface();
      if (localInputSurface == null) {
        throw new TranscodingException("Error getting encoder input surface");
      }
      mDecoderOutputSurface.drawImage();
      localInputSurface.setPresentationTime(mCodec.getOutputBufferInfo().presentationTimeUs * 1000L);
      localInputSurface.swapBuffers();
      mFrameToProcess = -1;
      tries = 0;
    }
    if (mCodec.isEndOfStream())
    {
      VerboseLogging.verboseLog("VIDEODECODER", "video decoder: EOS");
      mEncoder.signalEndOfInputStream();
      stageComplete();
    }
  }
  
  public void processFrame()
  {
    if (mFrameToProcess == -1) {
      getFrameFromDecoder();
    }
    if (mFrameToProcess != -1) {
      outputFrame();
    }
  }
  
  public void setEncoder(VideoEncoder paramVideoEncoder)
  {
    mEncoder = paramVideoEncoder;
    VerboseLogging.verboseLog("VIDEODECODER", "Setting encoder:" + mEncoder);
  }
  
  public void setShader(@cgb FragmentShader.Filter paramFilter, boolean paramBoolean)
  {
    if (mDecoderOutputSurface == null) {
      throw new NullPointerException("mDecoderOutputSurface not created");
    }
    VerboseLogging.verboseLog("VIDEODECODER", "Setting output surface shader: " + paramFilter.name());
    paramFilter = new FragmentShader.Builder(mTranscodingResources).setFilter(paramFilter).enableOverlay(paramBoolean).build();
    mDecoderOutputSurface.changeFragmentShader(paramFilter);
  }
  
  public void stop()
  {
    super.stop();
    try
    {
      if (mDecoderOutputSurface != null)
      {
        VerboseLogging.verboseLog("VIDEODECODER", "releasing output surface");
        mDecoderOutputSurface.release();
        mDecoderOutputSurface = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.VideoDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */