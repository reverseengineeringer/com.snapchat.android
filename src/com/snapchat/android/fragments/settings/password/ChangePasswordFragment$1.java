package com.snapchat.android.fragments.settings.password;

import anh;
import anq;
import anw;
import apg;
import aph;
import java.util.Set;

final class ChangePasswordFragment$1
  implements apg
{
  ChangePasswordFragment$1(ChangePasswordFragment paramChangePasswordFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (ChangePasswordFragment.a(a).contains(Integer.valueOf(i)))
    {
      ChangePasswordFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramanh instanceof anw)) {
        break label60;
      }
      a.a((anw)paramanh);
    }
    label60:
    while (!(paramanh instanceof anq)) {
      return;
    }
    ChangePasswordFragment.a(a, (anq)paramanh);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.ChangePasswordFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */