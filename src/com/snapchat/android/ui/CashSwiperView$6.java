package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.media.MediaPlayer;
import aux;

final class CashSwiperView$6
  implements ValueAnimator.AnimatorUpdateListener
{
  CashSwiperView$6(CashSwiperView paramCashSwiperView) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = aux.a((float)Math.log(((Float)paramValueAnimator.getAnimatedValue()).floatValue()));
    if (CashSwiperView.b(a) != null) {
      CashSwiperView.b(a).setVolume(f, f);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */