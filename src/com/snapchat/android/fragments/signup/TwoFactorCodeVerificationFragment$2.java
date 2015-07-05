package com.snapchat.android.fragments.signup;

import amk;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import ang;
import aok;
import aol;
import aud;
import bkj;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Set;

final class TwoFactorCodeVerificationFragment$2
  implements aok
{
  TwoFactorCodeVerificationFragment$2(TwoFactorCodeVerificationFragment paramTwoFactorCodeVerificationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if ((TwoFactorCodeVerificationFragment.a(a).contains(Integer.valueOf(i))) && ((paramamk instanceof ang)))
    {
      TwoFactorCodeVerificationFragment.a(a).remove(Integer.valueOf(i));
      paramamk = (ang)paramamk;
      if (b) {
        a.getActivity().onBackPressed();
      }
    }
    else
    {
      return;
    }
    paramamk = a;
    a.e.setVisibility(8);
    a.d.setClickable(true);
    a.a.setEnabled(true);
    if (aud.a(paramamk.a()))
    {
      a.a.setText("");
      a.a.requestFocus();
      a.r();
    }
    for (;;)
    {
      a.t();
      return;
      AlertDialogUtils.a(a.getActivity(), paramamk.b());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */