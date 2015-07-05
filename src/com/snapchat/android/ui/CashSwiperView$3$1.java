package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.ValueAnimator;

final class CashSwiperView$3$1
  extends CashSwiperView.a
{
  CashSwiperView$3$1(CashSwiperView.3 param3) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!CashSwiperView.p(a.a))
    {
      CashSwiperView.o(a.a);
      CashSwiperView.m(a.a);
      CashSwiperView.n(a.a).start();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */