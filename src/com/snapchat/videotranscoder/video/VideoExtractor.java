package com.snapchat.videotranscoder.video;

import cgb;
import com.snapchat.videotranscoder.pipeline.Extractor;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.MimeTools;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class VideoExtractor
  extends Extractor
{
  protected static final String TAG = "VideoExtractor";
  private final MimeTools mMimeTools;
  
  public VideoExtractor(@cgb String paramString, @cgb StageDoneCallback paramStageDoneCallback)
  {
    this(paramString, paramStageDoneCallback, MimeTools.getInstance());
  }
  
  private VideoExtractor(@cgb String paramString, @cgb StageDoneCallback paramStageDoneCallback, @cgb MimeTools paramMimeTools)
  {
    super(paramString, paramStageDoneCallback);
    mMimeTools = paramMimeTools;
    VerboseLogging.verboseLog("VideoExtractor", "Setting up extractor");
    setInputTrack();
  }
  
  protected void setInputTrack()
  {
    mInputTrack = mMimeTools.getAndSelectVideoTrackIndex(mExtractor);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.VideoExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */