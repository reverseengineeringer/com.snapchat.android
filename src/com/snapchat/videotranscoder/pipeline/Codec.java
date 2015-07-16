package com.snapchat.videotranscoder.pipeline;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import chc;
import chd;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class Codec
{
  protected static final String TAG = "Codec";
  int dequeueInputBufferCallCount = 0;
  protected MediaCodec mCodec = null;
  protected ByteBuffer[] mInputBuffers = null;
  protected MediaCodec.BufferInfo mOutputBufferInfo = null;
  protected ByteBuffer[] mOutputBuffers = null;
  
  public Codec(@chc MediaCodec paramMediaCodec, @chc MediaFormat paramMediaFormat, @chd Surface paramSurface, @chd MediaCrypto paramMediaCrypto, int paramInt, boolean paramBoolean)
  {
    mCodec = paramMediaCodec;
    if (mCodec == null) {
      throw new SetupException("Codec is null");
    }
    configureCodec(paramMediaFormat, paramSurface, paramMediaCrypto, paramInt);
    if (paramBoolean)
    {
      VerboseLogging.verboseLog("Codec", "Codec was initialized: " + mCodec.toString());
      return;
    }
    startCodecAndSetupBuffers();
    VerboseLogging.verboseLog("Codec", "Codec was initialized: " + mCodec.toString() + " inputBuffers: " + mInputBuffers + " outputBuffers: " + mOutputBuffers + " outputBufferInfo " + mOutputBufferInfo);
  }
  
  private void configureCodec(@chc MediaFormat paramMediaFormat, @chd Surface paramSurface, @chd MediaCrypto paramMediaCrypto, int paramInt)
  {
    try
    {
      VerboseLogging.verboseLog("Codec", "Touching codec at configureCodec");
      mCodec.configure(paramMediaFormat, paramSurface, paramMediaCrypto, paramInt);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      String str = "Failed to configure codec: " + localIllegalStateException.toString();
      str = str + " format:[";
      paramMediaFormat = str + paramMediaFormat.toString();
      paramMediaFormat = paramMediaFormat + "]";
      if (paramSurface == null) {
        break label275;
      }
    }
    paramMediaFormat = paramMediaFormat + ", surface:[";
    paramMediaFormat = paramMediaFormat + paramSurface.toString();
    paramMediaFormat = paramMediaFormat + "]";
    if (paramMediaCrypto != null)
    {
      paramMediaFormat = paramMediaFormat + ", crypto:[";
      paramMediaFormat = paramMediaFormat + paramMediaCrypto.toString();
    }
    for (paramMediaFormat = paramMediaFormat + "]";; paramMediaFormat = paramMediaFormat + ", crypto:null")
    {
      throw new SetupException(paramMediaFormat + ", flags:" + paramInt, localIllegalStateException);
      label275:
      paramMediaFormat = paramMediaFormat + ", surface:null";
      break;
    }
  }
  
  public Surface createInputSurface()
  {
    VerboseLogging.verboseLog("Codec", "touching codec at createInputSurface");
    return mCodec.createInputSurface();
  }
  
  public int dequeueInputBuffer(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder("Calling native method dequeueInputBuffer for the: ");
    int i = dequeueInputBufferCallCount;
    dequeueInputBufferCallCount = (i + 1);
    VerboseLogging.verboseLog("Codec", i + " time on: " + mCodec.toString());
    i = mCodec.dequeueInputBuffer(paramLong);
    VerboseLogging.verboseLog("Codec", "Done calling native method with ret of " + i);
    return i;
  }
  
  public int dequeueOutputBuffer(long paramLong)
  {
    try
    {
      VerboseLogging.verboseLog("Codec", "Touching codec at dequeuOutputBuffer");
      int i = mCodec.dequeueOutputBuffer(mOutputBufferInfo, paramLong);
      VerboseLogging.verboseLog("Codec", "decoder: returned output buffer: " + i + " size: " + mOutputBufferInfo.size + " Buffer flag is: " + mOutputBufferInfo.flags);
      return i;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      str = "Failed to dequeue output buffer: " + localIllegalStateException.toString();
      if (mOutputBufferInfo == null) {
        break label288;
      }
    }
    String str = str + " outputBufferInfo:[";
    str = str + "offset:" + mOutputBufferInfo.offset;
    str = str + ", size:" + mOutputBufferInfo.size;
    str = str + ", presentationTimeUs:" + mOutputBufferInfo.presentationTimeUs;
    str = str + ", flags:" + mOutputBufferInfo.flags;
    label288:
    for (str = str + "]";; str = str + " outputBufferInfo:null") {
      throw new TranscodingException(str, localIllegalStateException);
    }
  }
  
  public void flush()
  {
    if (mCodec != null)
    {
      VerboseLogging.verboseLog("Codec", "touching codec at flush");
      mCodec.flush();
      setupBuffers();
    }
  }
  
  public ByteBuffer getBufferInputBuffer(int paramInt)
  {
    return mInputBuffers[paramInt];
  }
  
  public ByteBuffer getInputBuffer(int paramInt)
  {
    return mInputBuffers[paramInt];
  }
  
  public ByteBuffer getOutputBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = mOutputBuffers[paramInt].duplicate();
    localByteBuffer.position(mOutputBufferInfo.offset);
    localByteBuffer.limit(mOutputBufferInfo.offset + mOutputBufferInfo.size);
    return localByteBuffer;
  }
  
  public MediaCodec.BufferInfo getOutputBufferInfo()
  {
    return mOutputBufferInfo;
  }
  
  public MediaFormat getOutputFormat()
  {
    VerboseLogging.verboseLog("Codec", "touching codec at getOutputFormat");
    return mCodec.getOutputFormat();
  }
  
  public void handleDequeueError(int paramInt)
  {
    if (paramInt == -1) {
      VerboseLogging.verboseLog("Codec", "no decoder output buffer");
    }
    if (paramInt == -3)
    {
      VerboseLogging.verboseLog("Codec", "output buffers changed in handleDequeueError");
      mOutputBuffers = mCodec.getOutputBuffers();
    }
    if (paramInt == -2) {
      VerboseLogging.verboseLog("Codec", "output format changed: " + mCodec.getOutputFormat());
    }
  }
  
  public boolean isConfigBuffer()
  {
    if ((mOutputBufferInfo.flags & 0x2) != 0)
    {
      VerboseLogging.verboseLog("Codec", "buffer is codec config buffer");
      return true;
    }
    return false;
  }
  
  public boolean isEndOfStream()
  {
    return (mOutputBufferInfo.flags & 0x4) != 0;
  }
  
  public void queueInputBuffer(int paramInt1, int paramInt2, int paramInt3, long paramLong, int paramInt4)
  {
    VerboseLogging.verboseLog("Codec", "Calling queueInputBuffer");
    mCodec.queueInputBuffer(paramInt1, paramInt2, paramInt3, paramLong, paramInt4);
  }
  
  public void releaseOutputBuffer(int paramInt, boolean paramBoolean)
  {
    VerboseLogging.verboseLog("Codec", "releasing output buffer for codec");
    mCodec.releaseOutputBuffer(paramInt, paramBoolean);
  }
  
  public void setupBuffers()
  {
    VerboseLogging.verboseLog("Codec", "touching codec at setupbuffers");
    mOutputBuffers = mCodec.getOutputBuffers();
    mInputBuffers = mCodec.getInputBuffers();
    mOutputBufferInfo = new MediaCodec.BufferInfo();
  }
  
  public void signalEndOfInputStream()
  {
    VerboseLogging.verboseLog("Codec", "touching codec at signalEndOfInputStream");
    mCodec.signalEndOfInputStream();
  }
  
  public void startCodec()
  {
    VerboseLogging.verboseLog("Codec", "touching codec at startcodec");
    mCodec.start();
  }
  
  public void startCodecAndSetupBuffers()
  {
    startCodec();
    setupBuffers();
  }
  
  public void stop()
  {
    VerboseLogging.verboseLog("Codec", "trying to stop the codec");
    try
    {
      if (mCodec != null)
      {
        VerboseLogging.verboseLog("Codec", "Stopping codec");
        mCodec.stop();
        VerboseLogging.verboseLog("Codec", "releasing codec");
        mCodec.release();
        mCodec = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.Codec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */