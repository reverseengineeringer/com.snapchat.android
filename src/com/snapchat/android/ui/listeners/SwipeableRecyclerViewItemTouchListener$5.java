package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.support.v7.widget.RecyclerView;

final class SwipeableRecyclerViewItemTouchListener$5
  implements Animator.AnimatorListener
{
  SwipeableRecyclerViewItemTouchListener$5(SwipeableRecyclerViewItemTouchListener paramSwipeableRecyclerViewItemTouchListener, Integer paramInteger, boolean paramBoolean) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if ((SwipeableRecyclerViewItemTouchListener.d(c) != null) && (a.intValue() != -1)) {
      SwipeableRecyclerViewItemTouchListener.a(c).a(a.intValue(), false);
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */