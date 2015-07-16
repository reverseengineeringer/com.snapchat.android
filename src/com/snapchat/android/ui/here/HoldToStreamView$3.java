package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import bbq;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;

final class HoldToStreamView$3
  extends AnimatorListenerAdapter
{
  HoldToStreamView$3(HoldToStreamView paramHoldToStreamView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.postDelayed(new Runnable()
    {
      public final void run()
      {
        HoldToStreamView.n(a).a(new bbq(CameraDisplayState.SHOW, HoldToStreamView.l(a)));
        HoldToStreamView.o(a);
      }
    }, 1000L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HoldToStreamView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */