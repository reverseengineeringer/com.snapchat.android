package com.snapchat.android.analytics.framework;

import bvp;
import javax.inject.Provider;

public final class AnalyticsPlatformRegistry_Factory
  implements bvp<AnalyticsPlatformRegistry>
{
  private final Provider<UpdateSnapsAnalyticsPlatform> b;
  private final Provider<FlurryAnalyticsPlatform> c;
  private final Provider<UserActionTracePlatform> d;
  
  static
  {
    if (!AnalyticsPlatformRegistry_Factory.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private AnalyticsPlatformRegistry_Factory(Provider<UpdateSnapsAnalyticsPlatform> paramProvider, Provider<FlurryAnalyticsPlatform> paramProvider1, Provider<UserActionTracePlatform> paramProvider2)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    c = paramProvider1;
    if ((!a) && (paramProvider2 == null)) {
      throw new AssertionError();
    }
    d = paramProvider2;
  }
  
  public static bvp<AnalyticsPlatformRegistry> a(Provider<UpdateSnapsAnalyticsPlatform> paramProvider, Provider<FlurryAnalyticsPlatform> paramProvider1, Provider<UserActionTracePlatform> paramProvider2)
  {
    return new AnalyticsPlatformRegistry_Factory(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */