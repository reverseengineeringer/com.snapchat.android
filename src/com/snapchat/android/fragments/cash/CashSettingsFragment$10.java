package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import chc;
import tg;

final class CashSettingsFragment$10
  implements SecurityCodeFragment.a
{
  CashSettingsFragment$10(CashSettingsFragment paramCashSettingsFragment, SecurityCodeFragment paramSecurityCodeFragment, CompoundButton paramCompoundButton) {}
  
  public final void a()
  {
    CashSettingsFragment localCashSettingsFragment = d;
    CheckBox localCheckBox = CashSettingsFragment.c(d);
    RelativeLayout localRelativeLayout = CashSettingsFragment.d(d);
    ProgressBar localProgressBar = CashSettingsFragment.e(d);
    if (!c) {}
    for (boolean bool = true;; bool = false)
    {
      CashSettingsFragment.a(localCashSettingsFragment, localCheckBox, localRelativeLayout, localProgressBar, bool, null);
      return;
    }
  }
  
  public final void a(@chc String paramString)
  {
    CashSettingsFragment.a(paramString, d.a(a, c)).execute();
  }
  
  public final void b()
  {
    CashSettingsFragment localCashSettingsFragment = d;
    CheckBox localCheckBox = CashSettingsFragment.c(d);
    RelativeLayout localRelativeLayout = CashSettingsFragment.d(d);
    ProgressBar localProgressBar = CashSettingsFragment.e(d);
    if (!c) {}
    for (boolean bool = true;; bool = false)
    {
      CashSettingsFragment.a(localCashSettingsFragment, localCheckBox, localRelativeLayout, localProgressBar, bool, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */