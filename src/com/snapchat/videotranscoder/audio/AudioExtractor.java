package com.snapchat.videotranscoder.audio;

import cgb;
import com.snapchat.videotranscoder.pipeline.Extractor;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.MimeTools;

public class AudioExtractor
  extends Extractor
{
  private static final String TAG = "AudioExtractor";
  private final MimeTools mMimeTools;
  
  public AudioExtractor(@cgb String paramString, @cgb StageDoneCallback paramStageDoneCallback)
  {
    this(paramString, paramStageDoneCallback, MimeTools.getInstance());
  }
  
  private AudioExtractor(@cgb String paramString, @cgb StageDoneCallback paramStageDoneCallback, @cgb MimeTools paramMimeTools)
  {
    super(paramString, paramStageDoneCallback);
    mMimeTools = paramMimeTools;
    setInputTrack();
  }
  
  protected void setInputTrack()
  {
    mInputTrack = mMimeTools.getAndSelectAudioTrackIndex(mExtractor);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.audio.AudioExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */