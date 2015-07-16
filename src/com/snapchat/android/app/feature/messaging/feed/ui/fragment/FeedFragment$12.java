package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import bhr;
import bhr.a;

final class FeedFragment$12
  implements bhr.a
{
  FeedFragment$12(FeedFragment paramFeedFragment) {}
  
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
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */