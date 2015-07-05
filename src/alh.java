import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class alh
{
  public final Map<String, alg> a = dl.a();
  public final Object b = new Object();
  private final alm c;
  private final bgk d;
  private final ReleaseManager e;
  
  public alh()
  {
    this(new alm(), new bgk(), ReleaseManager.a());
  }
  
  private alh(alm paramalm, bgk parambgk, ReleaseManager paramReleaseManager)
  {
    c = paramalm;
    d = parambgk;
    e = paramReleaseManager;
  }
  
  public static String a(@cgb alg paramalg)
  {
    return b(e, a);
  }
  
  private static String b(@cgb String paramString1, @cgb String paramString2)
  {
    return paramString1 + ":" + paramString2;
  }
  
  public final Collection<alg> a()
  {
    synchronized (b)
    {
      ArrayList localArrayList = dk.a(a.values());
      return localArrayList;
    }
  }
  
  public final void a(@cgb String paramString1, @cgb String paramString2)
  {
    synchronized (b)
    {
      paramString1 = (alg)a.remove(b(paramString1, paramString2));
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
 * Qualified Name:     alh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */