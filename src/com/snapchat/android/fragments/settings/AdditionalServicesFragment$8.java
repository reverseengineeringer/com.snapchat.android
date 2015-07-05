package com.snapchat.android.fragments.settings;

import ajx;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.snapchat.android.analytics.AnalyticsEvents;

final class AdditionalServicesFragment$8
  implements CompoundButton.OnCheckedChangeListener
{
  AdditionalServicesFragment$8(AdditionalServicesFragment paramAdditionalServicesFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    AdditionalServicesFragment.b(a);
    ajx.j(paramBoolean);
    AnalyticsEvents.a("TOGGLE_SETTING_REPLAY", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.AdditionalServicesFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */