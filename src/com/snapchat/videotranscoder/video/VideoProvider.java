package com.snapchat.videotranscoder.video;

import chc;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.VideoFileMediaSource;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class VideoProvider
  extends MediaProvider
{
  private static final String TAG = "VideoProvider";
  private long mDurationUs;
  private VideoDecoder mVideoDecoder;
  private boolean mVideoDecoderDone = false;
  private VideoExtractor mVideoExtractor;
  private boolean mVideoExtractorDone = false;
  
  public VideoProvider(@chc TranscodingResources paramTranscodingResources, @chc Encoder paramEncoder, @chc VideoFileMediaSource paramVideoFileMediaSource, @chc StageDoneCallback paramStageDoneCallback)
  {
    super(paramEncoder, paramStageDoneCallback);
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramVideoFileMediaSource == null) {
      throw new NullPointerException("mediaSource is null");
    }
    mVideoExtractor = new VideoExtractor(paramVideoFileMediaSource.getMediaPath(), new VideoExtractorDone(null));
    mVideoDecoder = new VideoDecoder(paramTranscodingResources, mVideoExtractor.getFormat(), new VideoDecoderDone(null), paramVideoFileMediaSource.getTransformationMatrix(), paramVideoFileMediaSource.getOverlayBitmap());
    mVideoExtractor.setDecoderCodec(mVideoDecoder.getCodec());
    mVideoDecoder.setEncoder((VideoEncoder)mEncoder);
    paramTranscodingResources = mVideoDecoder;
    paramEncoder = paramVideoFileMediaSource.getFilter();
    if (paramVideoFileMediaSource.getOverlayBitmap() != null) {}
    for (boolean bool = true;; bool = false)
    {
      paramTranscodingResources.setShader(paramEncoder, bool);
      mDurationUs = (paramVideoFileMediaSource.getDisplayTimeMs() * 1000L);
      return;
    }
  }
  
  public int getPercentComplete()
  {
    return (int)(mVideoExtractor.getLastPresentationTimeUs() * 100L / mDurationUs);
  }
  
  public void processFrame()
  {
    int i = 1;
    int j = 0;
    boolean bool;
    if (!mDone)
    {
      bool = true;
      Debug.assertTrue(bool);
      if (!mVideoExtractorDone)
      {
        VerboseLogging.verboseLog("VideoProvider", "Calling video extractor");
        mVideoExtractor.processFrame();
        VerboseLogging.verboseLog("VideoProvider", "done Calling video extractor");
        i = 0;
      }
      if (mVideoDecoderDone) {
        break label91;
      }
      VerboseLogging.verboseLog("VideoProvider", "Calling video decoder");
      mVideoDecoder.processFrame();
      VerboseLogging.verboseLog("VideoProvider", "done Calling video decoder");
      i = j;
    }
    label91:
    for (;;)
    {
      if (i != 0) {
        stageComplete();
      }
      return;
      bool = false;
      break;
    }
  }
  
  public void release()
  {
    VerboseLogging.verboseLog("VideoProvider", "releasing video extractor");
    mVideoExtractor.release();
    mVideoExtractor = null;
    VerboseLogging.verboseLog("VideoProvider", "releasing video decoder");
    mVideoDecoder.stop();
    mVideoDecoder = null;
    super.release();
  }
  
  class VideoDecoderDone
    implements StageDoneCallback
  {
    private VideoDecoderDone() {}
    
    public void done()
    {
      VideoProvider.access$302(VideoProvider.this, true);
    }
  }
  
  class VideoExtractorDone
    implements StageDoneCallback
  {
    private VideoExtractorDone() {}
    
    public void done()
    {
      VideoProvider.access$202(VideoProvider.this, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.VideoProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */