package com.snapchat.videotranscoder.audio;

import android.media.MediaFormat;
import cgb;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.Debug;

public class AudioEncoder
  extends Encoder
{
  private static final String TAG = "AUDIOENCODER";
  
  public AudioEncoder(Mixer paramMixer, StageDoneCallback paramStageDoneCallback, EncoderConfiguration paramEncoderConfiguration)
  {
    super(paramMixer, paramStageDoneCallback, paramEncoderConfiguration, false);
  }
  
  protected int addOrRetrieveMixerTrack(@cgb MediaFormat paramMediaFormat)
  {
    if (mMixer.hasAudioTrack())
    {
      Debug.assertTrue(paramMediaFormat.toString().equals(mMixer.getAudioFormat().toString()));
      return mMixer.getAudioTrack();
    }
    return mMixer.addTrack(paramMediaFormat);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.audio.AudioEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */