package com.snapchat.android.analytics.framework;

final class ScAnalyticsEventEngineStatic$5
  implements Runnable
{
  ScAnalyticsEventEngineStatic$5(long paramLong) {}
  
  public final void run()
  {
    if (ScAnalyticsEventEngineStatic.g()) {
      return;
    }
    ScAnalyticsEventEngineStatic.a(true);
    ScAnalyticsEventEngineStatic.a(a);
    long l1 = ScAnalyticsEventEngineStatic.h();
    long l2 = ScAnalyticsEventEngineStatic.i();
    if ((l1 != -1L) && (a - l2 < 15000L))
    {
      ScAnalyticsEventEngineStatic.b(l1);
      return;
    }
    ScAnalyticsEventEngineStatic.c(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */