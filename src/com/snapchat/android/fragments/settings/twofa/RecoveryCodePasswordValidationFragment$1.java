package com.snapchat.android.fragments.settings.twofa;

import amk;
import amy;
import ana;
import aok;
import aol;
import java.util.Set;

final class RecoveryCodePasswordValidationFragment$1
  implements aok
{
  RecoveryCodePasswordValidationFragment$1(RecoveryCodePasswordValidationFragment paramRecoveryCodePasswordValidationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (RecoveryCodePasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
    {
      RecoveryCodePasswordValidationFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramamk instanceof ana)) {
        break label60;
      }
      RecoveryCodePasswordValidationFragment.a(a, (ana)paramamk);
    }
    label60:
    while (!(paramamk instanceof amy)) {
      return;
    }
    RecoveryCodePasswordValidationFragment.a(a, (amy)paramamk);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodePasswordValidationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */