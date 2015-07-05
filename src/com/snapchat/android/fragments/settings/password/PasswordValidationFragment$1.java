package com.snapchat.android.fragments.settings.password;

import amk;
import ana;
import aok;
import aol;
import java.util.Set;

final class PasswordValidationFragment$1
  implements aok
{
  PasswordValidationFragment$1(PasswordValidationFragment paramPasswordValidationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (PasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
    {
      PasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof ana)) {
        PasswordValidationFragment.a(a, (ana)paramamk);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.PasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */