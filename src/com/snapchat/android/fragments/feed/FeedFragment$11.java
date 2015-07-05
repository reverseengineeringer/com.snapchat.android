package com.snapchat.android.fragments.feed;

import android.view.View;
import android.widget.ListView;

final class FeedFragment$11
  implements Runnable
{
  FeedFragment$11(FeedFragment paramFeedFragment) {}
  
  public final void run()
  {
    FeedFragment.d(a).setSelection(0);
    View localView = FeedFragment.d(a).getChildAt(0);
    if (localView != null) {
      localView.requestFocus();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */