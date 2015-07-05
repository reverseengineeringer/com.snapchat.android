package com.github.ksoichiro.android.observablescrollview;

import android.view.MotionEvent;
import android.view.ViewGroup;

final class ObservableListView$2
  implements Runnable
{
  ObservableListView$2(ObservableListView paramObservableListView, ViewGroup paramViewGroup, MotionEvent paramMotionEvent) {}
  
  public final void run()
  {
    a.dispatchTouchEvent(b);
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableListView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */