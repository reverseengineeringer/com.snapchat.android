package com.snapchat.android.fragments.addfriends;

import ajx;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;

final class FriendsContactsToggleFragment$3
  implements View.OnClickListener
{
  FriendsContactsToggleFragment$3(FriendsContactsToggleFragment paramFriendsContactsToggleFragment) {}
  
  public final void onClick(View paramView)
  {
    boolean bool = true;
    FriendsContactsToggleFragment.e(a).setCurrentItem(1);
    paramView = a;
    if (ajx.f())
    {
      FriendsContactsToggleFragment.d(a);
      if (!ajx.Z()) {}
    }
    for (;;)
    {
      FriendsContactsToggleFragment.a(paramView, bool);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.FriendsContactsToggleFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */