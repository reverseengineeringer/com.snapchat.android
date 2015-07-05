package com.snapchat.android.analytics.framework;

import java.util.concurrent.atomic.AtomicBoolean;

final class ScAnalyticsEventEngineStatic$4
  implements Runnable
{
  public final void run()
  {
    ScAnalyticsEventEngineStatic.f().set(false);
    ScAnalyticsEventEngineStatic.e();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */