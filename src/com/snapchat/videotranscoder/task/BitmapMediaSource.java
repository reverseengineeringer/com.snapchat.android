package com.snapchat.videotranscoder.task;

import android.graphics.Bitmap;
import chc;

public class BitmapMediaSource
  extends MediaSource
{
  private static final String TAG = "BitmapMediaSource";
  private final Bitmap mBitmap;
  private final long mDisplayTimeMs;
  
  public BitmapMediaSource(@chc Bitmap paramBitmap, long paramLong)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("bitmap is null");
    }
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("displayTimeMs must be > 0");
    }
    mBitmap = paramBitmap;
    mDisplayTimeMs = paramLong;
  }
  
  public Bitmap getBitmap()
  {
    return mBitmap;
  }
  
  public long getDisplayTimeMs()
  {
    return mDisplayTimeMs;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.BitmapMediaSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */