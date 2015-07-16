package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import akp;
import aph;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import javax.inject.Provider;
import nx;

final class FeedFragment$8
  implements Runnable
{
  FeedFragment$8(FeedFragment paramFeedFragment) {}
  
  public final void run()
  {
    if ((akp)FeedFragment.p(a).get() != null)
    {
      FeedFragment.q(a).a(NetworkAnalytics.PageContext.FEED);
      FeedFragment.r(a).a("feed", "pull_to_refresh");
      FeedFragment.s(a).f();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */