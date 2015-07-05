package com.snapchat.android.fragments.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SettingsFragment$22$2
  implements DialogInterface.OnClickListener
{
  SettingsFragment$22$2(SettingsFragment.22 param22) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AnalyticsEvents.g(true);
    paramDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse("https://www.snapchat.com/beta"));
    a.a.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.22.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */