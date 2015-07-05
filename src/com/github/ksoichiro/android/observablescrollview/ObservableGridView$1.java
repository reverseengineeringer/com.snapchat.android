package com.github.ksoichiro.android.observablescrollview;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class ObservableGridView$1
  implements AbsListView.OnScrollListener
{
  ObservableGridView$1(ObservableGridView paramObservableGridView) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (ObservableGridView.a(a) != null) {
      ObservableGridView.a(a).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    ObservableGridView.b(a);
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (ObservableGridView.a(a) != null) {
      ObservableGridView.a(a).onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableGridView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */