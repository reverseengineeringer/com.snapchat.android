package com.snapchat.android.fragments.settings;

import ahq.a;
import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;

final class AdditionalServicesFragment$9
  implements ahq.a
{
  AdditionalServicesFragment$9(AdditionalServicesFragment paramAdditionalServicesFragment) {}
  
  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      AdditionalServicesFragment.a(a).setChecked(false);
      return;
    }
    AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
    AdditionalServicesFragment.b(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.AdditionalServicesFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */