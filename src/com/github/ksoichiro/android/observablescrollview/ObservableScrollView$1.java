package com.github.ksoichiro.android.observablescrollview;

import android.view.MotionEvent;
import android.view.ViewGroup;

final class ObservableScrollView$1
  implements Runnable
{
  ObservableScrollView$1(ObservableScrollView paramObservableScrollView, ViewGroup paramViewGroup, MotionEvent paramMotionEvent) {}
  
  public final void run()
  {
    a.dispatchTouchEvent(b);
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableScrollView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */