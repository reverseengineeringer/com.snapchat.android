package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;

final class FriendTextsView$1
  implements Animator.AnimatorListener
{
  FriendTextsView$1(FriendTextsView paramFriendTextsView) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    FriendTextsView.a(a, FriendTextsView.a.a);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    FriendTextsView.a(a, FriendTextsView.a.c);
    FriendTextsView.a(a).setAlpha(1.0F);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FriendTextsView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */