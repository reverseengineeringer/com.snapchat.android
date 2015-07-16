package com.snapchat.android.fragments.settings;

import android.content.Context;
import ara;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SettingsFragment$a
  extends ara
{
  public SettingsFragment$a(SettingsFragment paramSettingsFragment, Context paramContext)
  {
    super(paramContext, paramSettingsFragment.getString(2131493423));
  }
  
  protected final void a()
  {
    AnalyticsEvents.c(true);
    SettingsFragment.d(a);
  }
  
  protected final void b()
  {
    AnalyticsEvents.c(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */