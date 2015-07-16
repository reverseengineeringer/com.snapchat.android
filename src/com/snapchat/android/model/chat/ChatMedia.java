package com.snapchat.android.model.chat;

import aji;
import akr;
import akw;
import akw.a;
import android.net.Uri;
import avb;
import azb;
import bhk;
import bif;
import bjh;
import bjj;
import chc;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import java.util.Date;

public class ChatMedia
  extends akw
{
  public static final String CHAT_MEDIA_PATH = "/bq/chat_media";
  private static final long MAX_PRESERVATION_PERIOD = 120000L;
  private static final String TAG = "ChatMedia";
  public static final String TYPE = "media";
  private static final long UNINITIALIZED_PRESERVATION_TIMESTAMP = -1L;
  private bhk mClock;
  protected int mHeight;
  public boolean mIsLoaded = false;
  protected String mIv;
  protected String mKey;
  protected String mMediaId;
  public MediaType mMediaType;
  protected long mPreservationTimestamp = -1L;
  protected int mWidth;
  
  public ChatMedia(aji paramaji)
  {
    super(akr.l(), mMediaMailingMetadata.e(), Long.valueOf(mTime.getTime()));
    mId = mClientId;
    mKey = azb.a();
    mIv = azb.b();
    mWidth = mWidth;
    mHeight = mHeight;
    mMediaType = MediaType.fromSnapMediaType(paramaji.h());
    mClock = new bhk();
  }
  
  public ChatMedia(bif parambif)
  {
    super(parambif);
    if ((parambif.b()) && (parambif.a().b()))
    {
      parambif = parambif.a().a();
      mMediaId = parambif.a();
      mKey = parambif.c();
      mIv = parambif.d();
      mWidth = avb.a(parambif.e());
      mHeight = avb.a(parambif.f());
    }
    mMediaType = MediaType.IMAGE;
    mClock = new bhk();
  }
  
  public ChatMedia(a parama)
  {
    super(parama);
    mMediaId = mediaId;
    mKey = key;
    mIv = iv;
    mMediaType = mediaType;
    mWidth = width;
    mHeight = height;
    mClock = new bhk();
  }
  
  public final String C()
  {
    return mMediaId;
  }
  
  public final MediaType D()
  {
    return mMediaType;
  }
  
  public final String E()
  {
    return mKey;
  }
  
  public final String F()
  {
    return mIv;
  }
  
  public final int G()
  {
    return mWidth;
  }
  
  public final int H()
  {
    return mHeight;
  }
  
  public final boolean I()
  {
    if ((!mIsDisplayedToRecipient) && (!mIsLoaded))
    {
      if ((mPreservationTimestamp == -1L) || (System.currentTimeMillis() - mPreservationTimestamp <= 120000L)) {}
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final void J()
  {
    if (mPreservationTimestamp == -1L)
    {
      mPreservationTimestamp = System.currentTimeMillis();
      String str = mId;
      long l = mPreservationTimestamp;
    }
  }
  
  public Uri K()
  {
    return null;
  }
  
  public String L()
  {
    return null;
  }
  
  public boolean M()
  {
    return false;
  }
  
  public boolean N()
  {
    return false;
  }
  
  public float S()
  {
    return 0.0F;
  }
  
  public float T()
  {
    return 0.0F;
  }
  
  public float V()
  {
    return 0.0F;
  }
  
  public float W()
  {
    return 0.0F;
  }
  
  public final void a(@chc ChatMedia paramChatMedia)
  {
    if (mKey == null) {
      mKey = mKey;
    }
    if (mIv == null) {
      mIv = mIv;
    }
  }
  
  public final boolean ak()
  {
    return true;
  }
  
  public final void d(boolean paramBoolean)
  {
    mIsLoaded = paramBoolean;
  }
  
  public final void e(String paramString)
  {
    mMediaId = paramString;
  }
  
  public final void f(@chc String paramString)
  {
    mKey = paramString;
  }
  
  public final void g(@chc String paramString)
  {
    mIv = paramString;
  }
  
  public final boolean g(long paramLong)
  {
    return (mIsLoaded) && (super.g(paramLong));
  }
  
  public String h()
  {
    return "media";
  }
  
  public String toString()
  {
    return "ChatMedia{mMediaType=" + mMediaType + ", mMediaId='" + mMediaId + '\'' + ", mKey='" + mKey + '\'' + ", mIv='" + mIv + '\'' + ", mIsLoaded='" + mIsLoaded + '\'' + ", mWidth=" + mWidth + ", mHeight=" + mHeight + '}';
  }
  
  public static enum MediaType
  {
    IMAGE,  VIDEO,  VIDEO_NO_SOUND;
    
    private MediaType() {}
    
    public static MediaType fromSnapMediaType(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        throw new IllegalArgumentException("Unsupported type.");
      case 0: 
        return IMAGE;
      case 1: 
        return VIDEO;
      }
      return VIDEO_NO_SOUND;
    }
  }
  
  public static class a
    extends akw.a
  {
    public int height;
    String iv;
    String key;
    public String mediaId;
    ChatMedia.MediaType mediaType;
    public int width;
    
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
    
    public final a a(String paramString)
    {
      mediaType = ChatMedia.MediaType.valueOf(paramString);
      return this;
    }
    
    public ChatMedia a()
    {
      return new ChatMedia(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.chat.ChatMedia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */