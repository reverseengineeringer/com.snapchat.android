package android.support.v4.media.session;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaMetadataCompatApi21.Builder;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat.1;
import android.support.v4.media.VolumeProviderCompatApi21;
import android.support.v4.util.ArrayMap;
import java.util.Iterator;
import java.util.Set;

final class MediaSessionCompat$MediaSessionImplApi21
  implements MediaSessionCompat.MediaSessionImpl
{
  private final Object mSessionObj;
  private final MediaSessionCompat.Token mToken;
  
  public MediaSessionCompat$MediaSessionImplApi21(Context paramContext, String paramString)
  {
    mSessionObj = MediaSessionCompatApi21.createSession(paramContext, paramString);
    mToken = new MediaSessionCompat.Token(MediaSessionCompatApi21.getSessionToken(mSessionObj));
  }
  
  public MediaSessionCompat$MediaSessionImplApi21(Object paramObject)
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */