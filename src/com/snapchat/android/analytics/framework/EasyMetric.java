package com.snapchat.android.analytics.framework;

import ajx;
import android.os.SystemClock;
import ate;
import aua;
import aza;
import bgk;
import bgl;
import bgp;
import cgb;
import cgc;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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
  @cgc
  protected String a;
  public long b = -1L;
  @Inject
  protected UpdateSnapsAnalyticsPlatform c;
  @Inject
  protected FlurryAnalyticsPlatform d;
  @Inject
  protected UserActionTracePlatform e;
  @cgc
  private Map<String, Object> g;
  @cgc
  private Map<String, Object> h;
  @cgc
  private Map<String, Long> i;
  @cgc
  private Map<String, Long> j;
  private final bgk k;
  private final ate l;
  private MemoryStats m = null;
  @cgb
  private final List<AnalyticsPlatform> n = new ArrayList();
  
  public EasyMetric()
  {
    this(null, bglmClock, ate.a());
  }
  
  public EasyMetric(@cgc String paramString)
  {
    this(paramString, bglmClock, ate.a());
  }
  
  private EasyMetric(@cgc String paramString, bgk parambgk, ate paramate)
  {
    SnapchatApplication.b().c().a(this);
    k = parambgk;
    a = paramString;
    l = paramate;
    a(c);
    a(d);
    a(e);
  }
  
  private EasyMetric a(@cgb AnalyticsPlatform paramAnalyticsPlatform)
  {
    if (paramAnalyticsPlatform == null) {
      throw new NullPointerException();
    }
    n.add(paramAnalyticsPlatform);
    return this;
  }
  
  private void a(@cgb MemoryStats paramMemoryStats)
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
    Iterator localIterator = n.iterator();
    while (localIterator.hasNext())
    {
      AnalyticsPlatform localAnalyticsPlatform = (AnalyticsPlatform)localIterator.next();
      if ((!(localAnalyticsPlatform instanceof FlurryAnalyticsPlatform)) || (paramBoolean)) {
        localAnalyticsPlatform.a(a, g, h, i, j);
      }
    }
  }
  
  private void e()
  {
    f += 1;
    if (c())
    {
      a(SystemClock.elapsedRealtime() - b);
      a(m, new MemoryStats());
    }
    a("year_class", l.b());
    if (a == null) {
      throw new NullPointerException("No event name has been set.");
    }
    Timber.b("EasyMetric", "TRACE - " + f + " (" + a + ") " + g + " " + h + " " + i + " " + j, new Object[0]);
    Timber.a("EasyMetric", false, true, "TRACE - " + f + " (" + a + ") " + g + " " + h + " " + i + " " + j, new Object[0]);
  }
  
  public final EasyMetric a(long paramLong)
  {
    a("timeBucket", aua.a(paramLong));
    if (i == null) {
      i = new TreeMap();
    }
    i.put("time", Long.valueOf(paramLong));
    return this;
  }
  
  public final EasyMetric a(@cgb String paramString)
  {
    a = paramString;
    return this;
  }
  
  public final EasyMetric a(@cgb String paramString, @cgc Object paramObject)
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
  
  public final EasyMetric a(@cgb String paramString1, @cgb String paramString2)
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
  
  @cgc
  public final String a()
  {
    return a;
  }
  
  public final void a(@cgc MemoryStats paramMemoryStats1, @cgb MemoryStats paramMemoryStats2)
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
    if (ajx.H())
    {
      Timber.b("EasyMetric", "User is logged into SnapKidz. Aborting logging action.", new Object[0]);
      return;
    }
    e();
    c(paramBoolean);
  }
  
  public final EasyMetric b()
  {
    b = SystemClock.elapsedRealtime();
    m = new MemoryStats();
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
    if (ajx.H())
    {
      Timber.b("EasyMetric", "User is logged into SnapKidz. Aborting logging action.", new Object[0]);
      return;
    }
    e();
    bgp.b(new Runnable()
    {
      public void run()
      {
        EasyMetric.a(EasyMetric.this, paramBoolean);
      }
    });
  }
  
  public final boolean c()
  {
    return (k != null) && (b != -1L);
  }
  
  @Deprecated
  public void d()
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