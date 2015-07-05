package com.emilsjolander.components.stickylistheaders;

import android.os.Build.VERSION;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class StickyListHeadersListView$3
  implements AbsListView.OnScrollListener
{
  StickyListHeadersListView$3(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (StickyListHeadersListView.access$200(this$0) != null) {
      StickyListHeadersListView.access$200(this$0).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    if (Build.VERSION.SDK_INT >= 8) {
      StickyListHeadersListView.access$300(this$0, paramInt1);
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (StickyListHeadersListView.access$200(this$0) != null) {
      StickyListHeadersListView.access$200(this$0).onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */