package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import bhr;
import bhr.a;

final class FeedFragment$20
  implements bhr.a
{
  FeedFragment$20(FeedFragment paramFeedFragment) {}
  
  public final void a(View paramView)
  {
    FeedFragment.f(a).a().setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((EditText)FeedFragment.g(a).a()).setText("");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */