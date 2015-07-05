package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.ImageView;

public final class ProfilePictureView$5
  implements Animator.AnimatorListener
{
  public ProfilePictureView$5(ProfilePictureView paramProfilePictureView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfilePictureView.e(a).setVisibility(4);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    ProfilePictureView.e(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ProfilePictureView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */