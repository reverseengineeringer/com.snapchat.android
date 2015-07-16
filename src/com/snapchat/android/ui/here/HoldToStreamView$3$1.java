package com.snapchat.android.ui.here;

import bbq;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;

final class HoldToStreamView$3$1
  implements Runnable
{
  HoldToStreamView$3$1(HoldToStreamView.3 param3) {}
  
  public final void run()
  {
    HoldToStreamView.n(a.a).a(new bbq(CameraDisplayState.SHOW, HoldToStreamView.l(a.a)));
    HoldToStreamView.o(a.a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HoldToStreamView.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */