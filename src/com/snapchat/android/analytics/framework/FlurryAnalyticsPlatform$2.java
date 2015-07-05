package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.flurry.android.FlurryAgent;

class FlurryAnalyticsPlatform$2
  implements Runnable
{
  FlurryAnalyticsPlatform$2(FlurryAnalyticsPlatform paramFlurryAnalyticsPlatform, Activity paramActivity) {}
  
  public void run()
  {
    FlurryAgent.onEndSession(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */