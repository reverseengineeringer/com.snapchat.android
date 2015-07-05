package com.snapchat.android.analytics.framework;

import android.os.SystemClock;
import android.util.Pair;
import aud;
import bgk;
import bgl;
import java.util.HashMap;
import java.util.Map;

public class DictionaryEasyMetric
{
  private static final DictionaryEasyMetric h = new DictionaryEasyMetric();
  public final Map<String, Long> a = new HashMap();
  public final Map<String, EasyMetric.MemoryStats> b = new HashMap();
  public final Map<String, Map<String, Object>> c = new HashMap();
  public final Map<String, Map<String, Object>> d = new HashMap();
  public final Object e = new Object();
  private final bgk f;
  private final EasyMetric.EasyMetricFactory g;
  
  protected DictionaryEasyMetric()
  {
    this(bglmClock, new EasyMetric.EasyMetricFactory());
  }
  
  private DictionaryEasyMetric(bgk parambgk, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    f = parambgk;
    g = paramEasyMetricFactory;
  }
  
  public static DictionaryEasyMetric a()
  {
    return h;
  }
  
  private void d(String paramString)
  {
    if (a.containsKey(paramString)) {
      a.remove(paramString);
    }
    if (c.containsKey(paramString)) {
      c.remove(paramString);
    }
    if (d.containsKey(paramString)) {
      d.remove(paramString);
    }
  }
  
  public final DictionaryEasyMetric a(String paramString1, String paramString2, Object paramObject)
  {
    return a(paramString1, paramString2, paramObject, true);
  }
  
  public final DictionaryEasyMetric a(String paramString1, String paramString2, Object paramObject, boolean paramBoolean)
  {
    synchronized (e)
    {
      if (!c.containsKey(paramString1)) {
        c.put(paramString1, new HashMap());
      }
      if ((paramBoolean) || (!((Map)c.get(paramString1)).containsKey(paramString2))) {
        ((Map)c.get(paramString1)).put(paramString2, paramObject);
      }
      return this;
    }
  }
  
  public final void a(String paramString)
  {
    synchronized (e)
    {
      d(paramString);
      return;
    }
  }
  
  public final void a(String paramString, boolean paramBoolean)
  {
    Object localObject = e;
    if (!paramBoolean) {}
    try
    {
      if (!a.containsKey(paramString))
      {
        a.put(paramString, Long.valueOf(SystemClock.elapsedRealtime()));
        b.put(paramString, new EasyMetric.MemoryStats());
      }
      return;
    }
    finally {}
  }
  
  public final void b(String paramString)
  {
    synchronized (e)
    {
      EasyMetric localEasyMetric = EasyMetric.EasyMetricFactory.a(paramString);
      if (a.containsKey(paramString))
      {
        localEasyMetric.a(SystemClock.elapsedRealtime() - aud.a((Long)a.get(paramString)));
        Object localObject2 = new EasyMetric.MemoryStats();
        localObject2 = new Pair((EasyMetric.MemoryStats)b.get(paramString), localObject2);
        localEasyMetric.a((EasyMetric.MemoryStats)first, (EasyMetric.MemoryStats)second);
        if (c.containsKey(paramString)) {
          localEasyMetric.a((Map)c.get(paramString));
        }
        if (d.containsKey(paramString)) {
          localEasyMetric.b((Map)d.get(paramString));
        }
        localEasyMetric.a(false);
      }
      d(paramString);
      return;
    }
  }
  
  public final boolean c(String paramString)
  {
    synchronized (e)
    {
      boolean bool = a.containsKey(paramString);
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.DictionaryEasyMetric
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */