package android.support.v4.media;

import android.os.SystemClock;
import android.view.KeyEvent;

public abstract class TransportPerformer
{
  static final int AUDIOFOCUS_GAIN = 1;
  static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
  static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
  static final int AUDIOFOCUS_LOSS = -1;
  static final int AUDIOFOCUS_LOSS_TRANSIENT = -2;
  static final int AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK = -3;
  
  private static void onAudioFocusChange(int paramInt)
  {
    int i = 0;
    switch (paramInt)
    {
    }
    for (paramInt = i;; paramInt = 127)
    {
      if (paramInt != 0)
      {
        long l = SystemClock.uptimeMillis();
        new KeyEvent(l, l, 0, 127, 0);
        new KeyEvent(l, l, 1, 127, 0);
      }
      return;
    }
  }
  
  private static int onGetBufferPercentage()
  {
    return 100;
  }
  
  private static int onGetTransportControlFlags()
  {
    return 60;
  }
  
  private static boolean onMediaButtonDown$4765ad2(int paramInt)
  {
    switch (paramInt)
    {
    }
    return true;
  }
  
  private static boolean onMediaButtonUp$4765ad2()
  {
    return true;
  }
  
  public abstract long onGetCurrentPosition();
  
  public abstract long onGetDuration();
  
  public abstract boolean onIsPlaying();
  
  public abstract void onPause();
  
  public abstract void onSeekTo$1349ef();
  
  public abstract void onStart();
  
  public abstract void onStop();
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportPerformer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */