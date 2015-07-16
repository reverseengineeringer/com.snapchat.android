package com.snapchat.videotranscoder.rendering;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import chc;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.cts.OutputSurface;
import com.snapchat.videotranscoder.cts.SplitOutputSurface;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import com.snapchat.videotranscoder.video.VideoDecoder;

public class VideoFilterDecoder
  extends VideoDecoder
{
  private static final int NOT_INITIALIZED = 0;
  private static final String TAG = "VideoFilterDecoder";
  private final int ACCEPTABLE_DELAY_US = 100;
  private InputSurface mInputSurface;
  private long mPrevMonoUsec = 0L;
  private long mPrevPresentUsec = 0L;
  
  public VideoFilterDecoder(@chc TranscodingResources paramTranscodingResources, @chc MediaFormat paramMediaFormat, StageDoneCallback paramStageDoneCallback, float[] paramArrayOfFloat)
  {
    super(paramTranscodingResources, paramMediaFormat, new SplitOutputSurface(paramTranscodingResources, paramArrayOfFloat), paramStageDoneCallback);
  }
  
  private boolean shouldDraw()
  {
    if (mPrevMonoUsec == 0L)
    {
      mPrevMonoUsec = (System.nanoTime() / 1000L);
      mPrevPresentUsec = mCodec.getOutputBufferInfo().presentationTimeUs;
    }
    long l1;
    long l2;
    do
    {
      return false;
      l1 = mCodec.getOutputBufferInfo().presentationTimeUs - mPrevPresentUsec;
      l2 = mPrevMonoUsec;
    } while (System.nanoTime() / 1000L <= l2 + l1 - 100L);
    mPrevMonoUsec += l1;
    mPrevPresentUsec += l1;
    return true;
  }
  
  public void addImmediately()
  {
    ((SplitOutputSurface)mDecoderOutputSurface).drawImage();
    mInputSurface.swapBuffers();
  }
  
  public void changeSplit(float paramFloat)
  {
    if (mDecoderOutputSurface != null) {
      ((SplitOutputSurface)mDecoderOutputSurface).changeSplit(paramFloat);
    }
  }
  
  protected void outputFrame()
  {
    if (!shouldDraw()) {}
    do
    {
      return;
      if (mInputSurface == null) {
        throw new TranscodingException("Error getting input surface");
      }
      ((SplitOutputSurface)mDecoderOutputSurface).updateImage();
      mDecoderOutputSurface.drawImage();
      mInputSurface.swapBuffers();
      mFrameToProcess = -1;
    } while (!mCodec.isEndOfStream());
    VerboseLogging.verboseLog("VideoFilterDecoder", "Rendering decoder: EOS");
    stageComplete();
    mFrameToProcess = -1;
  }
  
  public void restart()
  {
    if (mCodec != null) {
      mCodec.flush();
    }
    mPrevMonoUsec = 0L;
  }
  
  public void setInputSurface(InputSurface paramInputSurface)
  {
    mInputSurface = paramInputSurface;
  }
  
  public void setShader(@chc FragmentShader.Filter paramFilter1, @chc FragmentShader.Filter paramFilter2)
  {
    ((SplitOutputSurface)mDecoderOutputSurface).setShader(paramFilter1, paramFilter2);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.rendering.VideoFilterDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */