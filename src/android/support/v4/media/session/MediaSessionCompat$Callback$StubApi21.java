package android.support.v4.media.session;

import android.support.v4.media.RatingCompat;

final class MediaSessionCompat$Callback$StubApi21
  implements MediaSessionCompatApi21.Callback
{
  private MediaSessionCompat$Callback$StubApi21(MediaSessionCompat.Callback paramCallback) {}
  
  public final void onCommand$419d37ab() {}
  
  public final void onFastForward() {}
  
  public final boolean onMediaButtonEvent$14d1abca()
  {
    return false;
  }
  
  public final void onPause() {}
  
  public final void onPlay() {}
  
  public final void onRewind() {}
  
  public final void onSeekTo$1349ef() {}
  
  public final void onSetRating(Object paramObject)
  {
    RatingCompat.fromRating(paramObject);
  }
  
  public final void onSkipToNext() {}
  
  public final void onSkipToPrevious() {}
  
  public final void onStop() {}
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.Callback.StubApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */