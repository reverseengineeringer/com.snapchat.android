package com.snapchat.android.fragments.signup;

import amk;
import and;
import aok;
import aol;
import java.util.Set;

final class PickUsernameFragment$1
  implements aok
{
  PickUsernameFragment$1(PickUsernameFragment paramPickUsernameFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (PickUsernameFragment.a(a).contains(Integer.valueOf(i)))
    {
      PickUsernameFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof and)) {
        PickUsernameFragment.a(a, (and)paramamk);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */