package com.snapchat.android.fragments.addfriends;

import afj;
import ajx;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.view.View;
import com.snapchat.android.util.fragment.SnapchatFragment;

final class FriendsContactsToggleFragment$1
  extends ViewPager.SimpleOnPageChangeListener
{
  FriendsContactsToggleFragment$1(FriendsContactsToggleFragment paramFriendsContactsToggleFragment) {}
  
  public final void onPageSelected(int paramInt)
  {
    int j = 8;
    boolean bool3 = true;
    boolean bool1;
    Object localObject;
    int i;
    if (paramInt == 0)
    {
      bool1 = true;
      localObject = FriendsContactsToggleFragment.a(a);
      if (!bool1) {
        break label135;
      }
      i = 0;
      label29:
      ((View)localObject).setVisibility(i);
      localObject = FriendsContactsToggleFragment.b(a);
      if (!bool1) {
        break label141;
      }
      i = j;
      label51:
      ((View)localObject).setVisibility(i);
      i = 0;
      label59:
      if (i >= FriendsContactsToggleFragment.c(a).getCount()) {
        break label152;
      }
      localObject = FriendsContactsToggleFragment.c(a).getItem(i);
      if ((localObject instanceof SnapchatFragment)) {
        if (i != paramInt) {
          break label146;
        }
      }
    }
    label135:
    label141:
    label146:
    for (boolean bool2 = true;; bool2 = false)
    {
      ((SnapchatFragment)localObject).f(bool2);
      if (bool2) {
        FriendsContactsToggleFragment.a(bool1);
      }
      i += 1;
      break label59;
      bool1 = false;
      break;
      i = 8;
      break label29;
      i = 0;
      break label51;
    }
    label152:
    if (bool1)
    {
      localObject = a;
      bool1 = bool3;
    }
    for (;;)
    {
      FriendsContactsToggleFragment.a((FriendsContactsToggleFragment)localObject, bool1);
      return;
      FriendsContactsToggleFragment localFriendsContactsToggleFragment = a;
      if (ajx.f())
      {
        FriendsContactsToggleFragment.d(a);
        localObject = localFriendsContactsToggleFragment;
        bool1 = bool3;
        if (ajx.Z()) {}
      }
      else
      {
        bool1 = false;
        localObject = localFriendsContactsToggleFragment;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.FriendsContactsToggleFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */