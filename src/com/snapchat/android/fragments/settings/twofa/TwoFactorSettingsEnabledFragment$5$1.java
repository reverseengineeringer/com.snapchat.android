package com.snapchat.android.fragments.settings.twofa;

import android.content.Context;
import android.widget.CheckBox;
import aol;
import aqb;
import java.util.Set;

final class TwoFactorSettingsEnabledFragment$5$1
  extends aqb
{
  TwoFactorSettingsEnabledFragment$5$1(TwoFactorSettingsEnabledFragment.5 param5, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, paramString3);
  }
  
  protected final void a()
  {
    TwoFactorSettingsEnabledFragment.a(a.a).add(Integer.valueOf(TwoFactorSettingsEnabledFragment.c(a.a).a(getContext(), "disableTwoFA", null, null)));
  }
  
  protected final void b()
  {
    TwoFactorSettingsEnabledFragment.b(a.a).setChecked(true);
    dismiss();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsEnabledFragment.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */