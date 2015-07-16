package com.snapchat.android.fragments.settings.twofa;

import anh;
import anz;
import apg;
import aph;
import java.util.Set;

final class ForgetDeviceFragment$1
  implements apg
{
  ForgetDeviceFragment$1(ForgetDeviceFragment paramForgetDeviceFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (ForgetDeviceFragment.a(a).contains(Integer.valueOf(i)))
    {
      ForgetDeviceFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof anz)) {
        ForgetDeviceFragment.a(a, b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.ForgetDeviceFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */