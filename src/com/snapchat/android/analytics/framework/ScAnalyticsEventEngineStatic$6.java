package com.snapchat.android.analytics.framework;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import gc;

final class ScAnalyticsEventEngineStatic$6
  implements Runnable
{
  ScAnalyticsEventEngineStatic$6(long paramLong) {}
  
  public final void run()
  {
    if (!ScAnalyticsEventEngineStatic.g()) {
      return;
    }
    SharedPreferences localSharedPreferences = ScAnalyticsEventEngineStatic.j();
    long l2 = localSharedPreferences.getLong(Constants.d, -1L);
    long l3 = ScAnalyticsEventEngineStatic.d(a - l2);
    long l1 = localSharedPreferences.getLong(Constants.h, 0L) + ScAnalyticsEventEngineStatic.d(a - ScAnalyticsEventEngineStatic.k());
    gc localgc = new gc();
    userId = ScAnalyticsEventEngineStatic.d().a();
    sessionStartTs = Double.valueOf(ScAnalyticsEventEngineStatic.e(l2));
    sessionTimeSec = Long.valueOf(l3);
    sessionActiveTimeSec = Long.valueOf(l1);
    l2 = ScAnalyticsEventEngineStatic.a(localgc, a);
    localSharedPreferences.edit().putLong(Constants.f, l2).putLong(Constants.e, a).putLong(Constants.h, l1).commit();
    ScAnalyticsEventEngineStatic.a(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */