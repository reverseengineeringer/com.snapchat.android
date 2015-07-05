package com.snapchat.videotranscoder.pipeline;

import android.media.MediaFormat;
import cgb;

public class EncoderConfiguration
{
  private final MediaFormat mFormat;
  private final String mMimeType;
  
  public EncoderConfiguration(@cgb String paramString, @cgb MediaFormat paramMediaFormat)
  {
    mMimeType = paramString;
    mFormat = paramMediaFormat;
  }
  
  public MediaFormat getFormat()
  {
    return mFormat;
  }
  
  public String getMimeType()
  {
    return mMimeType;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.EncoderConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */