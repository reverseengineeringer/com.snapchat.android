package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;

final class MediaSessionCompat$MediaSessionImplBase
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */