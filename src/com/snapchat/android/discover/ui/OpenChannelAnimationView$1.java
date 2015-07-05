package com.snapchat.android.discover.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

public final class OpenChannelAnimationView$1
  implements ValueAnimator.AnimatorUpdateListener
{
  public OpenChannelAnimationView$1(OpenChannelAnimationView paramOpenChannelAnimationView) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    a.setBackgroundColor(((Integer)paramValueAnimator.getAnimatedValue()).intValue());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.OpenChannelAnimationView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */