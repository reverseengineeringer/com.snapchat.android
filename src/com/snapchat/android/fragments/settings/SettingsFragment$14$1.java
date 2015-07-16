package com.snapchat.android.fragments.settings;

import akr;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import avf;
import com.snapchat.android.analytics.AnalyticsEvents;
import pr;

final class SettingsFragment$14$1
  implements DialogInterface.OnClickListener
{
  SettingsFragment$14$1(SettingsFragment.14 param14) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AnalyticsEvents.a(SettingsFragment.PrivacyOptions.values()[akr.g()].toString(), SettingsFragment.PrivacyOptions.values()[paramInt].toString());
    akr.c(paramInt);
    SettingsFragment.b(a.a).setText(a.a.getResources().getStringArray(2131165197)[paramInt]);
    new pr("updatePrivacy", new String[] { Integer.toString(paramInt) }).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */