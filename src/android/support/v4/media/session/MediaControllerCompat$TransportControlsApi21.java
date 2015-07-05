package android.support.v4.media.session;

import android.support.v4.media.RatingCompat;

final class MediaControllerCompat$TransportControlsApi21
  extends MediaControllerCompat.TransportControls
{
  private final Object mControlsObj;
  
  public MediaControllerCompat$TransportControlsApi21(Object paramObject)
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

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.TransportControlsApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */