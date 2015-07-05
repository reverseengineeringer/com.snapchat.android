package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;

public final class ProfilePictureView$2
  implements Animator.AnimatorListener
{
  public ProfilePictureView$2(ProfilePictureView paramProfilePictureView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfilePictureView.a(a).setScaleX(1.0F);
    ProfilePictureView.a(a).setScaleY(1.0F);
    ProfilePictureView.a(a).setAlpha(0.0F);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ProfilePictureView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */