package com.snapchat.android.fragments.cash;

import ajx;
import android.widget.ProgressBar;
import ban;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

final class CashSettingsFragment$3
  implements Runnable
{
  CashSettingsFragment$3(CashSettingsFragment paramCashSettingsFragment, Integer paramInteger) {}
  
  public final void run()
  {
    CashSettingsFragment.a(b).setVisibility(8);
    if (ajx.ar()) {
      CashSettingsFragment.f(b);
    }
    for (;;)
    {
      CashSettingsFragment.h(b);
      if (a != null) {
        ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, a.intValue()));
      }
      return;
      CashSettingsFragment.g(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */