package com.snapchat.android.fragments.signup;

import anh;
import aoa;
import apg;
import aph;
import java.util.Set;

final class PickUsernameFragment$1
  implements apg
{
  PickUsernameFragment$1(PickUsernameFragment paramPickUsernameFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (PickUsernameFragment.a(a).contains(Integer.valueOf(i)))
    {
      PickUsernameFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof aoa)) {
        PickUsernameFragment.a(a, (aoa)paramanh);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */