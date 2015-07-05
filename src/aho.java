import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;

public final class aho
{
  static long a = -1L;
  protected static String b = "PREVIEW_GEOFILTER_SWIPE_DELAY";
  protected static String c = "PREVIEW_GEOFILTER_AVAILABLE_DELAY";
  private static aho e = null;
  long d = a;
  private final bgk f;
  private final EasyMetric.EasyMetricFactory g;
  private long h = a;
  private long i = a;
  
  private aho(bgk parambgk, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    f = parambgk;
    g = paramEasyMetricFactory;
  }
  
  public static aho a()
  {
    try
    {
      if (e == null) {
        e = new aho(bglmClock, new EasyMetric.EasyMetricFactory());
      }
      aho localaho = e;
      return localaho;
    }
    finally {}
  }
  
  private boolean a(long paramLong, String paramString)
  {
    if ((paramLong == a) || (i == a)) {
      return false;
    }
    paramLong = Math.max(i - paramLong, 0L);
    EasyMetric.EasyMetricFactory.a(paramString).a(paramLong).a(false);
    return true;
  }
  
  private void d()
  {
    if (a(h, b)) {
      h = a;
    }
  }
  
  @caq
  protected final void b()
  {
    
    if (h != a) {
      return;
    }
    h = System.currentTimeMillis();
    d();
  }
  
  @caq
  public final void c()
  {
    bgp.b();
    i = System.currentTimeMillis();
    if (a(d, c)) {
      d = a;
    }
    d();
  }
}

/* Location:
 * Qualified Name:     aho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */