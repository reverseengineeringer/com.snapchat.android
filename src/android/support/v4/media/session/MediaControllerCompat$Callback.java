package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.support.v4.media.MediaMetadataCompat;

public abstract class MediaControllerCompat$Callback
{
  final Object mCallbackObj;
  
  public MediaControllerCompat$Callback()
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */