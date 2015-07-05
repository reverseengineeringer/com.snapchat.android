package com.snapchat.android.fragments;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.ImageView;

final class ScAcceptTermsFragment$4
  implements Animator.AnimatorListener
{
  ScAcceptTermsFragment$4(ScAcceptTermsFragment paramScAcceptTermsFragment, ImageView paramImageView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.setVisibility(4);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */