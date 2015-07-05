package com.snapchat.android.fragments.settings;

import ajx;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import auh;
import ban;
import bdw;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.squareup.otto.Bus;
import pa;

final class SettingsFragment$15$1
  implements DialogInterface.OnClickListener
{
  SettingsFragment$15$1(SettingsFragment.15 param15) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AnalyticsEvents.a(SettingsFragment.PrivacyOptions.values()[ajx.h()].toString(), SettingsFragment.PrivacyOptions.values()[paramInt].toString());
    ajx.d(paramInt);
    SettingsFragment.c(a.a).setText(a.a.getResources().getStringArray(2131165198)[paramInt]);
    String str = SettingsFragment.PrivacyOptions.values()[paramInt].toString();
    if (str.equals("CUSTOM")) {
      ban.a().a(new bdw(new CustomStoryPrivacyFragment()));
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      new pa("updateStoryPrivacy", new String[] { str }).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.15.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */