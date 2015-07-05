package android.support.v4.media.session;

import android.content.Intent;
import android.media.Rating;
import android.media.session.MediaSession.Callback;
import android.os.Bundle;
import android.os.ResultReceiver;

final class MediaSessionCompatApi21$CallbackProxy<T extends MediaSessionCompatApi21.Callback>
  extends MediaSession.Callback
{
  protected final T mCallback;
  
  public MediaSessionCompatApi21$CallbackProxy(T paramT)
  {
    mCallback = paramT;
  }
  
  public final void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {}
  
  public final void onFastForward() {}
  
  public final boolean onMediaButtonEvent(Intent paramIntent)
  {
    return false;
  }
  
  public final void onPause() {}
  
  public final void onPlay() {}
  
  public final void onRewind() {}
  
  public final void onSeekTo(long paramLong) {}
  
  public final void onSetRating(Rating paramRating)
  {
    mCallback.onSetRating(paramRating);
  }
  
  public final void onSkipToNext() {}
  
  public final void onSkipToPrevious() {}
  
  public final void onStop() {}
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi21.CallbackProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */