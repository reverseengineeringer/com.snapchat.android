package com.snapchat.android.analytics.framework;

import bba;
import bbb;

class PerformanceMetric$1
  implements Runnable
{
  PerformanceMetric$1(PerformanceMetric paramPerformanceMetric) {}
  
  public void run()
  {
    bbb localbbb = PerformanceMetric.a(a);
    PerformanceMetric localPerformanceMetric = a;
    mUiLatencyAggregator.a(localPerformanceMetric);
    PerformanceMetric.b(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.PerformanceMetric.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */