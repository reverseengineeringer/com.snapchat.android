package android.support.v4.media;

import android.media.AudioManager;
import android.view.ViewTreeObserver.OnWindowFocusChangeListener;

final class TransportMediatorJellybeanMR2$2
  implements ViewTreeObserver.OnWindowFocusChangeListener
{
  TransportMediatorJellybeanMR2$2(TransportMediatorJellybeanMR2 paramTransportMediatorJellybeanMR2) {}
  
  public final void onWindowFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      TransportMediatorJellybeanMR2 localTransportMediatorJellybeanMR2 = this$0;
      if (!mFocused)
      {
        mFocused = true;
        mAudioManager.registerMediaButtonEventReceiver(mPendingIntent);
        mAudioManager.registerRemoteControlClient(mRemoteControl);
        if (mPlayState == 3) {
          localTransportMediatorJellybeanMR2.takeAudioFocus();
        }
      }
      return;
    }
    this$0.loseFocus();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */