package com.snapchat.android.ui.listeners;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.s;

final class SwipeableRecyclerViewItemTouchListener$4
  implements ValueAnimator.AnimatorUpdateListener
{
  SwipeableRecyclerViewItemTouchListener$4(SwipeableRecyclerViewItemTouchListener paramSwipeableRecyclerViewItemTouchListener, Integer paramInteger) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f2 = 1.0F;
    RecyclerView.s locals = SwipeableRecyclerViewItemTouchListener.a(b).a(a.intValue(), false);
    float f1;
    if (locals != null)
    {
      SwipeableRecyclerViewItemTouchListener.a(b, ((Integer)paramValueAnimator.getAnimatedValue()).intValue());
      int i = SwipeableRecyclerViewItemTouchListener.d(b).a(locals);
      float f3 = -SwipeableRecyclerViewItemTouchListener.e(b) / i;
      f1 = f3;
      if (f3 < 0.0F) {
        f1 = 0.0F;
      }
      if (f1 <= 1.0F) {
        break label134;
      }
      f1 = f2;
    }
    label134:
    for (;;)
    {
      SwipeableRecyclerViewItemTouchListener.d(b).a(locals, SwipeableRecyclerViewItemTouchListener.e(b), f1, SwipeableRecyclerViewItemTouchListener.f(b), SwipeableRecyclerViewItemTouchListener.g(b));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */