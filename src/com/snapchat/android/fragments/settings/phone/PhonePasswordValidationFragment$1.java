package com.snapchat.android.fragments.settings.phone;

import anh;
import anz;
import apg;
import aph;
import java.util.Set;

final class PhonePasswordValidationFragment$1
  implements apg
{
  PhonePasswordValidationFragment$1(PhonePasswordValidationFragment paramPhonePasswordValidationFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if ((PhonePasswordValidationFragment.a(a).contains(Integer.valueOf(i))) && ((paramanh instanceof anz)))
    {
      PhonePasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      PhonePasswordValidationFragment.a(a, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.phone.PhonePasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */