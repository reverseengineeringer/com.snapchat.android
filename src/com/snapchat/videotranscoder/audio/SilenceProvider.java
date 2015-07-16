package com.snapchat.videotranscoder.audio;

import android.media.MediaFormat;
import chc;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class SilenceProvider
  extends MediaProvider
{
  private static final long BYTES_PER_CHANNEL_SAMPLE = 2L;
  private static final long MAX_FRAME_SIZE = 2048L;
  private static final String TAG = "SilenceProvider";
  private static final long US_PER_SECOND = 1000000L;
  private long mCurrentTimeUs = 0L;
  private final long mDurationUs;
  private final long mLastFrameSize;
  private final byte[] mSilentFrameData;
  private final long mUsPerFrame;
  
  private SilenceProvider(@chc Encoder paramEncoder, long paramLong, int paramInt1, int paramInt2, @chc StageDoneCallback paramStageDoneCallback)
  {
    super(paramEncoder, paramStageDoneCallback);
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("Duration must be greater than 0: " + paramLong);
    }
    if (paramInt1 <= 0) {
      throw new IllegalArgumentException("Sample rate must be greater than 0: " + paramInt1);
    }
    if ((paramInt2 <= 0) || (paramInt2 > 2)) {
      throw new IllegalArgumentException("Channel count must be 1 or 2: " + paramInt2);
    }
    long l1 = paramInt1 * paramLong / 1000000L;
    long l2 = 2L * paramInt2;
    long l3 = 2048L / l2;
    mLastFrameSize = (l1 * l2 % 2048L);
    mDurationUs = paramLong;
    mUsPerFrame = (1000000L * l3 / paramInt1);
    mSilentFrameData = new byte['ࠀ'];
  }
  
  public SilenceProvider(@chc Encoder paramEncoder, long paramLong, @chc StageDoneCallback paramStageDoneCallback)
  {
    this(paramEncoder, paramLong, paramEncoder.getEncoderConfiguration().getFormat().getInteger("sample-rate"), paramEncoder.getEncoderConfiguration().getFormat().getInteger("channel-count"), paramStageDoneCallback);
  }
  
  public int getPercentComplete()
  {
    return (int)(mCurrentTimeUs * 100L / mDurationUs);
  }
  
  public void processFrame()
  {
    Codec localCodec = mEncoder.getCodec();
    int j = localCodec.dequeueInputBuffer(10000L);
    if (j == -1)
    {
      VerboseLogging.verboseLog("SilenceProvider", "no audio encoder input buffer");
      return;
    }
    VerboseLogging.verboseLog("SilenceProvider", "audio encoder: returned input buffer: " + j);
    ByteBuffer localByteBuffer = localCodec.getInputBuffer(j);
    long l = mCurrentTimeUs;
    mCurrentTimeUs += mUsPerFrame;
    localByteBuffer.position(0);
    if (mCurrentTimeUs >= mDurationUs) {}
    for (int i = 1; i != 0; i = 0)
    {
      localByteBuffer.put(mSilentFrameData, 0, (int)mLastFrameSize);
      localCodec.queueInputBuffer(j, 0, (int)mLastFrameSize, l, 4);
      stageComplete();
      return;
    }
    localByteBuffer.put(mSilentFrameData, 0, 2048);
    localCodec.queueInputBuffer(j, 0, 2048, l, 0);
  }
  
  public void release()
  {
    super.release();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.audio.SilenceProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */