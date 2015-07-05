package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdw;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.squareup.otto.Bus;

final class SettingsFragment$6
  implements View.OnClickListener
{
  SettingsFragment$6(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    AnalyticsEvents.e();
    ban.a().a(new bdw(new AdditionalServicesFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */