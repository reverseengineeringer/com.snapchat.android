package com.snapchat.android.fragments.addfriends;

import anh;
import apg;
import aph;
import java.util.HashSet;

final class AddFriendsFragment$1
  implements apg
{
  AddFriendsFragment$1(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (AddFriendsFragment.a(a).contains(Integer.valueOf(i)))
    {
      AddFriendsFragment.a(a).remove(Integer.valueOf(i));
      a.q();
      if (a.C.isEmpty())
      {
        a.i();
        a.C();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */