package com.snapchat.android.fragments.settings.twofa;

import anh;
import anv;
import anx;
import apg;
import aph;
import java.util.Set;

final class RecoveryCodePasswordValidationFragment$1
  implements apg
{
  RecoveryCodePasswordValidationFragment$1(RecoveryCodePasswordValidationFragment paramRecoveryCodePasswordValidationFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (RecoveryCodePasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
    {
      RecoveryCodePasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramanh instanceof anx)) {
        break label60;
      }
      RecoveryCodePasswordValidationFragment.a(a, (anx)paramanh);
    }
    label60:
    while (!(paramanh instanceof anv)) {
      return;
    }
    RecoveryCodePasswordValidationFragment.a(a, (anv)paramanh);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodePasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */