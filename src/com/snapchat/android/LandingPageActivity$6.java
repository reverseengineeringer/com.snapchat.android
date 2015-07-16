package com.snapchat.android;

import aim.a;
import avf;
import com.snapchat.android.analytics.AnalyticsEvents;
import pw;

final class LandingPageActivity$6
  implements aim.a
{
  LandingPageActivity$6(LandingPageActivity paramLandingPageActivity) {}
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      AnalyticsEvents.g();
      new pw().executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LandingPageActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */