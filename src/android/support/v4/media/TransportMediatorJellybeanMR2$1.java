package android.support.v4.media;

import android.app.PendingIntent;
import android.content.Context;
import android.media.RemoteControlClient;
import android.view.ViewTreeObserver.OnWindowAttachListener;

final class TransportMediatorJellybeanMR2$1
  implements ViewTreeObserver.OnWindowAttachListener
{
  TransportMediatorJellybeanMR2$1(TransportMediatorJellybeanMR2 paramTransportMediatorJellybeanMR2) {}
  
  public final void onWindowAttached()
  {
    TransportMediatorJellybeanMR2 localTransportMediatorJellybeanMR2 = this$0;
    mContext.registerReceiver(mMediaButtonReceiver, mReceiverFilter);
    mPendingIntent = PendingIntent.getBroadcast(mContext, 0, mIntent, 268435456);
    mRemoteControl = new RemoteControlClient(mPendingIntent);
    mRemoteControl.setOnGetPlaybackPositionListener(localTransportMediatorJellybeanMR2);
    mRemoteControl.setPlaybackPositionUpdateListener(localTransportMediatorJellybeanMR2);
  }
  
  public final void onWindowDetached()
  {
    this$0.windowDetached();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */