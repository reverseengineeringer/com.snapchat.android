package android.support.v4.media.session;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaController.Callback;
import android.media.session.MediaController.PlaybackInfo;
import android.media.session.MediaController.TransportControls;
import android.media.session.MediaSession.Token;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.view.KeyEvent;

final class MediaControllerCompatApi21
{
  public static Object createCallback(Callback paramCallback)
  {
    return new CallbackProxy(paramCallback);
  }
  
  public static boolean dispatchMediaButtonEvent(Object paramObject, KeyEvent paramKeyEvent)
  {
    return ((MediaController)paramObject).dispatchMediaButtonEvent(paramKeyEvent);
  }
  
  public static Object fromToken(Context paramContext, Object paramObject)
  {
    return new MediaController(paramContext, (MediaSession.Token)paramObject);
  }
  
  public static Object getMetadata(Object paramObject)
  {
    return ((MediaController)paramObject).getMetadata();
  }
  
  public static Object getPlaybackInfo(Object paramObject)
  {
    return ((MediaController)paramObject).getPlaybackInfo();
  }
  
  public static Object getPlaybackState(Object paramObject)
  {
    return ((MediaController)paramObject).getPlaybackState();
  }
  
  public static int getRatingType(Object paramObject)
  {
    return ((MediaController)paramObject).getRatingType();
  }
  
  public static Object getTransportControls(Object paramObject)
  {
    return ((MediaController)paramObject).getTransportControls();
  }
  
  public static void registerCallback(Object paramObject1, Object paramObject2, Handler paramHandler)
  {
    ((MediaController)paramObject1).registerCallback((MediaController.Callback)paramObject2, paramHandler);
  }
  
  public static void sendCommand(Object paramObject, String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    ((MediaController)paramObject).sendCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  public static void unregisterCallback(Object paramObject1, Object paramObject2)
  {
    ((MediaController)paramObject1).unregisterCallback((MediaController.Callback)paramObject2);
  }
  
  public static abstract interface Callback
  {
    public abstract void onMetadataChanged(Object paramObject);
    
    public abstract void onPlaybackStateChanged(Object paramObject);
    
    public abstract void onSessionDestroyed();
    
    public abstract void onSessionEvent$5dc9c75();
  }
  
  static final class CallbackProxy<T extends MediaControllerCompatApi21.Callback>
    extends MediaController.Callback
  {
    protected final T mCallback;
    
    public CallbackProxy(T paramT)
    {
      mCallback = paramT;
    }
    
    public final void onMetadataChanged(MediaMetadata paramMediaMetadata)
    {
      mCallback.onMetadataChanged(paramMediaMetadata);
    }
    
    public final void onPlaybackStateChanged(PlaybackState paramPlaybackState)
    {
      mCallback.onPlaybackStateChanged(paramPlaybackState);
    }
    
    public final void onSessionDestroyed() {}
    
    public final void onSessionEvent(String paramString, Bundle paramBundle) {}
  }
  
  public static final class PlaybackInfo
  {
    private static final int FLAG_SCO = 4;
    private static final int STREAM_BLUETOOTH_SCO = 6;
    private static final int STREAM_SYSTEM_ENFORCED = 7;
    
    private static AudioAttributes getAudioAttributes(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getAudioAttributes();
    }
    
    public static int getCurrentVolume(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getCurrentVolume();
    }
    
    public static int getLegacyAudioStream(Object paramObject)
    {
      int i = 3;
      paramObject = ((MediaController.PlaybackInfo)paramObject).getAudioAttributes();
      if ((((AudioAttributes)paramObject).getFlags() & 0x1) == 1)
      {
        i = 7;
        return i;
      }
      if ((((AudioAttributes)paramObject).getFlags() & 0x4) == 4) {
        return 6;
      }
      switch (((AudioAttributes)paramObject).getUsage())
      {
      case 1: 
      case 11: 
      case 12: 
      case 14: 
      default: 
        return 3;
      case 2: 
        return 0;
      case 13: 
        return 1;
      case 3: 
        return 8;
      case 4: 
        return 4;
      case 6: 
        return 2;
      }
      return 5;
    }
    
    public static int getMaxVolume(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getMaxVolume();
    }
    
    public static int getPlaybackType(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getPlaybackType();
    }
    
    public static int getVolumeControl(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getVolumeControl();
    }
    
    private static int toLegacyStreamType(AudioAttributes paramAudioAttributes)
    {
      int i = 3;
      if ((paramAudioAttributes.getFlags() & 0x1) == 1)
      {
        i = 7;
        return i;
      }
      if ((paramAudioAttributes.getFlags() & 0x4) == 4) {
        return 6;
      }
      switch (paramAudioAttributes.getUsage())
      {
      case 1: 
      case 11: 
      case 12: 
      case 14: 
      default: 
        return 3;
      case 2: 
        return 0;
      case 13: 
        return 1;
      case 3: 
        return 8;
      case 4: 
        return 4;
      case 6: 
        return 2;
      }
      return 5;
    }
  }
  
  public static final class TransportControls
  {
    public static void fastForward(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).fastForward();
    }
    
    public static void pause(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).pause();
    }
    
    public static void play(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).play();
    }
    
    public static void rewind(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).rewind();
    }
    
    public static void seekTo(Object paramObject, long paramLong)
    {
      ((MediaController.TransportControls)paramObject).seekTo(paramLong);
    }
    
    public static void setRating(Object paramObject1, Object paramObject2)
    {
      ((MediaController.TransportControls)paramObject1).setRating((Rating)paramObject2);
    }
    
    public static void skipToNext(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).skipToNext();
    }
    
    public static void skipToPrevious(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).skipToPrevious();
    }
    
    public static void stop(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).stop();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */