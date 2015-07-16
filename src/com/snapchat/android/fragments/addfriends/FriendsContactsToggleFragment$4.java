package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.squareup.otto.Bus;

final class FriendsContactsToggleFragment$4
  implements View.OnClickListener
{
  FriendsContactsToggleFragment$4(FriendsContactsToggleFragment paramFriendsContactsToggleFragment) {}
  
  public final void onClick(View paramView)
  {
    switch (FriendsContactsToggleFragment.e(a).getCurrentItem())
    {
    default: 
      return;
    case 0: 
      bbo.a().a(new bev(LeftSwipeContentFragment.MY_FRIENDS_SEARCH_VIEW_FRAGMENT));
      return;
    }
    paramView = new Bundle();
    paramView.putBoolean("contextIsAdressBook", false);
    bbo.a().a(new bev(LeftSwipeContentFragment.ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT, paramView));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.FriendsContactsToggleFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */