package com.snapchat.android.ui;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class ColorPickerView$1$1
  implements Animation.AnimationListener
{
  ColorPickerView$1$1(ColorPickerView.1 param1) {}
  
  public final void onAnimationEnd(Animation paramAnimation) {}
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    paramAnimation = new AlphaAnimation(0.0F, 1.0F);
    paramAnimation.setDuration(140L);
    paramAnimation.setFillAfter(true);
    a.a.findViewById(2131362839).startAnimation(paramAnimation);
    a.a.findViewById(2131362838).startAnimation(paramAnimation);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ColorPickerView.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */