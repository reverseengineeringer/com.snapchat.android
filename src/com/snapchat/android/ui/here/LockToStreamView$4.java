package com.snapchat.android.ui.here;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Paint;

final class LockToStreamView$4
  implements ValueAnimator.AnimatorUpdateListener
{
  LockToStreamView$4(LockToStreamView paramLockToStreamView) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    int i = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    LockToStreamView.c(a).setAlpha(i);
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.LockToStreamView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */