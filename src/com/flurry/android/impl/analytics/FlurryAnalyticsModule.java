package com.flurry.android.impl.analytics;

import android.content.Context;
import com.flurry.sdk.dd;
import com.flurry.sdk.dj;
import com.flurry.sdk.eq;

public class FlurryAnalyticsModule
  implements eq
{
  private static FlurryAnalyticsModule a;
  private dd b;
  
  public static FlurryAnalyticsModule getInstance()
  {
    try
    {
      if (a == null) {
        a = new FlurryAnalyticsModule();
      }
      FlurryAnalyticsModule localFlurryAnalyticsModule = a;
      return localFlurryAnalyticsModule;
    }
    finally {}
  }
  
  public dd a()
  {
    return b;
  }
  
  public void a(dj paramdj) {}
  
  public void a(dj paramdj, Context paramContext)
  {
    if (b == null) {
      b = new dd();
    }
  }
  
  public void b(dj paramdj, Context paramContext) {}
  
  public void c(dj paramdj, Context paramContext) {}
}

/* Location:
 * Qualified Name:     com.flurry.android.impl.analytics.FlurryAnalyticsModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */