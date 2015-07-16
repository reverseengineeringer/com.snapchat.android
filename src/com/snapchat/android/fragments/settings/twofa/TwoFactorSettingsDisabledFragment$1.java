package com.snapchat.android.fragments.settings.twofa;

import anh;
import anz;
import apg;
import aph;
import java.util.Set;

final class TwoFactorSettingsDisabledFragment$1
  implements apg
{
  TwoFactorSettingsDisabledFragment$1(TwoFactorSettingsDisabledFragment paramTwoFactorSettingsDisabledFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (TwoFactorSettingsDisabledFragment.a(a).contains(Integer.valueOf(i)))
    {
      TwoFactorSettingsDisabledFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof anz)) {
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