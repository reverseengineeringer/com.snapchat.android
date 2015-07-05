package com.snapchat.android.fragments.addfriends;

import ajx;
import amk;
import amu;
import ane;
import aok;
import aol;
import java.util.HashSet;
import java.util.List;

final class ProfileFragment$1
  implements aok
{
  ProfileFragment$1(ProfileFragment paramProfileFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    amu localamu;
    long l;
    if (ProfileFragment.a(a).contains(Integer.valueOf(i)))
    {
      ProfileFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof amu))
      {
        localamu = (amu)paramamk;
        if (!b) {
          break label108;
        }
        l = a;
        ProfileFragment.b(a);
        if (l > ajx.z()) {
          ProfileFragment.c(a).clear();
        }
      }
    }
    for (;;)
    {
      if ((paramamk instanceof ane)) {
        a.g = false;
      }
      return;
      label108:
      l = a;
      ProfileFragment.b(a);
      if (l > ajx.z()) {
        ProfileFragment.a(a, ProfileFragment.c(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */