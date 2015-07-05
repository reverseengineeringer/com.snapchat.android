package com.snapchat.android.fragments.feed;

import ajv;
import aol;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import ng;

final class FeedFragment$4
  implements Runnable
{
  FeedFragment$4(FeedFragment paramFeedFragment) {}
  
  public final void run()
  {
    if (FeedFragment.k(a) == null) {
      FeedFragment.a(a, ajv.g());
    }
    if (FeedFragment.k(a) != null)
    {
      FeedFragment.n(a).a(NetworkAnalytics.PageContext.FEED);
      FeedFragment.o(a).a("feed", "pull_to_refresh");
      FeedFragment.p(a).f();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */