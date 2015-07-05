package com.snapchat.android.ui.caption;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;

public final class CaptionEditText$b
  extends TranslateAnimation
{
  CaptionEditText$b(final CaptionEditText paramCaptionEditText, int paramInt1, final int paramInt2, int paramInt3, final int paramInt4)
  {
    super(0, paramInt1, 0, paramInt2, 0, paramInt3, 0, paramInt4);
    setDuration(410L);
    setFillAfter(true);
    setInterpolator(new DecelerateInterpolator());
    paramCaptionEditText.a(0, 0);
    setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (b)
        {
          paramCaptionEditText.setVisibility(0);
          paramCaptionEditText.setAlpha(1.0F);
          paramCaptionEditText.setCursorVisible(true);
        }
        for (;;)
        {
          paramCaptionEditText.invalidate();
          paramCaptionEditText.a(paramInt2, paramInt4);
          paramCaptionEditText.clearAnimation();
          paramCaptionEditTextf = false;
          paramCaptionEditTexte = false;
          CaptionEditText.a(paramCaptionEditText);
          return;
          paramCaptionEditText.setVisibility(4);
          paramCaptionEditText.setAlpha(0.0F);
        }
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation)
      {
        paramCaptionEditTexte = true;
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */