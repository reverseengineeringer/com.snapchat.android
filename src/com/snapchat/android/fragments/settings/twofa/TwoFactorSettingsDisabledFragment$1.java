package com.snapchat.android.fragments.settings.twofa;

import amk;
import anc;
import aok;
import aol;
import java.util.Set;

final class TwoFactorSettingsDisabledFragment$1
  implements aok
{
  TwoFactorSettingsDisabledFragment$1(TwoFactorSettingsDisabledFragment paramTwoFactorSettingsDisabledFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (TwoFactorSettingsDisabledFragment.a(a).contains(Integer.valueOf(i)))
    {
      TwoFactorSettingsDisabledFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof anc)) {
        TwoFactorSettingsDisabledFragment.a(a, b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsDisabledFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */