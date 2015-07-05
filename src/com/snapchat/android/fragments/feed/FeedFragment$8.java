package com.snapchat.android.fragments.feed;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import aqk;
import avh;
import bam;
import com.squareup.otto.Bus;

final class FeedFragment$8
  implements AbsListView.OnScrollListener
{
  private int c;
  
  FeedFragment$8(FeedFragment paramFeedFragment, AbsListView.OnScrollListener paramOnScrollListener) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    a.onScrollStateChanged(paramAbsListView, paramInt);
    if (paramInt == 0) {
      FeedFragment.s(b).a(true);
    }
    for (;;)
    {
      c = paramInt;
      FeedFragment.i(b);
      return;
      if (c == 0)
      {
        FeedFragment.s(b).a(false);
        FeedFragment.t(b).a(new bam(false));
      }
      avh.a(b.getActivity(), FeedFragment.u(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */