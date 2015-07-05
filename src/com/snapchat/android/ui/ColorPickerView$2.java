package com.snapchat.android.ui;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import avh;

final class ColorPickerView$2
  implements View.OnTouchListener
{
  ColorPickerView$2(ColorPickerView paramColorPickerView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return true;
    case 0: 
      ColorPickerView.a(a, paramMotionEvent);
      ColorPickerView.b(a, true);
      ColorPickerView.j(a).postDelayed(ColorPickerView.i(a), 300L);
      return true;
    case 1: 
      ColorPickerView.b(a, false);
      ColorPickerView.j(a).removeCallbacks(ColorPickerView.i(a));
      paramView = new AlphaAnimation(1.0F, 0.0F);
      paramView.setDuration(200L);
      paramView.setFillAfter(true);
      paramView.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          paramAnonymousAnimation = new ScaleAnimation(26.0F, 1.0F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
          paramAnonymousAnimation.setDuration(140L);
          ColorPickerView.f(a).startAnimation(paramAnonymousAnimation);
          paramAnonymousAnimation = new TranslateAnimation((int)avh.a(-23.5F, a.getContext()), 0.0F, 0.0F, 0.0F);
          paramAnonymousAnimation.setDuration(140L);
          paramAnonymousAnimation.setFillAfter(true);
          ColorPickerView.d(a).startAnimation(paramAnonymousAnimation);
          paramAnonymousAnimation = new ColorPickerView.a(a, ColorPickerView.h(a).getWidth(), (int)avh.a(12.0F, a.getContext()), ColorPickerView.h(a));
          paramAnonymousAnimation.setDuration(140L);
          ColorPickerView.h(a).startAnimation(paramAnonymousAnimation);
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      if (ColorPickerView.a(a))
      {
        a.findViewById(2131362839).startAnimation(paramView);
        a.findViewById(2131362838).startAnimation(paramView);
      }
      ColorPickerView.a(a, false);
      return true;
    case 2: 
      ColorPickerView.a(a, paramMotionEvent);
      return true;
    }
    ColorPickerView.b(a, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ColorPickerView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */