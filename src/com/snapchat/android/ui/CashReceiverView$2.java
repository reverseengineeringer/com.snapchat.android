package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.ViewGroup;

final class CashReceiverView$2
  implements Animator.AnimatorListener
{
  CashReceiverView$2(CashReceiverView paramCashReceiverView, float paramFloat1, float paramFloat2, int paramInt) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    CashReceiverView.d(d);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (CashReceiverView.c(d)) {
      return;
    }
    if (a + b < 0.0F)
    {
      CashReceiverView.a(d, CashReceiverView.a.a);
      return;
    }
    if (a + b + CashReceiverView.b(d).getMeasuredWidth() > d.getMeasuredWidth())
    {
      CashReceiverView.a(d, CashReceiverView.a.b);
      return;
    }
    CashReceiverView.a(d, c);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashReceiverView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */