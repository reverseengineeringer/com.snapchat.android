package com.snapchat.android.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import avh;

final class ColorPickerView$2$1
  implements Animation.AnimationListener
{
  ColorPickerView$2$1(ColorPickerView.2 param2) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = new ScaleAnimation(26.0F, 1.0F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
    paramAnimation.setDuration(140L);
    ColorPickerView.f(a.a).startAnimation(paramAnimation);
    paramAnimation = new TranslateAnimation((int)avh.a(-23.5F, a.a.getContext()), 0.0F, 0.0F, 0.0F);
    paramAnimation.setDuration(140L);
    paramAnimation.setFillAfter(true);
    ColorPickerView.d(a.a).startAnimation(paramAnimation);
    paramAnimation = new ColorPickerView.a(a.a, ColorPickerView.h(a.a).getWidth(), (int)avh.a(12.0F, a.a.getContext()), ColorPickerView.h(a.a));
    paramAnimation.setDuration(140L);
    ColorPickerView.h(a.a).startAnimation(paramAnimation);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ColorPickerView.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */