package com.snapchat.android.fragments.addfriends;

import akp;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.squareup.otto.Bus;

final class AddFriendsFragment$7
  implements View.OnClickListener
{
  AddFriendsFragment$7(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    if (akp.g() != null)
    {
      if (a.q_()) {
        a.m();
      }
    }
    else {
      return;
    }
    paramView = new Bundle();
    paramView.putBoolean("contextIsAdressBook", true);
    bbo.a().a(new bev(LeftSwipeContentFragment.ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT, paramView));
    new EasyMetric("ADD_FRIENDS_FRAGMENT_SEARCH").e();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */