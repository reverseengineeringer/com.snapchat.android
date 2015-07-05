package com.snapchat.android.fragments.cash;

import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdw;
import com.snapchat.android.fragments.settings.WebFragment;
import com.squareup.otto.Bus;

final class CashSettingsFragment$9
  implements View.OnClickListener
{
  CashSettingsFragment$9(CashSettingsFragment paramCashSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    ban.a().a(new bdw(new WebFragment("https://accounts.snapchat.com", a.getString(2131493436), true, "/ca/snapcash")));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */