package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;

public final class ProfilePictureView$4
  implements Animator.AnimatorListener
{
  public ProfilePictureView$4(ProfilePictureView paramProfilePictureView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfilePictureView.c(a).setScaleX(1.0F);
    ProfilePictureView.c(a).setScaleY(1.0F);
    ProfilePictureView.c(a).setAlpha(0.0F);
    ProfilePictureView.d(a).p();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ProfilePictureView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */