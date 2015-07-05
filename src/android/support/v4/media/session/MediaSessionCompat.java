package android.support.v4.media.session;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaMetadataCompatApi21.Builder;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat.1;
import android.support.v4.media.VolumeProviderCompatApi21;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Set;

public final class MediaSessionCompat
{
  public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
  public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
  final MediaSessionImpl mImpl;
  
  private MediaSessionCompat(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context must not be null");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("tag must not be null or empty");
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      mImpl = new MediaSessionImplApi21(paramContext, paramString);
      return;
    }
    mImpl = new MediaSessionImplBase();
  }
  
  private MediaSessionCompat(MediaSessionImpl paramMediaSessionImpl)
  {
    mImpl = paramMediaSessionImpl;
  }
  
  private Object getMediaSession()
  {
    return mImpl.getMediaSession();
  }
  
  private Token getSessionToken()
  {
    return mImpl.getSessionToken();
  }
  
  private boolean isActive()
  {
    return mImpl.isActive();
  }
  
  private static MediaSessionCompat obtain(Object paramObject)
  {
    return new MediaSessionCompat(new MediaSessionImplApi21(paramObject));
  }
  
  private void release()
  {
    mImpl.release();
  }
  
  private void sendSessionEvent(String paramString, Bundle paramBundle)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("event cannot be null or empty");
    }
    mImpl.sendSessionEvent(paramString, paramBundle);
  }
  
  private void setActive(boolean paramBoolean)
  {
    mImpl.setActive(paramBoolean);
  }
  
  private void setCallback(Callback paramCallback)
  {
    mImpl.setCallback(paramCallback, new Handler());
  }
  
  private void setCallback$156e18b4(Callback paramCallback)
  {
    mImpl.setCallback(paramCallback, new Handler());
  }
  
  private void setFlags(int paramInt)
  {
    mImpl.setFlags(paramInt);
  }
  
  private void setMetadata(MediaMetadataCompat paramMediaMetadataCompat)
  {
    mImpl.setMetadata(paramMediaMetadataCompat);
  }
  
  private void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat)
  {
    mImpl.setPlaybackState(paramPlaybackStateCompat);
  }
  
  private void setPlaybackToLocal(int paramInt)
  {
    mImpl.setPlaybackToLocal(paramInt);
  }
  
  private void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat)
  {
    if (paramVolumeProviderCompat == null) {
      throw new IllegalArgumentException("volumeProvider may not be null!");
    }
    mImpl.setPlaybackToRemote(paramVolumeProviderCompat);
  }
  
  public static abstract class Callback
  {
    final Object mCallbackObj;
    
    public Callback()
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        mCallbackObj = MediaSessionCompatApi21.createCallback(new StubApi21((byte)0));
        return;
      }
      mCallbackObj = null;
    }
    
    private static void onCommand$419d37ab() {}
    
    private static void onFastForward() {}
    
    private static boolean onMediaButtonEvent$14d1abca()
    {
      return false;
    }
    
    private static void onPause() {}
    
    private static void onPlay() {}
    
    private static void onRewind() {}
    
    private static void onSeekTo$1349ef() {}
    
    private static void onSetRating$628f94d1() {}
    
    private static void onSkipToNext() {}
    
    private static void onSkipToPrevious() {}
    
    private static void onStop() {}
    
    final class StubApi21
      implements MediaSessionCompatApi21.Callback
    {
      private StubApi21() {}
      
      public final void onCommand$419d37ab() {}
      
      public final void onFastForward() {}
      
      public final boolean onMediaButtonEvent$14d1abca()
      {
        return false;
      }
      
      public final void onPause() {}
      
      public final void onPlay() {}
      
      public final void onRewind() {}
      
      public final void onSeekTo$1349ef() {}
      
      public final void onSetRating(Object paramObject)
      {
        RatingCompat.fromRating(paramObject);
      }
      
      public final void onSkipToNext() {}
      
      public final void onSkipToPrevious() {}
      
      public final void onStop() {}
    }
  }
  
  static abstract interface MediaSessionImpl
  {
    public abstract Object getMediaSession();
    
    public abstract MediaSessionCompat.Token getSessionToken();
    
    public abstract boolean isActive();
    
    public abstract void release();
    
    public abstract void sendSessionEvent(String paramString, Bundle paramBundle);
    
    public abstract void setActive(boolean paramBoolean);
    
    public abstract void setCallback(MediaSessionCompat.Callback paramCallback, Handler paramHandler);
    
    public abstract void setFlags(int paramInt);
    
    public abstract void setMetadata(MediaMetadataCompat paramMediaMetadataCompat);
    
    public abstract void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat);
    
    public abstract void setPlaybackToLocal(int paramInt);
    
    public abstract void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat);
  }
  
  static final class MediaSessionImplApi21
    implements MediaSessionCompat.MediaSessionImpl
  {
    private final Object mSessionObj;
    private final MediaSessionCompat.Token mToken;
    
    public MediaSessionImplApi21(Context paramContext, String paramString)
    {
      mSessionObj = MediaSessionCompatApi21.createSession(paramContext, paramString);
      mToken = new MediaSessionCompat.Token(MediaSessionCompatApi21.getSessionToken(mSessionObj));
    }
    
    public MediaSessionImplApi21(Object paramObject)
    {
      mSessionObj = MediaSessionCompatApi21.verifySession(paramObject);
      mToken = new MediaSessionCompat.Token(MediaSessionCompatApi21.getSessionToken(mSessionObj));
    }
    
    public final Object getMediaSession()
    {
      return mSessionObj;
    }
    
    public final MediaSessionCompat.Token getSessionToken()
    {
      return mToken;
    }
    
    public final boolean isActive()
    {
      return MediaSessionCompatApi21.isActive(mSessionObj);
    }
    
    public final void release()
    {
      MediaSessionCompatApi21.release(mSessionObj);
    }
    
    public final void sendSessionEvent(String paramString, Bundle paramBundle)
    {
      MediaSessionCompatApi21.sendSessionEvent(mSessionObj, paramString, paramBundle);
    }
    
    public final void setActive(boolean paramBoolean)
    {
      MediaSessionCompatApi21.setActive(mSessionObj, paramBoolean);
    }
    
    public final void setCallback(MediaSessionCompat.Callback paramCallback, Handler paramHandler)
    {
      MediaSessionCompatApi21.setCallback(mSessionObj, mCallbackObj, paramHandler);
    }
    
    public final void setFlags(int paramInt)
    {
      MediaSessionCompatApi21.setFlags(mSessionObj, paramInt);
    }
    
    public final void setMetadata(MediaMetadataCompat paramMediaMetadataCompat)
    {
      Object localObject1 = mSessionObj;
      if ((mMetadataObj != null) || (Build.VERSION.SDK_INT < 21)) {}
      for (paramMediaMetadataCompat = mMetadataObj;; paramMediaMetadataCompat = mMetadataObj)
      {
        MediaSessionCompatApi21.setMetadata(localObject1, paramMediaMetadataCompat);
        return;
        Object localObject2 = MediaMetadataCompatApi21.Builder.newInstance();
        Iterator localIterator = mBundle.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          Integer localInteger = (Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
          if (localInteger != null) {
            switch (localInteger.intValue())
            {
            default: 
              break;
            case 0: 
              MediaMetadataCompatApi21.Builder.putLong(localObject2, str, mBundle.getLong(str, 0L));
              break;
            case 2: 
              MediaMetadataCompatApi21.Builder.putBitmap(localObject2, str, paramMediaMetadataCompat.getBitmap(str));
              break;
            case 3: 
              MediaMetadataCompatApi21.Builder.putRating(localObject2, str, paramMediaMetadataCompat.getRating(str).getRating());
              break;
            case 1: 
              MediaMetadataCompatApi21.Builder.putText(localObject2, str, mBundle.getCharSequence(str));
            }
          }
        }
        mMetadataObj = MediaMetadataCompatApi21.Builder.build(localObject2);
      }
    }
    
    public final void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat)
    {
      Object localObject = mSessionObj;
      if ((mStateObj != null) || (Build.VERSION.SDK_INT < 21)) {}
      for (paramPlaybackStateCompat = mStateObj;; paramPlaybackStateCompat = mStateObj)
      {
        MediaSessionCompatApi21.setPlaybackState(localObject, paramPlaybackStateCompat);
        return;
        mStateObj = PlaybackStateCompatApi21.newInstance(mState, mPosition, mBufferedPosition, mSpeed, mActions, mErrorMessage, mUpdateTime);
      }
    }
    
    public final void setPlaybackToLocal(int paramInt)
    {
      MediaSessionCompatApi21.setPlaybackToLocal(mSessionObj, paramInt);
    }
    
    public final void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat)
    {
      Object localObject = mSessionObj;
      if ((mVolumeProviderObj != null) || (Build.VERSION.SDK_INT < 21)) {}
      for (paramVolumeProviderCompat = mVolumeProviderObj;; paramVolumeProviderCompat = mVolumeProviderObj)
      {
        MediaSessionCompatApi21.setPlaybackToRemote(localObject, paramVolumeProviderCompat);
        return;
        mVolumeProviderObj = VolumeProviderCompatApi21.createVolumeProvider(mControlType, mMaxVolume, mCurrentVolume, new VolumeProviderCompat.1(paramVolumeProviderCompat));
      }
    }
  }
  
  static final class MediaSessionImplBase
    implements MediaSessionCompat.MediaSessionImpl
  {
    public final Object getMediaSession()
    {
      return null;
    }
    
    public final MediaSessionCompat.Token getSessionToken()
    {
      return null;
    }
    
    public final boolean isActive()
    {
      return false;
    }
    
    public final void release() {}
    
    public final void sendSessionEvent(String paramString, Bundle paramBundle) {}
    
    public final void setActive(boolean paramBoolean) {}
    
    public final void setCallback(MediaSessionCompat.Callback paramCallback, Handler paramHandler) {}
    
    public final void setFlags(int paramInt) {}
    
    public final void setMetadata(MediaMetadataCompat paramMediaMetadataCompat) {}
    
    public final void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat) {}
    
    public final void setPlaybackToLocal(int paramInt) {}
    
    public final void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat) {}
  }
  
  public static final class Token
    implements Parcelable
  {
    public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator()
    {
      private static MediaSessionCompat.Token createFromParcel(Parcel paramAnonymousParcel)
      {
        return new MediaSessionCompat.Token(paramAnonymousParcel.readParcelable(null));
      }
      
      private static MediaSessionCompat.Token[] newArray(int paramAnonymousInt)
      {
        return new MediaSessionCompat.Token[paramAnonymousInt];
      }
    };
    final Parcelable mInner;
    
    Token(Parcelable paramParcelable)
    {
      mInner = paramParcelable;
    }
    
    private Object getToken()
    {
      return mInner;
    }
    
    public final int describeContents()
    {
      return mInner.describeContents();
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeParcelable(mInner, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */