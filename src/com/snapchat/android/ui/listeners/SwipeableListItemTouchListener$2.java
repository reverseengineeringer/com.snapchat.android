package com.snapchat.android.ui.listeners;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

final class SwipeableListItemTouchListener$2
  implements ValueAnimator.AnimatorUpdateListener
{
  SwipeableListItemTouchListener$2(SwipeableListItemTouchListener paramSwipeableListItemTouchListener, View paramView) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    SwipeableListItemTouchListener.a(b, ((Integer)paramValueAnimator.getAnimatedValue()).intValue());
    SwipeableListItemTouchListener.a(b).b(b.g);
    SwipeableListItemTouchListener.a(b).a(a, SwipeableListItemTouchListener.b(b), SwipeableListItemTouchListener.c(b), SwipeableListItemTouchListener.d(b));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */