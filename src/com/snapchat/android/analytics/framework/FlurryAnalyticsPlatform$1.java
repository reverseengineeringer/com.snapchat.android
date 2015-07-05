package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.flurry.android.FlurryAgent;

class FlurryAnalyticsPlatform$1
  implements Runnable
{
  FlurryAnalyticsPlatform$1(FlurryAnalyticsPlatform paramFlurryAnalyticsPlatform, Activity paramActivity) {}
  
  public void run()
  {
    FlurryAgent.setUseHttps(true);
    FlurryAgent.setReportLocation(false);
    FlurryAgent.onStartSession(a, "FRW84M2GG56RMM8VWT5G");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */