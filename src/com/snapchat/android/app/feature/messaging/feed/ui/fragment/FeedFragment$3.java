package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.j;
import awf;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener;
import vm;

final class FeedFragment$3
  extends RecyclerView.j
{
  private int d;
  
  FeedFragment$3(FeedFragment paramFeedFragment, RecyclerView.j paramj, SwipeableRecyclerViewItemTouchListener paramSwipeableRecyclerViewItemTouchListener) {}
  
  public final void a(RecyclerView paramRecyclerView, int paramInt)
  {
    a.a(paramRecyclerView, paramInt);
    if (paramInt == 0) {
      b.a(true);
    }
    for (;;)
    {
      d = paramInt;
      return;
      if (d == 0)
      {
        b.a(false);
        FeedFragment.d(c).c();
      }
      awf.a(c.getActivity(), FeedFragment.k(c));
    }
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    a.a(paramRecyclerView, paramInt1, paramInt2);
    if (!FeedFragment.l(c).c())
    {
      paramInt2 = FeedFragment.i(c).l();
      paramRecyclerView = FeedFragment.i(c);
      if (q == null) {
        break label95;
      }
      paramRecyclerView = q.getAdapter();
      if (paramRecyclerView == null) {
        break label100;
      }
    }
    label95:
    label100:
    for (paramInt1 = paramRecyclerView.a();; paramInt1 = 0)
    {
      if (paramInt2 + FeedFragment.i(c).h() >= paramInt1 - 5) {
        FeedFragment.l(c).b();
      }
      return;
      paramRecyclerView = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */