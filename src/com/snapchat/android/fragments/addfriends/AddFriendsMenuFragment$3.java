package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdw;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.squareup.otto.Bus;

final class AddFriendsMenuFragment$3
  implements View.OnClickListener
{
  AddFriendsMenuFragment$3(AddFriendsMenuFragment paramAddFriendsMenuFragment) {}
  
  public final void onClick(View paramView)
  {
    ban.a().a(new bdw(LeftSwipeContentFragment.ADDRESS_BOOK_FRAGMENT));
    ProfileEventAnalytics.c();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */