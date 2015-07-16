package com.snapchat.videotranscoder.audio;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import chc;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Decoder;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class AudioDecoder
  extends Decoder
{
  protected static final String TAG = "AUDIODECODER";
  private Codec mEncoderCodec;
  protected long mLastTimeStamp = -1L;
  
  public AudioDecoder(MediaFormat paramMediaFormat, StageDoneCallback paramStageDoneCallback)
  {
    super(paramMediaFormat, null, paramStageDoneCallback);
  }
  
  protected long checkPresentationTime(int paramInt)
  {
    long l = mCodec.getOutputBufferInfo().presentationTimeUs;
    VerboseLogging.verboseLog("AUDIODECODER", "audio decoder: pending buffer of size " + paramInt + " At " + l);
    if (l < mLastTimeStamp) {}
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      new StringBuilder("Audio decoder out of sync last:").append(mLastTimeStamp).append(" cur: ").append(l);
      return mLastTimeStamp;
    }
    mLastTimeStamp = l;
    return l;
  }
  
  protected void getFrameFromDecoder()
  {
    mFrameToProcess = -1;
    int i = mCodec.dequeueOutputBuffer(10000L);
    VerboseLogging.verboseLog("AUDIODECODER", "Returned index was " + i);
    if (i < 0)
    {
      mCodec.handleDequeueError(i);
      return;
    }
    if (mCodec.isConfigBuffer())
    {
      VerboseLogging.verboseLog("AUDIODECODER", "audio decoder: codec config buffer");
      mCodec.releaseOutputBuffer(i, false);
      return;
    }
    VerboseLogging.verboseLog("AUDIODECODER", "audio decoder: returned buffer for time " + mCodec.getOutputBufferInfo().presentationTimeUs);
    VerboseLogging.verboseLog("AUDIODECODER", "audio decoder: output buffer is now pending: " + i);
    mFrameToProcess = i;
  }
  
  protected void outputFrame()
  {
    int i = mEncoderCodec.dequeueInputBuffer(10000L);
    if (i == -1)
    {
      VerboseLogging.verboseLog("AUDIODECODER", "no audio encoder input buffer");
      return;
    }
    VerboseLogging.verboseLog("AUDIODECODER", "audio decoder: attempting to process pending buffer: " + mFrameToProcess);
    VerboseLogging.verboseLog("AUDIODECODER", "audio encoder: returned input buffer: " + i);
    ByteBuffer localByteBuffer1 = mEncoderCodec.getInputBuffer(i);
    int j = mCodec.getOutputBufferInfo().size;
    long l = checkPresentationTime(j);
    if (j >= 0)
    {
      ByteBuffer localByteBuffer2 = mCodec.getOutputBuffer(mFrameToProcess);
      localByteBuffer1.position(0);
      localByteBuffer1.put(localByteBuffer2);
      mEncoderCodec.queueInputBuffer(i, 0, j, l, mCodec.getOutputBufferInfo().flags);
    }
    releaseBuffers();
  }
  
  public void processFrame()
  {
    if (mFrameToProcess == -1) {
      getFrameFromDecoder();
    }
    if (mFrameToProcess != -1) {
      outputFrame();
    }
  }
  
  protected void releaseBuffers()
  {
    mCodec.releaseOutputBuffer(mFrameToProcess, false);
    if (mCodec.isEndOfStream())
    {
      VerboseLogging.verboseLog("AUDIODECODER", "audio decoder: EOS");
      stageComplete();
    }
    mFrameToProcess = -1;
  }
  
  public void restart()
  {
    mCodec.flush();
    mLastTimeStamp = -1L;
  }
  
  public void setEncoder(@chc Encoder paramEncoder)
  {
    mEncoderCodec = paramEncoder.getCodec();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.audio.AudioDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */