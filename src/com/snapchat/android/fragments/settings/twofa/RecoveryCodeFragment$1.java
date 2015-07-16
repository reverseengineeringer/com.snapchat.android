package com.snapchat.android.fragments.settings.twofa;

import android.widget.Button;
import android.widget.ProgressBar;
import anh;
import anv;
import apg;
import aph;
import bbo;
import bev;
import com.squareup.otto.Bus;
import java.util.Set;

final class RecoveryCodeFragment$1
  implements apg
{
  RecoveryCodeFragment$1(RecoveryCodeFragment paramRecoveryCodeFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (RecoveryCodeFragment.a(a).contains(Integer.valueOf(i)))
    {
      RecoveryCodeFragment.a(a).remove(Integer.valueOf(i));
      if ((paramanh instanceof anv))
      {
        a.b.setVisibility(8);
        a.a.setText(2131493564);
        a.a.setClickable(true);
        paramanh = (anv)paramanh;
        if (!b) {
          break label116;
        }
        bbo.a().a(new bev(new RecoveryCodePasswordValidationFragment()));
      }
    }
    return;
    label116:
    paramanh = a;
    RecoveryCodeFragment.a(a, paramanh);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodeFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */