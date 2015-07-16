package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.squareup.otto.Bus;
import kf;

final class AddFriendsMenuFragment$4
  implements View.OnClickListener
{
  AddFriendsMenuFragment$4(AddFriendsMenuFragment paramAddFriendsMenuFragment) {}
  
  public final void onClick(View paramView)
  {
    bbo.a().a(new bev(LeftSwipeContentFragment.ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT));
    ProfileEventAnalytics.d();
    AddFriendsMenuFragment.a(a, AnalyticsEvents.AnalyticsContext.SNAPCODE_PAGE);
    a.a(kf.OTHER);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */