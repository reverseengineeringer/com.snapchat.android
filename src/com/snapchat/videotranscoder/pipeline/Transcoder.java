package com.snapchat.videotranscoder.pipeline;

import chc;
import chd;
import com.snapchat.videotranscoder.audio.AudioEncoder;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.VideoEncoder;

public abstract class Transcoder
{
  private static final String TAG = "Transcoder";
  private volatile boolean mAborted = false;
  private AudioEncoder mAudioEncoder;
  private boolean mAudioEncoderDone = false;
  private MediaProvider mAudioProvider;
  private boolean mAudioProviderDone = false;
  private int mLastPercentComplete = -1;
  private Mixer mMixer;
  private VideoEncoder mVideoEncoder;
  private boolean mVideoEncoderDone = false;
  private MediaProvider mVideoProvider;
  private boolean mVideoProviderDone = false;
  
  public Transcoder(@chc Mixer paramMixer, @chd EncoderConfiguration paramEncoderConfiguration1, @chd EncoderConfiguration paramEncoderConfiguration2)
  {
    mMixer = paramMixer;
    if (!Utils.getInstance().haveLooper("Transcoder")) {
      throw new SetupException("There is no looper thread");
    }
    if (paramMixer.shouldCopyVideo())
    {
      mVideoEncoder = new VideoEncoder(mMixer, new VideoEncoderDone(null), paramEncoderConfiguration1);
      mVideoProvider = createVideoProvider(mVideoEncoder, paramEncoderConfiguration1, new VideoProviderDone(null));
    }
    while (paramMixer.shouldCopyAudio())
    {
      mAudioEncoder = new AudioEncoder(mMixer, new AudioEncoderDone(null), paramEncoderConfiguration2);
      mAudioProvider = createAudioProvider(mAudioEncoder, paramEncoderConfiguration2, new AudioProviderDone(null));
      return;
      mVideoEncoder = null;
      mVideoProvider = null;
      mVideoEncoderDone = true;
      mVideoProviderDone = true;
    }
    mAudioEncoder = null;
    mAudioEncoderDone = true;
    mAudioProviderDone = true;
  }
  
  private int calculateTotalPercentComplete()
  {
    int i = 100;
    if (mVideoProvider != null) {
      i = Math.min(100, mVideoProvider.getPercentComplete());
    }
    int j = i;
    if (mAudioProvider != null) {
      j = Math.min(i, mAudioProvider.getPercentComplete());
    }
    return j;
  }
  
  public void abort()
  {
    mAborted = true;
  }
  
  public abstract MediaProvider createAudioProvider(@chc Encoder paramEncoder, @chc EncoderConfiguration paramEncoderConfiguration, @chc StageDoneCallback paramStageDoneCallback);
  
  public abstract MediaProvider createVideoProvider(@chc Encoder paramEncoder, @chc EncoderConfiguration paramEncoderConfiguration, @chc StageDoneCallback paramStageDoneCallback);
  
  public void release()
  {
    if (mVideoProvider != null)
    {
      VerboseLogging.verboseLog("Transcoder", "releasing video provider");
      mVideoProvider.release();
      mVideoProvider = null;
    }
    if (mVideoEncoder != null)
    {
      VerboseLogging.verboseLog("Transcoder", "releasing video, encoder");
      mVideoEncoder.stop();
      mVideoEncoder = null;
    }
    if (mAudioProvider != null)
    {
      VerboseLogging.verboseLog("Transcoder", "releasing audio provider");
      mAudioProvider.release();
      mAudioProvider = null;
    }
    if (mAudioEncoder != null)
    {
      VerboseLogging.verboseLog("Transcoder", "releasing audio, encoder");
      mAudioEncoder.stop();
      mAudioEncoder = null;
    }
    mMixer = null;
  }
  
  public void transcode(@chd Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    while (((!mAudioEncoderDone) || (!mVideoEncoderDone)) && (!mAborted))
    {
      if ((mAudioProvider != null) && (!mAudioProviderDone))
      {
        VerboseLogging.verboseLog("Transcoder", "Calling audio provider");
        mAudioProvider.processFrame();
        VerboseLogging.verboseLog("Transcoder", "done Calling audio provider");
      }
      if ((mAudioEncoder != null) && (!mAudioEncoderDone))
      {
        VerboseLogging.verboseLog("Transcoder", "Calling audio encoder");
        mAudioEncoder.processFrame();
        VerboseLogging.verboseLog("Transcoder", "done Calling audio encoder");
      }
      if (!mVideoProviderDone)
      {
        VerboseLogging.verboseLog("Transcoder", "Calling video provider");
        mVideoProvider.processFrame();
        VerboseLogging.verboseLog("Transcoder", "done Calling video provider");
      }
      if (!mVideoEncoderDone)
      {
        VerboseLogging.verboseLog("Transcoder", "Calling video encoder");
        mVideoEncoder.processFrame();
        VerboseLogging.verboseLog("Transcoder", "done Calling video encoder");
      }
      if (paramProgressUpdateCallback != null)
      {
        int i = calculateTotalPercentComplete();
        if (i != mLastPercentComplete)
        {
          mLastPercentComplete = i;
          paramProgressUpdateCallback.onProgressUpdated(i);
        }
      }
    }
  }
  
  class AudioEncoderDone
    implements StageDoneCallback
  {
    private AudioEncoderDone() {}
    
    public void done()
    {
      Transcoder.access$602(Transcoder.this, true);
    }
  }
  
  class AudioProviderDone
    implements StageDoneCallback
  {
    private AudioProviderDone() {}
    
    public void done()
    {
      Transcoder.access$402(Transcoder.this, true);
    }
  }
  
  class VideoEncoderDone
    implements StageDoneCallback
  {
    private VideoEncoderDone() {}
    
    public void done()
    {
      Transcoder.access$702(Transcoder.this, true);
    }
  }
  
  class VideoProviderDone
    implements StageDoneCallback
  {
    private VideoProviderDone() {}
    
    public void done()
    {
      Transcoder.access$502(Transcoder.this, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.Transcoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */