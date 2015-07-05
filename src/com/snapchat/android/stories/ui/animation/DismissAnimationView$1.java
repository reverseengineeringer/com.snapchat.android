package com.snapchat.android.stories.ui.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class DismissAnimationView$1
  implements Animator.AnimatorListener
{
  DismissAnimationView$1(DismissAnimationView paramDismissAnimationView) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a.setVisibility(8);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.setVisibility(8);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.animation.DismissAnimationView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */