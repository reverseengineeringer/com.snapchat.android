package com.snapchat.android.fragments.feed;

import agd;
import ajv;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.api.chat.LoadFeedPageTask;

final class FeedFragment$7
  implements View.OnClickListener
{
  FeedFragment$7(FeedFragment paramFeedFragment) {}
  
  public final void onClick(View paramView)
  {
    if (FeedFragment.k(a) == null) {
      FeedFragment.a(a, ajv.g());
    }
    if ((FeedFragment.k(a) != null) && (!FeedFragment.f(a).isEmpty())) {
      LoadFeedPageTask.a(a, FeedFragment.k(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */