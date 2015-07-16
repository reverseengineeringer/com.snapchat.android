package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import akr;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import atq;

final class FeedFragment$9
  implements View.OnClickListener
{
  FeedFragment$9(FeedFragment paramFeedFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = a.getActivity();
    FeedFragment.t(a);
    String str = akr.aW();
    try
    {
      paramView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      atq.a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */