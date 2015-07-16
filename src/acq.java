import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class acq
{
  private static final acq c = new acq();
  public final ama a;
  public final ConcurrentHashMap<String, Map<String, EasyMetric>> b;
  private final EasyMetric.EasyMetricFactory d;
  private final aed e;
  
  private acq()
  {
    this(new EasyMetric.EasyMetricFactory(), ama.a(), aed.a());
  }
  
  private acq(EasyMetric.EasyMetricFactory paramEasyMetricFactory, ama paramama, aed paramaed)
  {
    d = paramEasyMetricFactory;
    a = paramama;
    e = paramaed;
    b = new ConcurrentHashMap();
  }
  
  public static acq a()
  {
    return c;
  }
  
  private boolean b(String paramString1, String paramString2)
  {
    paramString1 = (Map)b.get(paramString1);
    if (paramString1 == null) {
      return false;
    }
    return paramString1.containsKey(paramString2);
  }
  
  @chd
  public final EasyMetric a(String paramString1, String paramString2)
  {
    synchronized (b)
    {
      paramString1 = (Map)b.get(paramString1);
      if (paramString1 != null)
      {
        paramString1 = (EasyMetric)paramString1.remove(paramString2);
        return paramString1;
      }
      return null;
    }
  }
  
  public final void a(ChannelPage arg1)
  {
    String str = b;
    synchronized (b)
    {
      if (!b("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME", str)) {
        a("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME", str, EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME").b());
      }
      return;
    }
  }
  
  public final void a(ChannelPage arg1, EditionOpenOrigin paramEditionOpenOrigin)
  {
    String str = b;
    EasyMetric localEasyMetric = EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME");
    localEasyMetric.a("source", paramEditionOpenOrigin.toString());
    if (e.a(???))
    {
      localEasyMetric.a("publisher_name", b).a("intro_video_url", ???.d()).a(0L).a("reachability", a.f()).a("success", Boolean.valueOf(e.b(???))).a(false);
      return;
    }
    synchronized (b)
    {
      if (!b("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME", str))
      {
        localEasyMetric.b();
        a("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME", str, localEasyMetric);
      }
      return;
    }
  }
  
  public final void a(String paramString1, String paramString2, EasyMetric paramEasyMetric)
  {
    synchronized (b)
    {
      Map localMap = (Map)b.get(paramString1);
      Object localObject = localMap;
      if (localMap == null) {
        localObject = new HashMap();
      }
      ((Map)localObject).put(paramString2, paramEasyMetric);
      b.put(paramString1, localObject);
      return;
    }
  }
  
  public final void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramString = a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME", paramString);
    if (paramString != null) {
      paramString.a("success", Boolean.valueOf(paramBoolean2)).a("abandoned", Boolean.valueOf(paramBoolean1)).a("reachability", a.f()).a(false);
    }
  }
  
  public final void b(ChannelPage paramChannelPage)
  {
    if (!e.a(paramChannelPage)) {}
    Object localObject;
    do
    {
      return;
      localObject = b;
      EasyMetric localEasyMetric = a("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME", (String)localObject);
      if (localEasyMetric != null) {
        localEasyMetric.a("publisher_name", localObject).a("reachability", a.f()).a("success", Boolean.valueOf(e.b(paramChannelPage))).a(false);
      }
      localObject = a("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME", (String)localObject);
    } while (localObject == null);
    ((EasyMetric)localObject).a("publisher_name", b).a("intro_video_url", paramChannelPage.d()).a("reachability", a.f()).a("success", Boolean.valueOf(e.b(paramChannelPage))).a(false);
  }
  
  public final void b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramString = a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME", paramString);
    if (paramString != null) {
      paramString.a("success", Boolean.valueOf(paramBoolean2)).a("abandoned", Boolean.valueOf(paramBoolean1)).a("reachability", a.f()).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     acq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */