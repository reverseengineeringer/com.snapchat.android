package com.snapchat.android.fragments.verification;

import anh;
import aoc;
import apg;
import aph;
import avb;
import blu;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Set;

final class PhoneVerificationFragment$1
  implements apg
{
  PhoneVerificationFragment$1(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    blu localblu;
    if (PhoneVerificationFragment.a(a).contains(Integer.valueOf(i)))
    {
      PhoneVerificationFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof aoc))
      {
        paramanh = (aoc)paramanh;
        localblu = b;
        if (a) {
          AlertDialogUtils.b(a.getActivity(), a.getString(2131493559), a.getString(2131493558));
        }
        if (!avb.a(localblu.a())) {
          break label112;
        }
        a.a(localblu);
      }
    }
    return;
    label112:
    a.b(localblu.b());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */