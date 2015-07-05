package com.snapchat.android.ui;

import android.animation.Animator;
import android.view.View;
import java.util.List;

final class CashSwiperView$10
  extends CashSwiperView.a
{
  CashSwiperView$10(CashSwiperView paramCashSwiperView, View paramView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    CashSwiperView.h(b).remove(a);
    CashSwiperView.a(b, a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */