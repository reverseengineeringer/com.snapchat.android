package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.media.session.PlaybackState.Builder;

final class PlaybackStateCompatApi21
{
  public static long getActions(Object paramObject)
  {
    return ((PlaybackState)paramObject).getActions();
  }
  
  public static long getBufferedPosition(Object paramObject)
  {
    return ((PlaybackState)paramObject).getBufferedPosition();
  }
  
  public static CharSequence getErrorMessage(Object paramObject)
  {
    return ((PlaybackState)paramObject).getErrorMessage();
  }
  
  public static long getLastPositionUpdateTime(Object paramObject)
  {
    return ((PlaybackState)paramObject).getLastPositionUpdateTime();
  }
  
  public static float getPlaybackSpeed(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPlaybackSpeed();
  }
  
  public static long getPosition(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPosition();
  }
  
  public static int getState(Object paramObject)
  {
    return ((PlaybackState)paramObject).getState();
  }
  
  public static Object newInstance(int paramInt, long paramLong1, long paramLong2, float paramFloat, long paramLong3, CharSequence paramCharSequence, long paramLong4)
  {
    PlaybackState.Builder localBuilder = new PlaybackState.Builder();
    localBuilder.setState(paramInt, paramLong1, paramFloat, paramLong4);
    localBuilder.setBufferedPosition(paramLong2);
    localBuilder.setActions(paramLong3);
    localBuilder.setErrorMessage(paramCharSequence);
    return localBuilder.build();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */