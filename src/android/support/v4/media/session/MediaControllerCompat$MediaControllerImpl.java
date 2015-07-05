package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.view.KeyEvent;

abstract interface MediaControllerCompat$MediaControllerImpl
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.MediaControllerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */