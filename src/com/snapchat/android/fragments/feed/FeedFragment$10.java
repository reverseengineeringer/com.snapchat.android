package com.snapchat.android.fragments.feed;

import ajx;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import asr;

final class FeedFragment$10
  implements View.OnClickListener
{
  FeedFragment$10(FeedFragment paramFeedFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = a.getActivity();
    FeedFragment.w(a);
    String str = ajx.aZ();
    try
    {
      paramView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      asr.a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */