package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;

final class FriendTextsView$2
  implements Animator.AnimatorListener
{
  FriendTextsView$2(FriendTextsView paramFriendTextsView) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    FriendTextsView.a(a, FriendTextsView.a.c);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    FriendTextsView.a(a).setAlpha(0.0F);
    FriendTextsView.a(a, FriendTextsView.a.a);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FriendTextsView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */