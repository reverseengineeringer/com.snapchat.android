package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.addlive.view.ALVideoTextureView;

final class HoldToStreamView$4
  extends AnimatorListenerAdapter
{
  HoldToStreamView$4(HoldToStreamView paramHoldToStreamView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (a.h.getVisibility() != 4) {
      HoldToStreamView.g(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HoldToStreamView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */