package android.support.v4.media;

import android.view.KeyEvent;
import android.view.KeyEvent.Callback;

final class TransportMediator$2
  implements KeyEvent.Callback
{
  TransportMediator$2(TransportMediator paramTransportMediator) {}
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return TransportMediator.isMediaKey(paramInt);
  }
  
  public final boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public final boolean onKeyMultiple(int paramInt1, int paramInt2, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public final boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return TransportMediator.isMediaKey(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediator.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */