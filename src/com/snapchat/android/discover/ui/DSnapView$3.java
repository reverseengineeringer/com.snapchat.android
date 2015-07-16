package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.widget.LinearLayout;
import awh;

final class DSnapView$3
  extends awh
{
  DSnapView$3(DSnapView paramDSnapView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = a;
    if (c != null) {
      c.setVisibility(8);
    }
    i = false;
    paramAnimator.d(paramAnimator.getCurrentPanel());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */