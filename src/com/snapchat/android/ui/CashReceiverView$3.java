package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

public final class CashReceiverView$3
  implements ValueAnimator.AnimatorUpdateListener
{
  public CashReceiverView$3(CashReceiverView paramCashReceiverView, View paramView, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f1 = ((Float)paramValueAnimator.getAnimatedValue()).floatValue() * 5000.0F;
    a.setTranslationX((float)(Math.sin(b * f1 + c) * d + e));
    a.setTranslationY(f + g * f1);
    a.setRotation((float)(-Math.sin(f1 * b + c) * h));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashReceiverView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */