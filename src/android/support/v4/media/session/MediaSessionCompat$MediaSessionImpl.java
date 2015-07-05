package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;

abstract interface MediaSessionCompat$MediaSessionImpl
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */