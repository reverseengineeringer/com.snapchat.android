package com.snapchat.android.analytics.framework;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import ft;

final class ScAnalyticsEventEngineStatic$6
  implements Runnable
{
  ScAnalyticsEventEngineStatic$6(long paramLong) {}
  
  public final void run()
  {
    if (ScAnalyticsEventEngineStatic.l())
    {
      ft localft = new ft();
      SharedPreferences localSharedPreferences = ScAnalyticsEventEngineStatic.m();
      long l2 = localSharedPreferences.getLong(Constants.d, -1L);
      long l3 = ScAnalyticsEventEngineStatic.b(a - l2);
      long l1 = localSharedPreferences.getLong(Constants.h, 0L) + ScAnalyticsEventEngineStatic.b(a - ScAnalyticsEventEngineStatic.n());
      userId = ScAnalyticsEventEngineStatic.d().a();
      sessionStartTs = Double.valueOf(ScAnalyticsEventEngineStatic.c(l2));
      sessionTimeSec = Long.valueOf(l3);
      sessionActiveTimeSec = Long.valueOf(l1);
      l2 = ScAnalyticsEventEngineStatic.a(localft, a);
      localSharedPreferences.edit().putLong(Constants.f, l2).putLong(Constants.e, a).putLong(Constants.h, l1).commit();
    }
    ScAnalyticsEventEngineStatic.o();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */