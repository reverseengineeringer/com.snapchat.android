package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;
import android.view.ViewGroup;

public final class CashReceiverView$4
  implements Animator.AnimatorListener
{
  public CashReceiverView$4(CashReceiverView paramCashReceiverView, View paramView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = (ViewGroup)a.getParent();
    if (paramAnimator != null) {
      paramAnimator.removeView(a);
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashReceiverView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */