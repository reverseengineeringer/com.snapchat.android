package com.github.ksoichiro.android.observablescrollview;

import android.view.MotionEvent;
import android.view.ViewGroup;

final class ObservableRecyclerView$1
  implements Runnable
{
  ObservableRecyclerView$1(ObservableRecyclerView paramObservableRecyclerView, ViewGroup paramViewGroup, MotionEvent paramMotionEvent) {}
  
  public final void run()
  {
    a.dispatchTouchEvent(b);
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */