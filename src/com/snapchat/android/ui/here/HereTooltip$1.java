package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.ViewPropertyAnimator;

final class HereTooltip$1
  implements Animator.AnimatorListener
{
  HereTooltip$1(HereTooltip paramHereTooltip, ViewPropertyAnimator paramViewPropertyAnimator) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.setListener(null);
    a.alpha(0.0F);
    a.setDuration(1000L);
    a.setStartDelay(3000L);
    a.start();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HereTooltip.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */