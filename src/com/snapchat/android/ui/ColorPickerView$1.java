package com.snapchat.android.ui;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class ColorPickerView$1
  implements Runnable
{
  ColorPickerView$1(ColorPickerView paramColorPickerView) {}
  
  public final void run()
  {
    if ((!ColorPickerView.a(a)) && (ColorPickerView.b(a)))
    {
      ColorPickerView.d(a).startAnimation(ColorPickerView.c(a));
      ColorPickerView.f(a).startAnimation(ColorPickerView.e(a));
      ColorPickerView.g(a).setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation)
        {
          paramAnonymousAnimation = new AlphaAnimation(0.0F, 1.0F);
          paramAnonymousAnimation.setDuration(140L);
          paramAnonymousAnimation.setFillAfter(true);
          a.findViewById(2131362832).startAnimation(paramAnonymousAnimation);
          a.findViewById(2131362831).startAnimation(paramAnonymousAnimation);
        }
      });
      ColorPickerView.h(a).startAnimation(ColorPickerView.g(a));
      ColorPickerView.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ColorPickerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */