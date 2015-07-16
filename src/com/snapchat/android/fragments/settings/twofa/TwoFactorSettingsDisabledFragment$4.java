package com.snapchat.android.fragments.settings.twofa;

import akr;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import aph;
import java.util.Set;

final class TwoFactorSettingsDisabledFragment$4
  implements View.OnClickListener
{
  TwoFactorSettingsDisabledFragment$4(TwoFactorSettingsDisabledFragment paramTwoFactorSettingsDisabledFragment) {}
  
  public final void onClick(View paramView)
  {
    TwoFactorSettingsDisabledFragment.b(a);
    if (TextUtils.isEmpty(akr.e()))
    {
      TwoFactorSettingsDisabledFragment.i();
      return;
    }
    TwoFactorSettingsDisabledFragment.a(a).add(Integer.valueOf(TwoFactorSettingsDisabledFragment.c(a).a(a.getActivity(), "sendTwoFACode", null, null)));
    TwoFactorSettingsDisabledFragment.d(a).setClickable(false);
    TwoFactorSettingsDisabledFragment.d(a).setText("");
    a.a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsDisabledFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */