package com.snapchat.videotranscoder.video;

import android.media.MediaFormat;
import chc;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class VideoEncoder
  extends Encoder
{
  protected static final String TAG = "VideoEncoder";
  private InputSurface mInputSurface = null;
  
  public VideoEncoder(Mixer paramMixer, StageDoneCallback paramStageDoneCallback, EncoderConfiguration paramEncoderConfiguration)
  {
    super(paramMixer, paramStageDoneCallback, paramEncoderConfiguration, true);
    VerboseLogging.verboseLog("VideoEncoder", "Done Configuring video codec");
    VerboseLogging.verboseLog("VideoEncoder", "Creating input surface");
    mInputSurface = new InputSurface(mCodec.createInputSurface());
    mCodec.startCodec();
    mInputSurface.makeCurrent();
    mCodec.setupBuffers();
  }
  
  protected int addOrRetrieveMixerTrack(@chc MediaFormat paramMediaFormat)
  {
    if (mMixer.hasVideoTrack())
    {
      Debug.assertTrue(paramMediaFormat.toString().equals(mMixer.getVideoFormat().toString()));
      return mMixer.getVideoTrack();
    }
    return mMixer.addTrack(paramMediaFormat);
  }
  
  public InputSurface getInputSurface()
  {
    return mInputSurface;
  }
  
  public void signalEndOfInputStream()
  {
    mCodec.signalEndOfInputStream();
  }
  
  public void stop()
  {
    super.stop();
    try
    {
      if (mInputSurface != null)
      {
        mInputSurface.release();
        mInputSurface = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.VideoEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */