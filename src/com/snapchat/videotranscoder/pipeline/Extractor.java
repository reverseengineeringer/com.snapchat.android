package com.snapchat.videotranscoder.pipeline;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import cgb;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.MimeTools;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public abstract class Extractor
  extends Stage
{
  protected static final String TAG = "EXTRACTOR";
  protected Codec mDecoderCodec = null;
  public MediaExtractor mExtractor = null;
  private String mFile;
  public int mInputTrack = -1;
  private long mLastPresentationTimeUs = 0L;
  protected volatile boolean mShouldAbort = false;
  
  protected Extractor(MediaExtractor paramMediaExtractor, StageDoneCallback paramStageDoneCallback)
  {
    super(paramStageDoneCallback);
    mExtractor = paramMediaExtractor;
  }
  
  public Extractor(String paramString, StageDoneCallback paramStageDoneCallback)
  {
    super(paramStageDoneCallback);
    mFile = paramString;
    try
    {
      mExtractor = MimeTools.getInstance().createExtractor(paramString);
      return;
    }
    catch (Exception paramString)
    {
      throw new SetupException(paramString.getMessage() + paramString.toString());
    }
  }
  
  public void abort()
  {
    VerboseLogging.verboseLog("EXTRACTOR", "Setting extractor to stop");
    mShouldAbort = true;
  }
  
  public MediaFormat getFormat()
  {
    if (mInputTrack == -1) {
      throw new TranscodingException("Request track is undefined " + mExtractor.getTrackCount());
    }
    return mExtractor.getTrackFormat(mInputTrack);
  }
  
  public long getLastPresentationTimeUs()
  {
    return mLastPresentationTimeUs;
  }
  
  public void processFrame()
  {
    if (mDecoderCodec == null) {
      throw new TranscodingException("Decoder is null");
    }
    VerboseLogging.verboseLog("EXTRACTOR", "dequeingInputBuffer: " + mDecoderCodec);
    int i = mDecoderCodec.dequeueInputBuffer(10000L);
    VerboseLogging.verboseLog("EXTRACTOR", "bufferIndex is : " + i);
    if (i == -1) {
      return;
    }
    VerboseLogging.verboseLog("EXTRACTOR", "getting buffer with shouldAbort: " + mShouldAbort);
    ByteBuffer localByteBuffer = mDecoderCodec.getBufferInputBuffer(i);
    int j = mExtractor.readSampleData(localByteBuffer, 0);
    if ((j >= 0) && (!mShouldAbort))
    {
      long l = mExtractor.getSampleTime();
      mDecoderCodec.queueInputBuffer(i, 0, j, l, mExtractor.getSampleFlags());
      if (l < mLastPresentationTimeUs) {
        new StringBuilder("Extractor out of sync last:").append(mLastPresentationTimeUs).append(" cur: ").append(l);
      }
      mLastPresentationTimeUs = l;
      mExtractor.advance();
      return;
    }
    mDecoderCodec.queueInputBuffer(i, 0, 0, 0L, 4);
    stageComplete();
  }
  
  public void release()
  {
    try
    {
      if (mExtractor != null)
      {
        mExtractor.release();
        mExtractor = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void restart()
  {
    if (mExtractor != null) {
      mExtractor.seekTo(0L, 2);
    }
  }
  
  public void setDecoderCodec(@cgb Codec paramCodec)
  {
    mDecoderCodec = paramCodec;
  }
  
  public abstract void setInputTrack();
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.Extractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */