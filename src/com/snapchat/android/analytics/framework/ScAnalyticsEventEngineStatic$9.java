package com.snapchat.android.analytics.framework;

import java.util.concurrent.atomic.AtomicBoolean;

final class ScAnalyticsEventEngineStatic$9
  implements Runnable
{
  ScAnalyticsEventEngineStatic$9(int paramInt, long paramLong1, long paramLong2) {}
  
  public final void run()
  {
    DatabaseHelper localDatabaseHelper = DatabaseHelper.a(ScAnalyticsEventEngineStatic.l());
    if (a == 200) {
      if (ScAnalyticsEventEngineStatic.m()) {
        ScAnalyticsEventEngineStatic.n();
      }
    }
    for (;;)
    {
      localDatabaseHelper.a(c);
      ScAnalyticsEventEngineStatic.o().set(false);
      if (localDatabaseHelper.a() > 30L) {
        ScAnalyticsEventEngineStatic.a.a(new Runnable()
        {
          public void run() {}
        });
      }
      return;
      if (b > 0L)
      {
        if (!ScAnalyticsEventEngineStatic.m()) {
          ScAnalyticsEventEngineStatic.f(System.currentTimeMillis());
        }
        ScAnalyticsEventEngineStatic.g(b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */