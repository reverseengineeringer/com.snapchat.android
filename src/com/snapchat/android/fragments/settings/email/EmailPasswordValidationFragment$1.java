package com.snapchat.android.fragments.settings.email;

import anh;
import anp;
import anx;
import apg;
import aph;
import java.util.Set;

final class EmailPasswordValidationFragment$1
  implements apg
{
  EmailPasswordValidationFragment$1(EmailPasswordValidationFragment paramEmailPasswordValidationFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (EmailPasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
    {
      EmailPasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramanh instanceof anx)) {
        break label60;
      }
      EmailPasswordValidationFragment.a(a, (anx)paramanh);
    }
    label60:
    while (!(paramanh instanceof anp)) {
      return;
    }
    EmailPasswordValidationFragment.a(a, (anp)paramanh);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailPasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */