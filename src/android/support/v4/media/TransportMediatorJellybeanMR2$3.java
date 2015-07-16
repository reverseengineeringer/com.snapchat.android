package android.support.v4.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

final class TransportMediatorJellybeanMR2$3
  extends BroadcastReceiver
{
  TransportMediatorJellybeanMR2$3(TransportMediatorJellybeanMR2 paramTransportMediatorJellybeanMR2) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    try
    {
      paramContext = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
      this$0.mTransportCallback.handleKey(paramContext);
      return;
    }
    catch (ClassCastException paramContext) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */