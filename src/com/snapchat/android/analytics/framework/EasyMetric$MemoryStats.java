package com.snapchat.android.analytics.framework;

public class EasyMetric$MemoryStats
{
  long a;
  long b;
  long c;
  long d;
  boolean e = false;
  
  public EasyMetric$MemoryStats()
  {
    this(Runtime.getRuntime());
  }
  
  private EasyMetric$MemoryStats(Runtime paramRuntime)
  {
    a = paramRuntime.freeMemory();
    c = paramRuntime.totalMemory();
    b = (c - a);
    d = paramRuntime.maxMemory();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.EasyMetric.MemoryStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */