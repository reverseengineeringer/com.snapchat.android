package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import java.util.List;

final class FeedFragment$4
  implements Runnable
{
  FeedFragment$4(FeedFragment paramFeedFragment) {}
  
  public final void run()
  {
    ma).a = false;
    boolean bool = FeedFragment.n(a).remove(FeedFragment.m(a));
    FeedFragment.n(a).add(FeedFragment.m(a));
    if (bool)
    {
      FeedFragment.o(a).c(FeedFragment.n(a).size() - 1);
      return;
    }
    FeedAdapter localFeedAdapter = FeedFragment.o(a);
    int i = FeedFragment.n(a).size();
    a.a(i - 1);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */