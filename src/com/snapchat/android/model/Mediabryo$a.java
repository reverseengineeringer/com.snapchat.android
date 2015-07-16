package com.snapchat.android.model;

import ajv;
import akh;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

public abstract class Mediabryo$a<T extends a<T>>
{
  public String mClientId;
  public int mHeight;
  public boolean mIsChatMedia = false;
  public boolean mIsFlashOn = false;
  public boolean mIsFrontFacingSnap = false;
  public boolean mIsReply = false;
  public boolean mIsZipUpload = false;
  public ajv mMediaExtras;
  public MediaMailingMetadata mMediaMailingMetadata;
  public boolean mMuted = false;
  public Bitmap mOverlayBitmap;
  public String mOverlayPath;
  public akh mPreviewConfiguration;
  public Bitmap mRawImageBitmap;
  public boolean mShouldEnableSmartFilters = true;
  public boolean mShouldEnableVisualFilters = true;
  public int mSnapOrientation = 0;
  public Mediabryo.SnapType mSnapType;
  public Date mTime = new Date();
  public double mTimerValueOrDuration;
  public Uri mVideoUri;
  public int mWidth;
  
  public final T a(String paramString)
  {
    try
    {
      mTime = DateFormat.getDateTimeInstance().parse(paramString);
      return this;
    }
    catch (ParseException paramString)
    {
      while (!ReleaseManager.e()) {}
      throw new RuntimeException(paramString);
    }
  }
  
  public void a()
  {
    if (mSnapType == null) {
      throw new IllegalArgumentException("Can't build Mediabryo with null snap type!");
    }
  }
  
  public final T b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      mVideoUri = Uri.parse(paramString);
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.Mediabryo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */