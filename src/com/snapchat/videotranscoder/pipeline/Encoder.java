package com.snapchat.videotranscoder.pipeline;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import cgb;
import com.snapchat.videotranscoder.utils.MimeTools;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public abstract class Encoder
  extends Stage
{
  protected static final String TAG = "ENCODER";
  private long lastTimeStamp = -1L;
  public final Codec mCodec;
  private final EncoderConfiguration mEncoderConfiguration;
  public final Mixer mMixer;
  protected int mOutputTrack = -1;
  
  public Encoder(@cgb Mixer paramMixer, @cgb StageDoneCallback paramStageDoneCallback, @cgb EncoderConfiguration paramEncoderConfiguration, boolean paramBoolean)
  {
    this(paramStageDoneCallback, paramMixer, new Codec(MediaCodec.createByCodecName(MimeTools.getInstance().selectCodec(paramEncoderConfiguration.getMimeType()).getName()), paramEncoderConfiguration.getFormat(), null, null, 1, paramBoolean), paramEncoderConfiguration);
  }
  
  protected Encoder(@cgb StageDoneCallback paramStageDoneCallback, @cgb Mixer paramMixer, @cgb Codec paramCodec, @cgb EncoderConfiguration paramEncoderConfiguration)
  {
    super(paramStageDoneCallback);
    mMixer = paramMixer;
    mCodec = paramCodec;
    mEncoderConfiguration = paramEncoderConfiguration;
  }
  
  public abstract int addOrRetrieveMixerTrack(@cgb MediaFormat paramMediaFormat);
  
  public Codec getCodec()
  {
    return mCodec;
  }
  
  public EncoderConfiguration getEncoderConfiguration()
  {
    return mEncoderConfiguration;
  }
  
  public void processFrame()
  {
    if ((mOutputTrack != -1) && (!mMixer.isStarted())) {
      VerboseLogging.verboseLog("ENCODER", "Mixer is not started returning");
    }
    int i;
    do
    {
      return;
      i = mCodec.dequeueOutputBuffer(10000L);
      if (i >= 0) {
        break;
      }
      mCodec.handleDequeueError(i);
    } while (i != -2);
    mOutputTrack = addOrRetrieveMixerTrack(mCodec.getOutputFormat());
    return;
    if (mCodec.isConfigBuffer()) {
      VerboseLogging.verboseLog("ENCODER", "encoder: codec config buffer");
    }
    for (;;)
    {
      mCodec.releaseOutputBuffer(i, false);
      return;
      ByteBuffer localByteBuffer = mCodec.getOutputBuffer(i);
      long l = mCodec.getOutputBufferInfo().presentationTimeUs;
      if (l < lastTimeStamp) {
        new StringBuilder("Encoder out of sync last:").append(lastTimeStamp).append(" cur: ").append(l);
      }
      lastTimeStamp = l;
      if (mCodec.getOutputBufferInfo().size != 0) {
        mMixer.writeSampleData(mOutputTrack, localByteBuffer, mCodec.getOutputBufferInfo());
      }
      if (mCodec.isEndOfStream())
      {
        VerboseLogging.verboseLog("ENCODER", "encoder: EOS");
        stageComplete();
      }
    }
  }
  
  public void stop()
  {
    mCodec.stop();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.Encoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */