package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;

final class FeedFragment$12
  implements View.OnClickListener
{
  FeedFragment$12(FeedFragment paramFeedFragment) {}
  
  public final void onClick(View paramView)
  {
    FeedFragment.c(a).a(CameraEventAnalytics.CameraContext.CAMERA_BUTTON);
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */