package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;

public final class ProfilePictureView$3
  implements Animator.AnimatorListener
{
  public ProfilePictureView$3(ProfilePictureView paramProfilePictureView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfilePictureView.b(a).setScaleX(1.0F);
    ProfilePictureView.b(a).setScaleY(1.0F);
    ProfilePictureView.b(a).setAlpha(0.0F);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ProfilePictureView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */