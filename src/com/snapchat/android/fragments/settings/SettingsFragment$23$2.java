package com.snapchat.android.fragments.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import atq;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SettingsFragment$23$2
  implements DialogInterface.OnClickListener
{
  SettingsFragment$23$2(SettingsFragment.23 param23) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AnalyticsEvents.h(true);
    atq.a(a.a.getActivity());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.23.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */