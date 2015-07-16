package com.snapchat.android.fragments.signup;

import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import anh;
import aod;
import apg;
import aph;
import avb;
import blk;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Set;

final class TwoFactorCodeVerificationFragment$2
  implements apg
{
  TwoFactorCodeVerificationFragment$2(TwoFactorCodeVerificationFragment paramTwoFactorCodeVerificationFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if ((TwoFactorCodeVerificationFragment.a(a).contains(Integer.valueOf(i))) && ((paramanh instanceof aod)))
    {
      TwoFactorCodeVerificationFragment.a(a).remove(Integer.valueOf(i));
      paramanh = (aod)paramanh;
      if (b) {
        a.getActivity().onBackPressed();
      }
    }
    else
    {
      return;
    }
    paramanh = a;
    a.e.setVisibility(8);
    a.d.setClickable(true);
    a.a.setEnabled(true);
    if (avb.a(paramanh.a()))
    {
      a.a.setText("");
      a.a.requestFocus();
      a.r();
    }
    for (;;)
    {
      a.t();
      return;
      AlertDialogUtils.a(a.getActivity(), paramanh.b());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */