package com.snapchat.android.fragments.settings.twofa;

import anh;
import anz;
import apg;
import aph;
import java.util.Set;

final class TwoFactorSettingsEnabledFragment$1
  implements apg
{
  TwoFactorSettingsEnabledFragment$1(TwoFactorSettingsEnabledFragment paramTwoFactorSettingsEnabledFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (TwoFactorSettingsEnabledFragment.a(a).contains(Integer.valueOf(i)))
    {
      TwoFactorSettingsEnabledFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof anz)) {
        TwoFactorSettingsEnabledFragment.a(a, b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsEnabledFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */