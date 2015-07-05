package com.snapchat.android.fragments.verification;

import amk;
import anf;
import aok;
import aol;
import aud;
import bkt;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Set;

final class PhoneVerificationFragment$1
  implements aok
{
  PhoneVerificationFragment$1(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    bkt localbkt;
    if (PhoneVerificationFragment.a(a).contains(Integer.valueOf(i)))
    {
      PhoneVerificationFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof anf))
      {
        paramamk = (anf)paramamk;
        localbkt = b;
        if (a) {
          AlertDialogUtils.b(a.getActivity(), a.getString(2131493561), a.getString(2131493560));
        }
        if (!aud.a(localbkt.a())) {
          break label112;
        }
        a.a(localbkt);
      }
    }
    return;
    label112:
    a.b(localbkt.b());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */