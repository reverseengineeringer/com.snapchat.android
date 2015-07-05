package android.support.v4.media.session;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;

public final class MediaControllerCompat
{
  private final MediaControllerImpl mImpl;
  
  private MediaControllerCompat(Context paramContext, MediaSessionCompat.Token paramToken)
  {
    if (paramToken == null) {
      throw new IllegalArgumentException("sessionToken must not be null");
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      mImpl = new MediaControllerImplApi21(paramContext, paramToken);
      return;
    }
    mImpl = new MediaControllerImplBase();
  }
  
  private MediaControllerCompat(Context paramContext, MediaSessionCompat paramMediaSessionCompat)
  {
    if (paramMediaSessionCompat == null) {
      throw new IllegalArgumentException("session must not be null");
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      mImpl = new MediaControllerImplApi21(paramContext, paramMediaSessionCompat);
      return;
    }
    mImpl = new MediaControllerImplBase();
  }
  
  private boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent == null) {
      throw new IllegalArgumentException("KeyEvent may not be null");
    }
    return mImpl.dispatchMediaButtonEvent(paramKeyEvent);
  }
  
  private Object getMediaController()
  {
    return mImpl.getMediaController();
  }
  
  private MediaMetadataCompat getMetadata()
  {
    return mImpl.getMetadata();
  }
  
  private PlaybackInfo getPlaybackInfo()
  {
    return mImpl.getPlaybackInfo();
  }
  
  private PlaybackStateCompat getPlaybackState()
  {
    return mImpl.getPlaybackState();
  }
  
  private int getRatingType()
  {
    return mImpl.getRatingType();
  }
  
  private TransportControls getTransportControls()
  {
    return mImpl.getTransportControls();
  }
  
  private void registerCallback(Callback paramCallback)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback cannot be null");
    }
    Handler localHandler = new Handler();
    mImpl.registerCallback(paramCallback, localHandler);
  }
  
  private void registerCallback$7cac72c0(Callback paramCallback)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback cannot be null");
    }
    Handler localHandler = new Handler();
    mImpl.registerCallback(paramCallback, localHandler);
  }
  
  private void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("command cannot be null or empty");
    }
    mImpl.sendCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  private void unregisterCallback(Callback paramCallback)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback cannot be null");
    }
    mImpl.unregisterCallback(paramCallback);
  }
  
  public static abstract class Callback
  {
    final Object mCallbackObj;
    
    public Callback()
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        mCallbackObj = MediaControllerCompatApi21.createCallback(new StubApi21((byte)0));
        return;
      }
      mCallbackObj = null;
    }
    
    private static void onMetadataChanged$a01132b() {}
    
    private static void onPlaybackStateChanged$15a11a21() {}
    
    private static void onSessionDestroyed() {}
    
    private static void onSessionEvent$5dc9c75() {}
    
    final class StubApi21
      implements MediaControllerCompatApi21.Callback
    {
      private StubApi21() {}
      
      public final void onMetadataChanged(Object paramObject)
      {
        MediaMetadataCompat.fromMediaMetadata(paramObject);
      }
      
      public final void onPlaybackStateChanged(Object paramObject)
      {
        PlaybackStateCompat.fromPlaybackState(paramObject);
      }
      
      public final void onSessionDestroyed() {}
      
      public final void onSessionEvent$5dc9c75() {}
    }
  }
  
  static abstract interface MediaControllerImpl
  {
    public abstract boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent);
    
    public abstract Object getMediaController();
    
    public abstract MediaMetadataCompat getMetadata();
    
    public abstract MediaControllerCompat.PlaybackInfo getPlaybackInfo();
    
    public abstract PlaybackStateCompat getPlaybackState();
    
    public abstract int getRatingType();
    
    public abstract MediaControllerCompat.TransportControls getTransportControls();
    
    public abstract void registerCallback(MediaControllerCompat.Callback paramCallback, Handler paramHandler);
    
    public abstract void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver);
    
    public abstract void unregisterCallback(MediaControllerCompat.Callback paramCallback);
  }
  
  static final class MediaControllerImplApi21
    implements MediaControllerCompat.MediaControllerImpl
  {
    private final Object mControllerObj;
    
    public MediaControllerImplApi21(Context paramContext, MediaSessionCompat.Token paramToken)
    {
      mControllerObj = MediaControllerCompatApi21.fromToken(paramContext, mInner);
      if (mControllerObj == null) {
        throw new RemoteException();
      }
    }
    
    public MediaControllerImplApi21(Context paramContext, MediaSessionCompat paramMediaSessionCompat)
    {
      mControllerObj = MediaControllerCompatApi21.fromToken(paramContext, mImpl.getSessionToken().mInner);
    }
    
    public final boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent)
    {
      return MediaControllerCompatApi21.dispatchMediaButtonEvent(mControllerObj, paramKeyEvent);
    }
    
    public final Object getMediaController()
    {
      return mControllerObj;
    }
    
    public final MediaMetadataCompat getMetadata()
    {
      Object localObject = MediaControllerCompatApi21.getMetadata(mControllerObj);
      if (localObject != null) {
        return MediaMetadataCompat.fromMediaMetadata(localObject);
      }
      return null;
    }
    
    public final MediaControllerCompat.PlaybackInfo getPlaybackInfo()
    {
      Object localObject = MediaControllerCompatApi21.getPlaybackInfo(mControllerObj);
      if (localObject != null) {
        return new MediaControllerCompat.PlaybackInfo(MediaControllerCompatApi21.PlaybackInfo.getPlaybackType(localObject), MediaControllerCompatApi21.PlaybackInfo.getLegacyAudioStream(localObject), MediaControllerCompatApi21.PlaybackInfo.getVolumeControl(localObject), MediaControllerCompatApi21.PlaybackInfo.getMaxVolume(localObject), MediaControllerCompatApi21.PlaybackInfo.getCurrentVolume(localObject));
      }
      return null;
    }
    
    public final PlaybackStateCompat getPlaybackState()
    {
      Object localObject = MediaControllerCompatApi21.getPlaybackState(mControllerObj);
      if (localObject != null) {
        return PlaybackStateCompat.fromPlaybackState(localObject);
      }
      return null;
    }
    
    public final int getRatingType()
    {
      return MediaControllerCompatApi21.getRatingType(mControllerObj);
    }
    
    public final MediaControllerCompat.TransportControls getTransportControls()
    {
      Object localObject = MediaControllerCompatApi21.getTransportControls(mControllerObj);
      if (localObject != null) {
        return new MediaControllerCompat.TransportControlsApi21(localObject);
      }
      return null;
    }
    
    public final void registerCallback(MediaControllerCompat.Callback paramCallback, Handler paramHandler)
    {
      MediaControllerCompatApi21.registerCallback(mControllerObj, mCallbackObj, paramHandler);
    }
    
    public final void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
    {
      MediaControllerCompatApi21.sendCommand(mControllerObj, paramString, paramBundle, paramResultReceiver);
    }
    
    public final void unregisterCallback(MediaControllerCompat.Callback paramCallback)
    {
      MediaControllerCompatApi21.unregisterCallback(mControllerObj, mCallbackObj);
    }
  }
  
  static final class MediaControllerImplBase
    implements MediaControllerCompat.MediaControllerImpl
  {
    public final boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent)
    {
      return false;
    }
    
    public final Object getMediaController()
    {
      return null;
    }
    
    public final MediaMetadataCompat getMetadata()
    {
      return null;
    }
    
    public final MediaControllerCompat.PlaybackInfo getPlaybackInfo()
    {
      return null;
    }
    
    public final PlaybackStateCompat getPlaybackState()
    {
      return null;
    }
    
    public final int getRatingType()
    {
      return 0;
    }
    
    public final MediaControllerCompat.TransportControls getTransportControls()
    {
      return null;
    }
    
    public final void registerCallback(MediaControllerCompat.Callback paramCallback, Handler paramHandler) {}
    
    public final void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {}
    
    public final void unregisterCallback(MediaControllerCompat.Callback paramCallback) {}
  }
  
  public static final class PlaybackInfo
  {
    public static final int PLAYBACK_TYPE_LOCAL = 1;
    public static final int PLAYBACK_TYPE_REMOTE = 2;
    private final int mAudioStream;
    private final int mCurrentVolume;
    private final int mMaxVolume;
    private final int mPlaybackType;
    private final int mVolumeControl;
    
    PlaybackInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      mPlaybackType = paramInt1;
      mAudioStream = paramInt2;
      mVolumeControl = paramInt3;
      mMaxVolume = paramInt4;
      mCurrentVolume = paramInt5;
    }
    
    private int getAudioStream()
    {
      return mAudioStream;
    }
    
    private int getCurrentVolume()
    {
      return mCurrentVolume;
    }
    
    private int getMaxVolume()
    {
      return mMaxVolume;
    }
    
    private int getPlaybackType()
    {
      return mPlaybackType;
    }
    
    private int getVolumeControl()
    {
      return mVolumeControl;
    }
  }
  
  public static abstract class TransportControls
  {
    public abstract void fastForward();
    
    public abstract void pause();
    
    public abstract void play();
    
    public abstract void rewind();
    
    public abstract void seekTo(long paramLong);
    
    public abstract void setRating(RatingCompat paramRatingCompat);
    
    public abstract void skipToNext();
    
    public abstract void skipToPrevious();
    
    public abstract void stop();
  }
  
  static final class TransportControlsApi21
    extends MediaControllerCompat.TransportControls
  {
    private final Object mControlsObj;
    
    public TransportControlsApi21(Object paramObject)
    {
      mControlsObj = paramObject;
    }
    
    public final void fastForward()
    {
      MediaControllerCompatApi21.TransportControls.fastForward(mControlsObj);
    }
    
    public final void pause()
    {
      MediaControllerCompatApi21.TransportControls.pause(mControlsObj);
    }
    
    public final void play()
    {
      MediaControllerCompatApi21.TransportControls.play(mControlsObj);
    }
    
    public final void rewind()
    {
      MediaControllerCompatApi21.TransportControls.rewind(mControlsObj);
    }
    
    public final void seekTo(long paramLong)
    {
      MediaControllerCompatApi21.TransportControls.seekTo(mControlsObj, paramLong);
    }
    
    public final void setRating(RatingCompat paramRatingCompat)
    {
      Object localObject = mControlsObj;
      if (paramRatingCompat != null) {}
      for (paramRatingCompat = paramRatingCompat.getRating();; paramRatingCompat = null)
      {
        MediaControllerCompatApi21.TransportControls.setRating(localObject, paramRatingCompat);
        return;
      }
    }
    
    public final void skipToNext()
    {
      MediaControllerCompatApi21.TransportControls.skipToNext(mControlsObj);
    }
    
    public final void skipToPrevious()
    {
      MediaControllerCompatApi21.TransportControls.skipToPrevious(mControlsObj);
    }
    
    public final void stop()
    {
      MediaControllerCompatApi21.TransportControls.stop(mControlsObj);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */