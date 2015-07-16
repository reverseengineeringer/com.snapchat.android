package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import akr;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.TextView;
import bhr;

final class FeedFragment$16
  implements View.OnLongClickListener
{
  FeedFragment$16(FeedFragment paramFeedFragment) {}
  
  public final boolean onLongClick(View paramView)
  {
    paramView.setVisibility(8);
    ((TextView)FeedFragment.b(a).a()).setText(akr.d() + " | " + akr.c());
    FeedFragment.b(a).a(0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */