package com.snapchat.android.fragments.settings.email;

import amk;
import ams;
import anc;
import aok;
import aol;
import java.util.Set;

final class EmailSettingsFragment$1
  implements aok
{
  EmailSettingsFragment$1(EmailSettingsFragment paramEmailSettingsFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (EmailSettingsFragment.a(a).contains(Integer.valueOf(i)))
    {
      EmailSettingsFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramamk instanceof anc)) {
        break label63;
      }
      EmailSettingsFragment.a(a, b);
    }
    label63:
    while (!(paramamk instanceof ams)) {
      return;
    }
    EmailSettingsFragment.a(a, (ams)paramamk);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailSettingsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */