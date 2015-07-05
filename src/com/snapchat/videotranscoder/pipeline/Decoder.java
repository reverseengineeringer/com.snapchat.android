package com.snapchat.videotranscoder.pipeline;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import com.snapchat.videotranscoder.utils.MimeTools;

public abstract class Decoder
  extends Stage
{
  protected static final String TAG = "DECODER";
  protected static final int kDecodeFailure = -1;
  public Codec mCodec;
  public int mFrameToProcess = -1;
  
  public Decoder(MediaFormat paramMediaFormat, Surface paramSurface, StageDoneCallback paramStageDoneCallback)
  {
    this(paramStageDoneCallback, new Codec(MediaCodec.createDecoderByType(MimeTools.getInstance().getMimeTypeFor(paramMediaFormat)), paramMediaFormat, paramSurface, null, 0, false));
  }
  
  private Decoder(StageDoneCallback paramStageDoneCallback, Codec paramCodec)
  {
    super(paramStageDoneCallback);
    mCodec = paramCodec;
  }
  
  public Codec getCodec()
  {
    return mCodec;
  }
  
  public abstract void getFrameFromDecoder();
  
  public abstract void outputFrame();
  
  public void stop()
  {
    if (mCodec != null) {
      mCodec.stop();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.Decoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */