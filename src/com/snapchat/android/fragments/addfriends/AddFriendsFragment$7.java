package com.snapchat.android.fragments.addfriends;

import ajv;
import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdw;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.squareup.otto.Bus;

final class AddFriendsFragment$7
  implements View.OnClickListener
{
  AddFriendsFragment$7(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    if (ajv.g() != null)
    {
      if (a.x()) {
        a.m();
      }
    }
    else {
      return;
    }
    ban.a().a(new bdw(LeftSwipeContentFragment.ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT));
    new EasyMetric("ADD_FRIENDS_FRAGMENT_SEARCH").d();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */