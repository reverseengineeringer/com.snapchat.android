package com.snapchat.android.ui;

import android.animation.Animator;
import android.media.MediaPlayer;

final class CashSwiperView$4
  extends CashSwiperView.a
{
  CashSwiperView$4(CashSwiperView paramCashSwiperView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if ((CashSwiperView.b(a) != null) && (CashSwiperView.p(a)))
    {
      CashSwiperView.b(a).stop();
      CashSwiperView.b(a).release();
      CashSwiperView.r(a);
    }
    CashSwiperView.s(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */