package com.snapchat.android.analytics.framework;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class ScAnalyticsEventEngineStatic$7
  implements Runnable
{
  public final void run()
  {
    ScAnalyticsEventEngineStatic.m().edit().remove(Constants.h).commit();
    ScAnalyticsEventEngineStatic.p();
    ScAnalyticsEventEngineStatic.a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */