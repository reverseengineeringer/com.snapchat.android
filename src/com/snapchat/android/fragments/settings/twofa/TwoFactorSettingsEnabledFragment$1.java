package com.snapchat.android.fragments.settings.twofa;

import amk;
import anc;
import aok;
import aol;
import java.util.Set;

final class TwoFactorSettingsEnabledFragment$1
  implements aok
{
  TwoFactorSettingsEnabledFragment$1(TwoFactorSettingsEnabledFragment paramTwoFactorSettingsEnabledFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (TwoFactorSettingsEnabledFragment.a(a).contains(Integer.valueOf(i)))
    {
      TwoFactorSettingsEnabledFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof anc)) {
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