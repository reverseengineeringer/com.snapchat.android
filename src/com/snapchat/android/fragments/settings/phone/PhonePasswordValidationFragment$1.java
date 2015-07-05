package com.snapchat.android.fragments.settings.phone;

import amk;
import anc;
import aok;
import aol;
import java.util.Set;

final class PhonePasswordValidationFragment$1
  implements aok
{
  PhonePasswordValidationFragment$1(PhonePasswordValidationFragment paramPhonePasswordValidationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if ((PhonePasswordValidationFragment.a(a).contains(Integer.valueOf(i))) && ((paramamk instanceof anc)))
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