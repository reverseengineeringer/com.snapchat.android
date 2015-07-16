package com.snapchat.android.analytics.framework;

import akr;
import android.os.SystemClock;
import aud;
import auy;
import azy;
import bhk;
import bhl;
import bhp;
import chc;
import chd;
import com.snapchat.android.SnapchatApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.inject.Inject;

public class EasyMetric
{
  private static int f = 0;
  @chd
  protected String a;
  public long b = -1L;
  @Inject
  protected UpdateSnapsAnalyticsPlatform c;
  @Inject
  protected FlurryAnalyticsPlatform d;
  @Inject
  protected UserActionTracePlatform e;
  @chd
  private Map<String, Object> g;
  @chd
  private Map<String, Object> h;
  @chd
  private Map<String, Long> i;
  @chd
  private Map<String, Long> j;
  private long k = -1L;
  private final bhk l;
  private final aud m;
  private MemoryStats n = null;
  @chc
  private final List<AnalyticsPlatform> o = new ArrayList();
  
  public EasyMetric()
  {
    this(null, bhlmClock, aud.a());
  }
  
  public EasyMetric(@chd String paramString)
  {
    this(paramString, bhlmClock, aud.a());
  }
  
  private EasyMetric(@chd String paramString, bhk parambhk, aud paramaud)
  {
    SnapchatApplication.b().c().a(this);
    l = parambhk;
    a = paramString;
    m = paramaud;
    a(c);
    a(d);
    a(e);
  }
  
  private EasyMetric a(@chc AnalyticsPlatform paramAnalyticsPlatform)
  {
    if (paramAnalyticsPlatform == null) {
      throw new NullPointerException();
    }
    o.add(paramAnalyticsPlatform);
    return this;
  }
  
  private void a(@chc MemoryStats paramMemoryStats)
  {
    if (j == null) {
      j = new TreeMap();
    }
    if (e) {}
    for (String str = "_change";; str = "")
    {
      j.put("mem_free" + str, Long.valueOf(MemoryStats.a(paramMemoryStats)));
      j.put("mem_used" + str, Long.valueOf(MemoryStats.b(paramMemoryStats)));
      j.put("mem_total" + str, Long.valueOf(MemoryStats.c(paramMemoryStats)));
      j.put("mem_max" + str, Long.valueOf(MemoryStats.d(paramMemoryStats)));
      return;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    Iterator localIterator = o.iterator();
    while (localIterator.hasNext())
    {
      AnalyticsPlatform localAnalyticsPlatform = (AnalyticsPlatform)localIterator.next();
      if ((!(localAnalyticsPlatform instanceof FlurryAnalyticsPlatform)) || (paramBoolean)) {
        localAnalyticsPlatform.a(a, g, h, i, j);
      }
    }
  }
  
  private void f()
  {
    f += 1;
    d();
    a("year_class", m.b());
    if (a == null) {
      throw new NullPointerException("No event name has been set.");
    }
    new StringBuilder("TRACE - ").append(f).append(" (").append(a).append(") ").append(g).append(" ").append(h).append(" ").append(i).append(" ").append(j);
    new StringBuilder("TRACE - ").append(f).append(" (").append(a).append(") ").append(g).append(" ").append(h).append(" ").append(i).append(" ").append(j);
  }
  
  public final EasyMetric a(long paramLong)
  {
    k = paramLong;
    a("timeBucket", auy.a(paramLong));
    if (i == null) {
      i = new TreeMap();
    }
    i.put("time", Long.valueOf(paramLong));
    return this;
  }
  
  public final EasyMetric a(@chc String paramString)
  {
    a = paramString;
    return this;
  }
  
  public final EasyMetric a(@chc String paramString, @chd Object paramObject)
  {
    String str = paramString;
    if (paramString == null) {
      str = "NULL - ANALYTICS ERROR";
    }
    paramString = (String)paramObject;
    if (paramObject == null) {
      paramString = "null";
    }
    if (g == null) {
      g = new TreeMap();
    }
    g.put(str, paramString);
    return this;
  }
  
  public final EasyMetric a(@chc String paramString1, @chc String paramString2)
  {
    if (h == null) {
      h = new TreeMap();
    }
    h.put(paramString1, paramString2);
    return this;
  }
  
  public final EasyMetric a(Map<String, ?> paramMap)
  {
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        a((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    return this;
  }
  
  @chd
  public final String a()
  {
    return a;
  }
  
  public final void a(@chd MemoryStats paramMemoryStats1, @chc MemoryStats paramMemoryStats2)
  {
    a(paramMemoryStats2);
    if (paramMemoryStats1 != null)
    {
      a -= a;
      c -= c;
      b -= b;
      d -= d;
      e = true;
      a(paramMemoryStats2);
    }
  }
  
  protected final void a(String paramString, Map<String, String> paramMap)
  {
    if (paramMap.size() > 0) {
      a(paramString, paramMap);
    }
  }
  
  @Deprecated
  public void a(boolean paramBoolean)
  {
    if (akr.H()) {
      return;
    }
    f();
    c(paramBoolean);
  }
  
  public final EasyMetric b()
  {
    b = SystemClock.elapsedRealtime();
    n = new MemoryStats();
    return this;
  }
  
  public final EasyMetric b(Map<String, ?> paramMap)
  {
    if (h == null) {
      h = new TreeMap();
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      a((String)localEntry.getKey(), String.valueOf(localEntry.getValue()));
    }
    return this;
  }
  
  public void b(final boolean paramBoolean)
  {
    if (akr.H()) {
      return;
    }
    f();
    bhp.b(new Runnable()
    {
      public void run()
      {
        EasyMetric.a(EasyMetric.this, paramBoolean);
      }
    });
  }
  
  public final boolean c()
  {
    return (l != null) && (b != -1L);
  }
  
  public final long d()
  {
    long l2 = 0L;
    long l1 = l2;
    if (c()) {
      if ((l == null) || (k == -1L)) {
        break label72;
      }
    }
    label72:
    for (int i1 = 1;; i1 = 0)
    {
      l1 = l2;
      if (i1 == 0)
      {
        l1 = SystemClock.elapsedRealtime() - b;
        a(l1);
        a(n, new MemoryStats());
      }
      return l1;
    }
  }
  
  @Deprecated
  public void e()
  {
    a(true);
  }
  
  public static class EasyMetricFactory
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
  
  public static class MemoryStats
  {
    long a;
    long b;
    long c;
    long d;
    boolean e = false;
    
    public MemoryStats()
    {
      this(Runtime.getRuntime());
    }
    
    private MemoryStats(Runtime paramRuntime)
    {
      a = paramRuntime.freeMemory();
      c = paramRuntime.totalMemory();
      b = (c - a);
      d = paramRuntime.maxMemory();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.EasyMetric
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */