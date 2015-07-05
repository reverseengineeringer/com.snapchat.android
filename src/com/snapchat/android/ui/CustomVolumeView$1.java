package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class CustomVolumeView$1
  implements Animator.AnimatorListener
{
  CustomVolumeView$1(CustomVolumeView paramCustomVolumeView) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a.setAlpha(1.0F);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.setVisibility(8);
    a.setAlpha(1.0F);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CustomVolumeView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */