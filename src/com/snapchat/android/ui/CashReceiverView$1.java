package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.ViewGroup;

final class CashReceiverView$1
  implements ValueAnimator.AnimatorUpdateListener
{
  CashReceiverView$1(CashReceiverView paramCashReceiverView, float paramFloat1, float paramFloat2, float paramFloat3) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f1 = ((Float)CashReceiverView.a(d).getAnimatedValue()).floatValue();
    CashReceiverView.b(d).setTranslationY(a * f1 * (f1 - 1.0F));
    float f2 = b;
    f2 = f1 * c + f2;
    if (f2 < 0.0F) {
      f1 = -f2;
    }
    for (;;)
    {
      CashReceiverView.b(d).setTranslationX(f1);
      return;
      f1 = f2;
      if (CashReceiverView.b(d).getMeasuredWidth() + f2 > d.getMeasuredWidth()) {
        f1 = f2 - 2.0F * (CashReceiverView.b(d).getMeasuredWidth() + f2 - d.getMeasuredWidth());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashReceiverView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */