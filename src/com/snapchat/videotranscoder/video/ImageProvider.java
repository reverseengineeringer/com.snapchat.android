package com.snapchat.videotranscoder.video;

import android.graphics.Bitmap;
import chc;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.cts.OutputSurface;
import com.snapchat.videotranscoder.cts.OutputSurfaceFactory;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import com.snapchat.videotranscoder.utils.TranscodingResources;

public class ImageProvider
  extends MediaProvider
{
  private static final String TAG = "ImageProvider";
  private static final long US_PER_SECOND = 1000000L;
  private int mCurrentFrame = 0;
  private final int mFramesPerSecond;
  private OutputSurface mOutputSurface;
  private long mPresentationTimeUs = 0L;
  private final int mTotalFrames;
  private final long mUsPerFrame;
  
  protected ImageProvider(@chc TranscodingResources paramTranscodingResources, @chc OutputSurfaceFactory paramOutputSurfaceFactory, @chc Encoder paramEncoder, @chc Bitmap paramBitmap, int paramInt, long paramLong, @chc StageDoneCallback paramStageDoneCallback)
  {
    super(paramEncoder, paramStageDoneCallback);
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramOutputSurfaceFactory == null) {
      throw new NullPointerException("outputSurfaceFactory is null");
    }
    if (paramEncoder == null) {
      throw new NullPointerException("encoder is null");
    }
    if (paramBitmap == null) {
      throw new NullPointerException("bitmap is null");
    }
    if (paramStageDoneCallback == null) {
      throw new NullPointerException("doneCallback is null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Frames per second must be greater than 0: " + paramInt);
    }
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("Duration must be greater than 0: " + paramLong);
    }
    mFramesPerSecond = paramInt;
    mTotalFrames = ((int)(mFramesPerSecond * paramLong / 1000000L));
    mUsPerFrame = (1000000L / mFramesPerSecond);
    mOutputSurface = paramOutputSurfaceFactory.createOutputSurface(paramTranscodingResources, new ImageTransformationMatrix().adjustForTranscoderTransformation(), paramBitmap);
  }
  
  public ImageProvider(@chc TranscodingResources paramTranscodingResources, @chc Encoder paramEncoder, @chc Bitmap paramBitmap, int paramInt, long paramLong, @chc StageDoneCallback paramStageDoneCallback)
  {
    this(paramTranscodingResources, new OutputSurfaceFactory(), paramEncoder, paramBitmap, paramInt, paramLong, paramStageDoneCallback);
  }
  
  public int getPercentComplete()
  {
    return mCurrentFrame * 100 / mTotalFrames;
  }
  
  public void processFrame()
  {
    VideoEncoder localVideoEncoder = (VideoEncoder)mEncoder;
    InputSurface localInputSurface = localVideoEncoder.getInputSurface();
    if (localInputSurface == null) {
      throw new TranscodingException("Error getting encoder input surface");
    }
    mOutputSurface.drawImage();
    localInputSurface.setPresentationTime(mPresentationTimeUs * 1000L);
    localInputSurface.swapBuffers();
    mPresentationTimeUs += mUsPerFrame;
    mCurrentFrame += 1;
    if (mCurrentFrame == mTotalFrames)
    {
      localVideoEncoder.signalEndOfInputStream();
      stageComplete();
    }
  }
  
  public void release()
  {
    mOutputSurface.release();
    mOutputSurface = null;
    super.release();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.ImageProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */