package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.ViewPropertyAnimator;

final class CashTooltip$1
  implements Animator.AnimatorListener
{
  CashTooltip$1(CashTooltip paramCashTooltip, ViewPropertyAnimator paramViewPropertyAnimator) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.setListener(null);
    a.alpha(0.0F).setDuration(1000L).setStartDelay(3000L).start();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CashTooltip.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */