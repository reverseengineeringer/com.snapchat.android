package com.snapchat.videotranscoder.audio;

import android.media.AudioTrack;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class AudioTrackDecoder
  extends AudioDecoder
{
  private static final String TAG = "AUDIOTRACKDECODER";
  private AudioTrack mAudioTrack;
  
  public AudioTrackDecoder(MediaFormat paramMediaFormat, StageDoneCallback paramStageDoneCallback)
  {
    super(paramMediaFormat, paramStageDoneCallback);
    int j = paramMediaFormat.getInteger("sample-rate");
    if (paramMediaFormat.getInteger("channel-count") > 1) {}
    for (int i = 12;; i = 4)
    {
      mAudioTrack = new AudioTrack(3, j, i, 2, j, 1);
      mAudioTrack.setPlaybackRate(j);
      mAudioTrack.play();
      return;
    }
  }
  
  public void outputFrame()
  {
    VerboseLogging.verboseLog("AUDIOTRACKDECODER", "audio track decoder: attempting to process pending buffer: " + mFrameToProcess);
    int i = mCodec.getOutputBufferInfo().size;
    checkPresentationTime(i);
    if (i >= 0)
    {
      ByteBuffer localByteBuffer = mCodec.getOutputBuffer(mFrameToProcess);
      byte[] arrayOfByte = new byte[i];
      localByteBuffer.get(arrayOfByte);
      localByteBuffer.clear();
      mAudioTrack.write(arrayOfByte, 0, i);
    }
    releaseBuffers();
  }
  
  public void setEncoder(Encoder paramEncoder)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setVolume(float paramFloat)
  {
    if (mAudioTrack != null) {
      mAudioTrack.setStereoVolume(paramFloat, paramFloat);
    }
  }
  
  public void stop()
  {
    super.stop();
    if (mAudioTrack != null)
    {
      VerboseLogging.verboseLog("AUDIOTRACKDECODER", "Releasing audio track");
      mAudioTrack.stop();
      mAudioTrack.release();
      mAudioTrack = null;
      VerboseLogging.verboseLog("AUDIOTRACKDECODER", "Released audio track");
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.audio.AudioTrackDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */