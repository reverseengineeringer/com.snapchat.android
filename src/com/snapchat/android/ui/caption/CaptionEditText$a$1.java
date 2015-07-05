package com.snapchat.android.ui.caption;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class CaptionEditText$a$1
  implements Animation.AnimationListener
{
  CaptionEditText$a$1(CaptionEditText.a parama, CaptionEditText paramCaptionEditText, boolean paramBoolean) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (b)
    {
      c.a.setVisibility(0);
      c.a.setAlpha(1.0F);
      c.a.setCursorVisible(true);
    }
    for (;;)
    {
      c.a.invalidate();
      c.a.clearAnimation();
      c.a.f = false;
      c.a.e = false;
      return;
      c.a.setVisibility(4);
      c.a.setAlpha(0.0F);
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    c.a.e = true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */