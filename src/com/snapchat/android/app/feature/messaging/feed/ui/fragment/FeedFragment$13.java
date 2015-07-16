package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import akr;

final class FeedFragment$13
  implements Runnable
{
  FeedFragment$13(FeedFragment paramFeedFragment, int paramInt) {}
  
  public final void run()
  {
    if ((!FeedFragment.v(b)) && (a > 0))
    {
      FeedFragment.a(b, a - 1);
      return;
    }
    FeedFragment.t(b);
    akr.bB();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */