package com.snapchat.android.fragments.feed;

import android.os.Build.VERSION;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ListView;

final class FeedFragment$19
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  FeedFragment$19(FeedFragment paramFeedFragment) {}
  
  public final void onGlobalLayout()
  {
    ViewTreeObserver localViewTreeObserver = FeedFragment.d(a).getViewTreeObserver();
    if (localViewTreeObserver == null) {
      throw new NullPointerException();
    }
    if (Build.VERSION.SDK_INT >= 16) {
      localViewTreeObserver.removeOnGlobalLayoutListener(this);
    }
    for (;;)
    {
      FeedFragment.i(a);
      return;
      localViewTreeObserver.removeGlobalOnLayoutListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */