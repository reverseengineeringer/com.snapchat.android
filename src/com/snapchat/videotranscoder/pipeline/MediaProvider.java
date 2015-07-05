package com.snapchat.videotranscoder.pipeline;

import cgb;

public abstract class MediaProvider
  extends Stage
{
  private static final String TAG = "MediaProvider";
  public Encoder mEncoder;
  
  public MediaProvider(@cgb Encoder paramEncoder, @cgb StageDoneCallback paramStageDoneCallback)
  {
    super(paramStageDoneCallback);
    mEncoder = paramEncoder;
  }
  
  public abstract int getPercentComplete();
  
  public void release()
  {
    mEncoder = null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.MediaProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */