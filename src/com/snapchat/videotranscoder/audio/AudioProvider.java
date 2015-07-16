package com.snapchat.videotranscoder.audio;

import chc;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.VideoFileMediaSource;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class AudioProvider
  extends MediaProvider
{
  private static final String TAG = "AudioProvider";
  private AudioDecoder mAudioDecoder;
  private boolean mAudioDecoderDone = false;
  private AudioExtractor mAudioExtractor;
  private boolean mAudioExtractorDone = false;
  private long mDurationUs;
  
  public AudioProvider(@chc Encoder paramEncoder, @chc VideoFileMediaSource paramVideoFileMediaSource, @chc StageDoneCallback paramStageDoneCallback)
  {
    super(paramEncoder, paramStageDoneCallback);
    if (paramEncoder == null) {
      throw new NullPointerException("encoder is null");
    }
    if (paramVideoFileMediaSource == null) {
      throw new NullPointerException("mediaSource is null");
    }
    if (paramStageDoneCallback == null) {
      throw new NullPointerException("stageDoneCallback is null");
    }
    mAudioExtractor = new AudioExtractor(paramVideoFileMediaSource.getMediaPath(), new AudioExtractorDone(null));
    mAudioDecoder = new AudioDecoder(mAudioExtractor.getFormat(), new AudioDecoderDone(null));
    mAudioExtractor.setDecoderCodec(mAudioDecoder.getCodec());
    mAudioDecoder.setEncoder(mEncoder);
    mDurationUs = (paramVideoFileMediaSource.getDisplayTimeMs() * 1000L);
  }
  
  public int getPercentComplete()
  {
    return (int)(mAudioExtractor.getLastPresentationTimeUs() * 100L / mDurationUs);
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
      if (!mAudioExtractorDone)
      {
        VerboseLogging.verboseLog("AudioProvider", "Calling audio extractor");
        mAudioExtractor.processFrame();
        VerboseLogging.verboseLog("AudioProvider", "done Calling audio extractor");
        i = 0;
      }
      if (mAudioDecoderDone) {
        break label91;
      }
      VerboseLogging.verboseLog("AudioProvider", "Calling audio decoder");
      mAudioDecoder.processFrame();
      VerboseLogging.verboseLog("AudioProvider", "done Calling audio decoder");
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
    VerboseLogging.verboseLog("AudioProvider", "releasing audio extractor");
    mAudioExtractor.release();
    mAudioExtractor = null;
    VerboseLogging.verboseLog("AudioProvider", "releasing audio, decoder");
    mAudioDecoder.stop();
    mAudioDecoder = null;
    super.release();
  }
  
  class AudioDecoderDone
    implements StageDoneCallback
  {
    private AudioDecoderDone() {}
    
    public void done()
    {
      AudioProvider.access$302(AudioProvider.this, true);
    }
  }
  
  class AudioExtractorDone
    implements StageDoneCallback
  {
    private AudioExtractorDone() {}
    
    public void done()
    {
      AudioProvider.access$202(AudioProvider.this, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.audio.AudioProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */