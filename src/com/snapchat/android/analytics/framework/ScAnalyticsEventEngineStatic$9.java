package com.snapchat.android.analytics.framework;

import com.snapchat.android.Timber;
import java.util.concurrent.atomic.AtomicBoolean;

final class ScAnalyticsEventEngineStatic$9
  implements Runnable
{
  ScAnalyticsEventEngineStatic$9(int paramInt, long paramLong1, long paramLong2) {}
  
  public final void run()
  {
    DatabaseHelper localDatabaseHelper = DatabaseHelper.a(ScAnalyticsEventEngineStatic.j());
    if (a == 200) {
      if (ScAnalyticsEventEngineStatic.q()) {
        ScAnalyticsEventEngineStatic.r();
      }
    }
    for (;;)
    {
      localDatabaseHelper.a(c);
      ScAnalyticsEventEngineStatic.s().set(false);
      if (localDatabaseHelper.a() > 30L) {
        ScAnalyticsEventEngineStatic.a.a(new Runnable()
        {
          public void run() {}
        });
      }
      return;
      if (b > 0L)
      {
        if (!ScAnalyticsEventEngineStatic.q()) {
          ScAnalyticsEventEngineStatic.d(System.currentTimeMillis());
        }
        ScAnalyticsEventEngineStatic.e(b);
      }
      else
      {
        Timber.f("com.amplitude.api.Amplitude", "Uploaded to server with 0 events.", new Object[0]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */