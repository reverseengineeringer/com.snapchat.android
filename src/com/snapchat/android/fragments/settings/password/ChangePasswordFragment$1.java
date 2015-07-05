package com.snapchat.android.fragments.settings.password;

import amk;
import amt;
import amz;
import aok;
import aol;
import java.util.Set;

final class ChangePasswordFragment$1
  implements aok
{
  ChangePasswordFragment$1(ChangePasswordFragment paramChangePasswordFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (ChangePasswordFragment.a(a).contains(Integer.valueOf(i)))
    {
      ChangePasswordFragment.a(a).remove(Integer.valueOf(i));
      if (!(paramamk instanceof amz)) {
        break label60;
      }
      a.a((amz)paramamk);
    }
    label60:
    while (!(paramamk instanceof amt)) {
      return;
    }
    ChangePasswordFragment.a(a, (amt)paramamk);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.ChangePasswordFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */