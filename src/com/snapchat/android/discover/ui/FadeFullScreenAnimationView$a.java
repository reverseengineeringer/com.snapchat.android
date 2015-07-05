package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class FadeFullScreenAnimationView$a
  implements Animator.AnimatorListener
{
  private FadeFullScreenAnimationView$a(FadeFullScreenAnimationView paramFadeFullScreenAnimationView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (FadeFullScreenAnimationView.a(a) != null) {
      FadeFullScreenAnimationView.a(a).a();
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.FadeFullScreenAnimationView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */