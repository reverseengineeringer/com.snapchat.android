package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnClickListener;
import bev;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.squareup.otto.Bus;

final class AddFriendsBySnapcodeSetupFragment$2
  implements View.OnClickListener
{
  AddFriendsBySnapcodeSetupFragment$2(AddFriendsBySnapcodeSetupFragment paramAddFriendsBySnapcodeSetupFragment) {}
  
  public final void onClick(View paramView)
  {
    AddFriendsBySnapcodeSetupFragment.a();
    AddFriendsBySnapcodeSetupFragment.a(a).a(new bev(LeftSwipeContentFragment.ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT));
    ProfileEventAnalytics.e();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */