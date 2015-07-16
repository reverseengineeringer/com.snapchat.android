package com.snapchat.android.fragments.settings;

import akr;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import avf;
import bbo;
import bev;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.squareup.otto.Bus;
import pr;

final class SettingsFragment$15$1
  implements DialogInterface.OnClickListener
{
  SettingsFragment$15$1(SettingsFragment.15 param15) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AnalyticsEvents.a(SettingsFragment.PrivacyOptions.values()[akr.h()].toString(), SettingsFragment.PrivacyOptions.values()[paramInt].toString());
    akr.d(paramInt);
    SettingsFragment.c(a.a).setText(a.a.getResources().getStringArray(2131165198)[paramInt]);
    String str = SettingsFragment.PrivacyOptions.values()[paramInt].toString();
    if (str.equals("CUSTOM")) {
      bbo.a().a(new bev(new CustomStoryPrivacyFragment()));
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      new pr("updateStoryPrivacy", new String[] { str }).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.15.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */