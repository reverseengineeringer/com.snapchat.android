package com.snapchat.android.fragments.addfriends;

import akr;
import anh;
import anr;
import aob;
import apg;
import aph;
import java.util.HashSet;
import java.util.List;

final class ProfileFragment$1
  implements apg
{
  ProfileFragment$1(ProfileFragment paramProfileFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    anr localanr;
    long l;
    if (ProfileFragment.a(a).contains(Integer.valueOf(i)))
    {
      ProfileFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof anr))
      {
        localanr = (anr)paramanh;
        if (!b) {
          break label108;
        }
        l = a;
        ProfileFragment.b(a);
        if (l > akr.z()) {
          a.a.clear();
        }
      }
    }
    for (;;)
    {
      if ((paramanh instanceof aob)) {
        a.d = false;
      }
      return;
      label108:
      l = a;
      ProfileFragment.b(a);
      if (l > akr.z()) {
        a.a(a.a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */