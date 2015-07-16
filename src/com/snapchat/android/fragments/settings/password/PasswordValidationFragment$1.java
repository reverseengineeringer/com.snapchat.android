package com.snapchat.android.fragments.settings.password;

import anh;
import anx;
import apg;
import aph;
import java.util.Set;

final class PasswordValidationFragment$1
  implements apg
{
  PasswordValidationFragment$1(PasswordValidationFragment paramPasswordValidationFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (PasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
    {
      PasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof anx)) {
        PasswordValidationFragment.a(a, (anx)paramanh);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.PasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */