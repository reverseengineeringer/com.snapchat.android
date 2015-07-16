import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class amd
{
  public final Map<String, amc> a = du.a();
  public final Object b = new Object();
  private final ami c;
  private final bhk d;
  private final ReleaseManager e;
  
  public amd()
  {
    this(new ami(), new bhk(), ReleaseManager.a());
  }
  
  private amd(ami paramami, bhk parambhk, ReleaseManager paramReleaseManager)
  {
    c = paramami;
    d = parambhk;
    e = paramReleaseManager;
  }
  
  public static String a(@chc amc paramamc)
  {
    return b(e, a);
  }
  
  private static String b(@chc String paramString1, @chc String paramString2)
  {
    return paramString1 + ":" + paramString2;
  }
  
  public final Collection<amc> a()
  {
    synchronized (b)
    {
      ArrayList localArrayList = dt.a(a.values());
      return localArrayList;
    }
  }
  
  public final void a(@chc String paramString1, @chc String paramString2)
  {
    synchronized (b)
    {
      paramString1 = (amc)a.remove(b(paramString1, paramString2));
      if (paramString1 != null)
      {
        paramString2 = c;
        EasyMetric localEasyMetric = EasyMetric.EasyMetricFactory.a("DATA_CONSUMED");
        localEasyMetric.a("requestId", b);
        localEasyMetric.a("type", e);
        localEasyMetric.a("return_size_bytes", Integer.valueOf(d));
        localEasyMetric.a("reachability", a.f());
        localEasyMetric.a(false);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     amd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */