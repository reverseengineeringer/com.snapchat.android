package com.snapchat.android.fragments.feed;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import bgr;
import bgr.a;

final class FeedFragment$1
  implements bgr.a
{
  FeedFragment$1(FeedFragment paramFeedFragment) {}
  
  public final void a(View paramView)
  {
    ((TextView)FeedFragment.b(a).a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView.setVisibility(8);
        FeedFragment.a(a).setVisibility(0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */