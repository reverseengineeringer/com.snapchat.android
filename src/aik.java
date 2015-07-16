import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;

public final class aik
{
  static long a = -1L;
  protected static String b = "PREVIEW_GEOFILTER_SWIPE_DELAY";
  protected static String c = "PREVIEW_GEOFILTER_AVAILABLE_DELAY";
  private static aik e = null;
  long d = a;
  private final bhk f;
  private final EasyMetric.EasyMetricFactory g;
  private long h = a;
  private long i = a;
  
  private aik(bhk parambhk, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    f = parambhk;
    g = paramEasyMetricFactory;
  }
  
  public static aik a()
  {
    try
    {
      if (e == null) {
        e = new aik(bhlmClock, new EasyMetric.EasyMetricFactory());
      }
      aik localaik = e;
      return localaik;
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
  
  @cbr
  protected final void b()
  {
    
    if (h != a) {
      return;
    }
    h = System.currentTimeMillis();
    d();
  }
  
  @cbr
  public final void c()
  {
    bhp.b();
    i = System.currentTimeMillis();
    if (a(d, c)) {
      d = a;
    }
    d();
  }
}

/* Location:
 * Qualified Name:     aik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */