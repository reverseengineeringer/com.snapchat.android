package com.snapchat.android.fragments.settings;

import akr;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.snapchat.android.analytics.AnalyticsEvents;

final class AdditionalServicesFragment$6
  implements CompoundButton.OnCheckedChangeListener
{
  AdditionalServicesFragment$6(AdditionalServicesFragment paramAdditionalServicesFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    AdditionalServicesFragment.b(a);
    akr.k(paramBoolean);
    AnalyticsEvents.a("TOGGLE_SETTING_FLASH", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.AdditionalServicesFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */