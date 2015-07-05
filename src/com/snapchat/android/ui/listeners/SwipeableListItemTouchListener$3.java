package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;

final class SwipeableListItemTouchListener$3
  implements Animator.AnimatorListener
{
  SwipeableListItemTouchListener$3(SwipeableListItemTouchListener paramSwipeableListItemTouchListener, View paramView, boolean paramBoolean) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    int i = c.a(a);
    if ((SwipeableListItemTouchListener.a(c) != null) && (i != -1)) {
      SwipeableListItemTouchListener.a(c).a(a, i, b);
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */