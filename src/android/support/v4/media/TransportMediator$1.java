package android.support.v4.media;

import android.os.SystemClock;
import android.view.KeyEvent;

final class TransportMediator$1
  implements TransportMediatorCallback
{
  TransportMediator$1(TransportMediator paramTransportMediator) {}
  
  public final long getPlaybackPosition()
  {
    return this$0.mCallbacks.onGetCurrentPosition();
  }
  
  public final void handleAudioFocusChange(int paramInt)
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
  
  public final void handleKey(KeyEvent paramKeyEvent)
  {
    paramKeyEvent.dispatch(this$0.mKeyEventCallback);
  }
  
  public final void playbackPositionUpdate$1349ef() {}
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediator.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */