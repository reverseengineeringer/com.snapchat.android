package com.snapchat.android.fragments.settings.twofa;

import amk;
import anc;
import aok;
import aol;
import java.util.Set;

final class ForgetDeviceFragment$1
  implements aok
{
  ForgetDeviceFragment$1(ForgetDeviceFragment paramForgetDeviceFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (ForgetDeviceFragment.a(a).contains(Integer.valueOf(i)))
    {
      ForgetDeviceFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof anc)) {
        ForgetDeviceFragment.a(a, b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.ForgetDeviceFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */