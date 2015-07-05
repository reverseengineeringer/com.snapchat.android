import android.content.res.Resources;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;

public final class aca
  extends anv
{
  private final DiscoverUsageAnalytics e;
  private final Bus f;
  private final adf g;
  private final Resources h;
  private final ReleaseManager i;
  private final ajx j;
  private final ChannelPage k;
  private final DSnapPage l;
  private final DSnapPanel m;
  
  private aca(DiscoverUsageAnalytics paramDiscoverUsageAnalytics, anw paramanw, adf paramadf, Bus paramBus, ChannelPage paramChannelPage, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel, Resources paramResources, ReleaseManager paramReleaseManager, ajx paramajx)
  {
    super("", System.currentTimeMillis(), -1L);
    g = paramadf;
    e = paramDiscoverUsageAnalytics;
    f = paramBus;
    k = paramChannelPage;
    m = paramDSnapPanel;
    l = paramDSnapPage;
    paramanw.a(this);
    h = paramResources;
    i = paramReleaseManager;
    j = paramajx;
  }
  
  public aca(ChannelPage paramChannelPage, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel, Resources paramResources)
  {
    this(localDiscoverUsageAnalytics, localanw, localadf, ban.a(), paramChannelPage, paramDSnapPage, paramDSnapPanel, paramResources, ReleaseManager.a(), ajx.a());
  }
  
  public final String a()
  {
    return null;
  }
  
  public final void a(long paramLong)
  {
    if (k == null)
    {
      Timber.e("DiscoverScreenshotDetectionSession", "Could not report screenshot, context is not valid", new Object[0]);
      return;
    }
    if ((l == null) || (m == null))
    {
      str = k.b;
      localObject1 = k.e;
      localObject2 = k.d();
      i1 = g.d(k.e);
      localObject3 = new hi();
      publisherId = str;
      editionId = ((String)localObject1);
      splashId = ((String)localObject2);
      if (i1 < 0) {}
      for (n = 1;; n = 0)
      {
        if (n == 0)
        {
          snapIndexCount = Long.valueOf(i1);
          snapIndexPos = Long.valueOf(0L);
        }
        ScAnalyticsEventEngine.a((lt)localObject3);
        str = "splash";
        ReleaseManager.k();
        if ((!ajx.aP()) && (l != null) && (l.o))
        {
          localObject1 = new bbg(null, h.getString(2131493133), k.h, k.i, true, l.i());
          f.a(localObject1);
        }
        Timber.c("DiscoverScreenshotDetectionSession", "Detected %s screenshot!", new Object[] { str });
        return;
      }
    }
    if (l.e() == m)
    {
      str = k.b;
      localObject1 = l.g;
      localObject3 = l.a;
      localObject4 = l.d;
      n = l.k.intValue();
      localObject2 = m.g;
      i1 = l.f.intValue();
      i2 = g.d(l.g);
      i3 = l.e;
      i4 = g.e(l.g);
      if (n == 0)
      {
        localObject4 = new gw();
        publisherId = str;
        editionId = ((String)localObject1);
        dsnapId = ((String)localObject3);
        longformType = DiscoverUsageAnalytics.b((DSnapPanel.MediaType)localObject2);
        if (i2 < 0) {}
        for (n = 1;; n = 0)
        {
          if (n == 0)
          {
            snapIndexCount = Long.valueOf(i2);
            snapIndexPos = Long.valueOf(i1 + 1);
          }
          ScAnalyticsEventEngine.a((lt)localObject4);
          str = "longform";
          break;
        }
      }
      localObject3 = new gk();
      publisherId = str;
      editionId = ((String)localObject1);
      adsnapId = ((String)localObject4);
      longformType = DiscoverUsageAnalytics.b((DSnapPanel.MediaType)localObject2);
      if (i2 < 0) {}
      for (n = 1;; n = 0)
      {
        if (n == 0)
        {
          snapIndexCount = Long.valueOf(i2);
          snapIndexPos = Long.valueOf(i1 + 1);
          adIndexPos = Long.valueOf(i3);
          adIndexCount = Long.valueOf(i4);
        }
        ScAnalyticsEventEngine.a((lt)localObject3);
        str = "longform";
        break;
      }
    }
    String str = k.b;
    Object localObject1 = l.g;
    Object localObject3 = l.a;
    Object localObject4 = l.d;
    int n = l.k.intValue();
    int i1 = l.f.intValue();
    int i2 = g.d(l.g);
    int i3 = l.e;
    int i4 = g.e(l.g);
    Object localObject2 = m.g;
    if (n == 0)
    {
      localObject4 = new hb();
      publisherId = str;
      editionId = ((String)localObject1);
      dsnapId = ((String)localObject3);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2);
      if (i2 < 0) {}
      for (n = 1;; n = 0)
      {
        if (n == 0)
        {
          snapIndexCount = Long.valueOf(i2);
          snapIndexPos = Long.valueOf(i1 + 1);
        }
        ScAnalyticsEventEngine.a((lt)localObject4);
        str = "top snap";
        break;
      }
    }
    localObject3 = new go();
    publisherId = str;
    editionId = ((String)localObject1);
    adsnapId = ((String)localObject4);
    mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2);
    if (i2 < 0) {}
    for (n = 1;; n = 0)
    {
      if (n == 0)
      {
        snapIndexCount = Long.valueOf(i2);
        snapIndexPos = Long.valueOf(i1 + 1);
        adIndexPos = Long.valueOf(i3);
        adIndexCount = Long.valueOf(i4);
      }
      ScAnalyticsEventEngine.a((lt)localObject3);
      str = "top snap";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     aca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */