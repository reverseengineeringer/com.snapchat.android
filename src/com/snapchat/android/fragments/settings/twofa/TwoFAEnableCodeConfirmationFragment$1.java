package com.snapchat.android.fragments.settings.twofa;

import amk;
import anc;
import anc.c;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import aok;
import aol;
import ban;
import bdw;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import java.util.Set;

final class TwoFAEnableCodeConfirmationFragment$1
  implements aok
{
  TwoFAEnableCodeConfirmationFragment$1(TwoFAEnableCodeConfirmationFragment paramTwoFAEnableCodeConfirmationFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    anc.c localc;
    if (TwoFAEnableCodeConfirmationFragment.a(a).contains(Integer.valueOf(i)))
    {
      TwoFAEnableCodeConfirmationFragment.a(a).remove(Integer.valueOf(i));
      if ((paramamk instanceof anc))
      {
        paramamk = (anc)paramamk;
        localc = b;
        TwoFAEnableCodeConfirmationFragment.b(a).setVisibility(8);
        TwoFAEnableCodeConfirmationFragment.c(a).setClickable(true);
        TwoFAEnableCodeConfirmationFragment.d(a).setEnabled(true);
        if (!TextUtils.equals(a, "enableTwoFA")) {
          break label164;
        }
        if (!a) {
          break label150;
        }
        ban.a().a(new bdw(new TwoFactorSettingsEnabledFragment(), TwoFactorSettingsEnabledFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
      }
    }
    for (;;)
    {
      TwoFAEnableCodeConfirmationFragment.h(a);
      return;
      label150:
      TwoFAEnableCodeConfirmationFragment.a(a, d);
      continue;
      label164:
      if (a)
      {
        TwoFAEnableCodeConfirmationFragment.e(a).setText("");
        TwoFAEnableCodeConfirmationFragment.f(a).requestFocus();
        TwoFAEnableCodeConfirmationFragment.g(a);
      }
      else
      {
        AlertDialogUtils.a(a.getActivity(), d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFAEnableCodeConfirmationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */