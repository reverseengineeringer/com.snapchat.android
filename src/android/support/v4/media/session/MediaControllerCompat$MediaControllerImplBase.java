package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.view.KeyEvent;

final class MediaControllerCompat$MediaControllerImplBase
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.MediaControllerImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */