package android.support.v4.media.session;

import android.support.v4.media.MediaMetadataCompat;

final class MediaControllerCompat$Callback$StubApi21
  implements MediaControllerCompatApi21.Callback
{
  private MediaControllerCompat$Callback$StubApi21(MediaControllerCompat.Callback paramCallback) {}
  
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.Callback.StubApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */