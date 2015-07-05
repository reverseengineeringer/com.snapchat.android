package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.ValueAnimator;

final class CashSwiperView$3
  implements Runnable
{
  CashSwiperView$3(CashSwiperView paramCashSwiperView) {}
  
  public final void run()
  {
    if (!CashSwiperView.p(a))
    {
      CashSwiperView.q(a);
      CashSwiperView.n(a).start();
      CashSwiperView.n(a).addListener(new CashSwiperView.a()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (!CashSwiperView.p(a))
          {
            CashSwiperView.o(a);
            CashSwiperView.m(a);
            CashSwiperView.n(a).start();
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */