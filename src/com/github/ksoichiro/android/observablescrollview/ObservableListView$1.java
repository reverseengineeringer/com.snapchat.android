package com.github.ksoichiro.android.observablescrollview;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class ObservableListView$1
  implements AbsListView.OnScrollListener
{
  ObservableListView$1(ObservableListView paramObservableListView) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (ObservableListView.a(a) != null) {
      ObservableListView.a(a).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    ObservableListView.b(a);
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (ObservableListView.a(a) != null) {
      ObservableListView.a(a).onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableListView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */