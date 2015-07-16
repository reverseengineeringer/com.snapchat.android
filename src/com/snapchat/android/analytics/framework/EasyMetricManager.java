package com.snapchat.android.analytics.framework;

import java.util.HashMap;
import java.util.Map;

public class EasyMetricManager
{
  private final EasyMetric.EasyMetricFactory a;
  private final Map<String, Map<String, EasyMetric>> b;
  
  public EasyMetricManager()
  {
    this(new EasyMetric.EasyMetricFactory());
  }
  
  public EasyMetricManager(EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    a = paramEasyMetricFactory;
    b = new HashMap();
  }
  
  private EasyMetric a(String paramString1, String paramString2, boolean paramBoolean)
  {
    synchronized (b)
    {
      if (c(paramString1, paramString2)) {
        b(paramString1, paramString2);
      }
      if (!b.containsKey(paramString1)) {
        b.put(paramString1, new HashMap());
      }
      if (paramBoolean)
      {
        localEasyMetric = EasyMetric.EasyMetricFactory.b(paramString1);
        ((Map)b.get(paramString1)).put(paramString2, localEasyMetric);
        return localEasyMetric;
      }
      EasyMetric localEasyMetric = EasyMetric.EasyMetricFactory.a(paramString1);
    }
  }
  
  public final EasyMetric a(String paramString)
  {
    return a(paramString, "", false);
  }
  
  public final EasyMetric a(String paramString1, String paramString2)
  {
    synchronized (b)
    {
      if (c(paramString1, paramString2))
      {
        paramString1 = (EasyMetric)((Map)b.get(paramString1)).get(paramString2);
        return paramString1;
      }
      return null;
    }
  }
  
  public final EasyMetric b(String paramString)
  {
    return a(paramString, "", true);
  }
  
  public final EasyMetricManager b(String paramString1, String paramString2)
  {
    synchronized (b)
    {
      if (!c(paramString1, paramString2)) {
        return this;
      }
      ((Map)b.get(paramString1)).remove(paramString2);
      if (((Map)b.get(paramString1)).size() == 0) {
        b.remove(paramString1);
      }
      return this;
    }
  }
  
  public final EasyMetricManager c(String paramString)
  {
    if (c(paramString, ""))
    {
      a(paramString, "").b(false);
      b(paramString, "");
    }
    return this;
  }
  
  public final boolean c(String paramString1, String paramString2)
  {
    for (;;)
    {
      synchronized (b)
      {
        if ((b.containsKey(paramString1)) && (((Map)b.get(paramString1)).containsKey(paramString2)))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.EasyMetricManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */