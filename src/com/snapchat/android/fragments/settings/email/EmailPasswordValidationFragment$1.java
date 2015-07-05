package com.snapchat.android.fragments.settings.email;

import amk;
import ams;
import ana;
import aok;
import aol;
import java.util.Set;

final class EmailPasswordValidationFragment$1
  implements aok
{
  EmailPasswordValidationFragment$1(EmailPasswordValidationFragment paramEmailPasswordValidationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (EmailPasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
    {
      EmailPasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramamk instanceof ana)) {
        break label60;
      }
      EmailPasswordValidationFragment.a(a, (ana)paramamk);
    }
    label60:
    while (!(paramamk instanceof ams)) {
      return;
    }
    EmailPasswordValidationFragment.a(a, (ams)paramamk);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailPasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */