package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.support.v4.media.RatingCompat;

public abstract class MediaSessionCompat$Callback
{
  final Object mCallbackObj;
  
  public MediaSessionCompat$Callback()
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      mCallbackObj = MediaSessionCompatApi21.createCallback(new StubApi21((byte)0));
      return;
    }
    mCallbackObj = null;
  }
  
  private static void onCommand$419d37ab() {}
  
  private static void onFastForward() {}
  
  private static boolean onMediaButtonEvent$14d1abca()
  {
    return false;
  }
  
  private static void onPause() {}
  
  private static void onPlay() {}
  
  private static void onRewind() {}
  
  private static void onSeekTo$1349ef() {}
  
  private static void onSetRating$628f94d1() {}
  
  private static void onSkipToNext() {}
  
  private static void onSkipToPrevious() {}
  
  private static void onStop() {}
  
  final class StubApi21
    implements MediaSessionCompatApi21.Callback
  {
    private StubApi21() {}
    
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
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */