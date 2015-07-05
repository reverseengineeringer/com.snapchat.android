package com.snapchat.android.fragments.feed;

import ajx;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.TextView;
import bgr;

final class FeedFragment$15
  implements View.OnLongClickListener
{
  FeedFragment$15(FeedFragment paramFeedFragment) {}
  
  public final boolean onLongClick(View paramView)
  {
    paramView.setVisibility(8);
    ((TextView)FeedFragment.b(a).a()).setText(ajx.d() + " | " + ajx.c());
    FeedFragment.b(a).a(0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */