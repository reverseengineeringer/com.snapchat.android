package android.support.v4.media.session;

import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes.Builder;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.MediaSession.Callback;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;

final class MediaSessionCompatApi21
{
  public static Object createCallback(Callback paramCallback)
  {
    return new CallbackProxy(paramCallback);
  }
  
  public static Object createSession(Context paramContext, String paramString)
  {
    return new MediaSession(paramContext, paramString);
  }
  
  public static Parcelable getSessionToken(Object paramObject)
  {
    return ((MediaSession)paramObject).getSessionToken();
  }
  
  public static boolean isActive(Object paramObject)
  {
    return ((MediaSession)paramObject).isActive();
  }
  
  public static void release(Object paramObject)
  {
    ((MediaSession)paramObject).release();
  }
  
  public static void sendSessionEvent(Object paramObject, String paramString, Bundle paramBundle)
  {
    ((MediaSession)paramObject).sendSessionEvent(paramString, paramBundle);
  }
  
  public static void setActive(Object paramObject, boolean paramBoolean)
  {
    ((MediaSession)paramObject).setActive(paramBoolean);
  }
  
  public static void setCallback(Object paramObject1, Object paramObject2, Handler paramHandler)
  {
    ((MediaSession)paramObject1).setCallback((MediaSession.Callback)paramObject2, paramHandler);
  }
  
  public static void setFlags(Object paramObject, int paramInt)
  {
    ((MediaSession)paramObject).setFlags(paramInt);
  }
  
  public static void setMetadata(Object paramObject1, Object paramObject2)
  {
    ((MediaSession)paramObject1).setMetadata((MediaMetadata)paramObject2);
  }
  
  public static void setPlaybackState(Object paramObject1, Object paramObject2)
  {
    ((MediaSession)paramObject1).setPlaybackState((PlaybackState)paramObject2);
  }
  
  public static void setPlaybackToLocal(Object paramObject, int paramInt)
  {
    AudioAttributes.Builder localBuilder = new AudioAttributes.Builder();
    localBuilder.setLegacyStreamType(paramInt);
    ((MediaSession)paramObject).setPlaybackToLocal(localBuilder.build());
  }
  
  public static void setPlaybackToRemote(Object paramObject1, Object paramObject2)
  {
    ((MediaSession)paramObject1).setPlaybackToRemote((VolumeProvider)paramObject2);
  }
  
  public static Object verifySession(Object paramObject)
  {
    if ((paramObject instanceof MediaSession)) {
      return paramObject;
    }
    throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
  }
  
  public static abstract interface Callback
  {
    public abstract void onCommand$419d37ab();
    
    public abstract void onFastForward();
    
    public abstract boolean onMediaButtonEvent$14d1abca();
    
    public abstract void onPause();
    
    public abstract void onPlay();
    
    public abstract void onRewind();
    
    public abstract void onSeekTo$1349ef();
    
    public abstract void onSetRating(Object paramObject);
    
    public abstract void onSkipToNext();
    
    public abstract void onSkipToPrevious();
    
    public abstract void onStop();
  }
  
  static final class CallbackProxy<T extends MediaSessionCompatApi21.Callback>
    extends MediaSession.Callback
  {
    protected final T mCallback;
    
    public CallbackProxy(T paramT)
    {
      mCallback = paramT;
    }
    
    public final void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {}
    
    public final void onFastForward() {}
    
    public final boolean onMediaButtonEvent(Intent paramIntent)
    {
      return false;
    }
    
    public final void onPause() {}
    
    public final void onPlay() {}
    
    public final void onRewind() {}
    
    public final void onSeekTo(long paramLong) {}
    
    public final void onSetRating(Rating paramRating)
    {
      mCallback.onSetRating(paramRating);
    }
    
    public final void onSkipToNext() {}
    
    public final void onSkipToPrevious() {}
    
    public final void onStop() {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */