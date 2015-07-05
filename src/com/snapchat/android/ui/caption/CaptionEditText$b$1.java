package com.snapchat.android.ui.caption;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class CaptionEditText$b$1
  implements Animation.AnimationListener
{
  CaptionEditText$b$1(CaptionEditText.b paramb, CaptionEditText paramCaptionEditText, int paramInt1, int paramInt2) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (b)
    {
      e.a.setVisibility(0);
      e.a.setAlpha(1.0F);
      e.a.setCursorVisible(true);
    }
    for (;;)
    {
      e.a.invalidate();
      e.a.a(c, d);
      e.a.clearAnimation();
      e.a.f = false;
      e.a.e = false;
      CaptionEditText.a(e.a);
      return;
      e.a.setVisibility(4);
      e.a.setAlpha(0.0F);
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    e.a.e = true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */