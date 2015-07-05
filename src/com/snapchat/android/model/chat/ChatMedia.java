package com.snapchat.android.model.chat;

import aim;
import ajx;
import akb;
import akb.a;
import android.net.Uri;
import aud;
import ayd;
import bgk;
import bhf;
import bih;
import bij;
import cgb;
import com.snapchat.android.Timber;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import java.util.Date;

public class ChatMedia
  extends akb
{
  public static final String CHAT_MEDIA_PATH = "/bq/chat_media";
  private static final long MAX_PRESERVATION_PERIOD = 120000L;
  private static final String TAG = "ChatMedia";
  public static final String TYPE = "media";
  private static final long UNINITIALIZED_PRESERVATION_TIMESTAMP = -1L;
  private bgk mClock;
  protected int mHeight;
  public boolean mIsLoaded = false;
  protected String mIv;
  protected String mKey;
  protected String mMediaId;
  public MediaType mMediaType;
  protected long mPreservationTimestamp = -1L;
  protected int mWidth;
  
  public ChatMedia(aim paramaim)
  {
    super(ajx.l(), mMediaMailingMetadata.e(), Long.valueOf(mTime.getTime()));
    mId = mClientId;
    mKey = ayd.a();
    mIv = ayd.b();
    mWidth = mWidth;
    mHeight = mHeight;
    mMediaType = MediaType.fromSnapMediaType(paramaim.h());
    mClock = new bgk();
  }
  
  public ChatMedia(bhf parambhf)
  {
    super(parambhf);
    if ((parambhf.b()) && (parambhf.a().b()))
    {
      parambhf = parambhf.a().a();
      mMediaId = parambhf.a();
      mKey = parambhf.c();
      mIv = parambhf.d();
      mWidth = aud.a(parambhf.e());
      mHeight = aud.a(parambhf.f());
    }
    mMediaType = MediaType.IMAGE;
    mClock = new bgk();
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
    mClock = new bgk();
  }
  
  public final String B()
  {
    return mMediaId;
  }
  
  public final MediaType C()
  {
    return mMediaType;
  }
  
  public final String D()
  {
    return mKey;
  }
  
  public final String E()
  {
    return mIv;
  }
  
  public final int F()
  {
    return mWidth;
  }
  
  public final int G()
  {
    return mHeight;
  }
  
  public final boolean H()
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
  
  public final void I()
  {
    if (mPreservationTimestamp == -1L)
    {
      mPreservationTimestamp = System.currentTimeMillis();
      Timber.c("ChatMedia", "set preservation timestamp of chat media with id[%s] to %d", new Object[] { mId, Long.valueOf(mPreservationTimestamp) });
    }
  }
  
  public Uri J()
  {
    return null;
  }
  
  public String K()
  {
    return null;
  }
  
  public boolean L()
  {
    return false;
  }
  
  public boolean M()
  {
    return false;
  }
  
  public float R()
  {
    return 0.0F;
  }
  
  public float S()
  {
    return 0.0F;
  }
  
  public float T()
  {
    return 0.0F;
  }
  
  public float U()
  {
    return 0.0F;
  }
  
  public final void a(@cgb ChatMedia paramChatMedia)
  {
    if (mKey == null) {
      mKey = mKey;
    }
    if (mIv == null) {
      mIv = mIv;
    }
  }
  
  public final boolean am()
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
  
  public final void f(@cgb String paramString)
  {
    mKey = paramString;
  }
  
  public final void g(@cgb String paramString)
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
    extends akb.a
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