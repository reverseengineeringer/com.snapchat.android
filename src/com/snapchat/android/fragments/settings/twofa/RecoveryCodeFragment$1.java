package com.snapchat.android.fragments.settings.twofa;

import amk;
import amy;
import android.widget.Button;
import android.widget.ProgressBar;
import aok;
import aol;
import ban;
import bdw;
import com.squareup.otto.Bus;
import java.util.Set;

final class RecoveryCodeFragment$1
  implements aok
{
  RecoveryCodeFragment$1(RecoveryCodeFragment paramRecoveryCodeFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (RecoveryCodeFragment.a(a).contains(Integer.valueOf(i)))
    {
      RecoveryCodeFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof amy))
      {
        a.b.setVisibility(8);
        a.a.setText(2131493566);
        a.a.setClickable(true);
        paramamk = (amy)paramamk;
        if (!b) {
          break label116;
        }
        ban.a().a(new bdw(new RecoveryCodePasswordValidationFragment()));
      }
    }
    return;
    label116:
    paramamk = a;
    RecoveryCodeFragment.a(a, paramamk);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodeFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */