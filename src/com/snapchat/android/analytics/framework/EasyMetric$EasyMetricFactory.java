package com.snapchat.android.analytics.framework;

public class EasyMetric$EasyMetricFactory
{
  public static EasyMetric a(String paramString)
  {
    return new EasyMetric(paramString);
  }
  
  public static EasyMetric b(String paramString)
  {
    return new PerformanceMetric(paramString);
  }
  
  public static EasyMetric c(String paramString)
  {
    return new ErrorMetric(paramString);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */