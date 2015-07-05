package com.snapchat.android.fragments.cash;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import ban;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

final class CashSettingsFragment$2
  implements Runnable
{
  CashSettingsFragment$2(CashSettingsFragment paramCashSettingsFragment, boolean paramBoolean, CompoundButton paramCompoundButton, ProgressBar paramProgressBar, View paramView, String paramString) {}
  
  public final void run()
  {
    if (a != b.isChecked()) {
      b.setTag(Boolean.valueOf(true));
    }
    b.setChecked(a);
    b.setVisibility(0);
    c.setVisibility(8);
    d.setEnabled(true);
    if (e != null) {
      ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, e));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */