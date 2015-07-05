package com.snapchat.android.fragments.settings.twofa;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import aol;
import aqb;
import java.util.Set;

final class TwoFactorSettingsEnabledFragment$5
  implements View.OnClickListener
{
  TwoFactorSettingsEnabledFragment$5(TwoFactorSettingsEnabledFragment paramTwoFactorSettingsEnabledFragment) {}
  
  public final void onClick(View paramView)
  {
    new aqb(a.getActivity(), a.getString(2131493572), a.getString(2131493603), a.getString(2131492952))
    {
      protected final void a()
      {
        TwoFactorSettingsEnabledFragment.a(a).add(Integer.valueOf(TwoFactorSettingsEnabledFragment.c(a).a(getContext(), "disableTwoFA", null, null)));
      }
      
      protected final void b()
      {
        TwoFactorSettingsEnabledFragment.b(a).setChecked(true);
        dismiss();
      }
    }.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsEnabledFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */