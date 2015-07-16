package com.snapchat.android.fragments.settings.email;

import anh;
import anp;
import anz;
import apg;
import aph;
import java.util.Set;

final class EmailSettingsFragment$1
  implements apg
{
  EmailSettingsFragment$1(EmailSettingsFragment paramEmailSettingsFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (EmailSettingsFragment.a(a).contains(Integer.valueOf(i)))
    {
      EmailSettingsFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramanh instanceof anz)) {
        break label63;
      }
      EmailSettingsFragment.a(a, b);
    }
    label63:
    while (!(paramanh instanceof anp)) {
      return;
    }
    EmailSettingsFragment.a(a, (anp)paramanh);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailSettingsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */