package com.snapchat.videotranscoder.task;

import chc;
import chd;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;

public class TranscodingConfiguration
{
  private static final String TAG = "TranscodingConfiguration";
  private final EncoderConfiguration mAudioEncoderConfiguration;
  private final String mOutputPath;
  private final boolean mShouldWriteSnapSegmentMetadata;
  private final MediaSource[] mSources;
  private final EncoderConfiguration mVideoEncoderConfiguration;
  
  public TranscodingConfiguration(@chc MediaSource[] paramArrayOfMediaSource, @chc String paramString, @chd EncoderConfiguration paramEncoderConfiguration1, @chd EncoderConfiguration paramEncoderConfiguration2, boolean paramBoolean)
  {
    if (paramArrayOfMediaSource == null) {
      throw new NullPointerException("sources is null");
    }
    if (paramArrayOfMediaSource.length == 0) {
      throw new IllegalArgumentException("No media sources to transcode.");
    }
    if (paramString == null) {
      throw new NullPointerException("outputPath is null");
    }
    if ((paramEncoderConfiguration1 == null) && (paramEncoderConfiguration2 == null)) {
      throw new IllegalArgumentException("Must have at least one video or audio encoder configuration");
    }
    mSources = paramArrayOfMediaSource;
    mOutputPath = paramString;
    mVideoEncoderConfiguration = paramEncoderConfiguration1;
    mAudioEncoderConfiguration = paramEncoderConfiguration2;
    mShouldWriteSnapSegmentMetadata = paramBoolean;
  }
  
  public EncoderConfiguration getAudioEncoderConfiguration()
  {
    return mAudioEncoderConfiguration;
  }
  
  public String getOutputPath()
  {
    return mOutputPath;
  }
  
  public MediaSource[] getSources()
  {
    return mSources;
  }
  
  public EncoderConfiguration getVideoEncoderConfiguration()
  {
    return mVideoEncoderConfiguration;
  }
  
  public boolean shouldWriteSnapSegmentMetadata()
  {
    return mShouldWriteSnapSegmentMetadata;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */