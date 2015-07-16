import android.content.res.Resources;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;

public final class ada
  extends aos
{
  private final DiscoverUsageAnalytics e;
  private final Bus f;
  private final aef g;
  private final Resources h;
  private final ReleaseManager i;
  private final akr j;
  private final ChannelPage k;
  private final DSnapPage l;
  private final DSnapPanel m;
  private final acr n;
  
  private ada(DiscoverUsageAnalytics paramDiscoverUsageAnalytics, aot paramaot, aef paramaef, Bus paramBus, ChannelPage paramChannelPage, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel, Resources paramResources, ReleaseManager paramReleaseManager, akr paramakr, acr paramacr)
  {
    super("", System.currentTimeMillis(), -1L);
    g = paramaef;
    e = paramDiscoverUsageAnalytics;
    f = paramBus;
    k = paramChannelPage;
    m = paramDSnapPanel;
    l = paramDSnapPage;
    paramaot.a(this);
    h = paramResources;
    i = paramReleaseManager;
    j = paramakr;
    n = paramacr;
  }
  
  public ada(ChannelPage paramChannelPage, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel, Resources paramResources, acr paramacr)
  {
    this(new DiscoverUsageAnalytics(), aot.a(), aef.a(), bbo.a(), paramChannelPage, paramDSnapPage, paramDSnapPanel, paramResources, ReleaseManager.a(), akr.a(), paramacr);
  }
  
  public final String a()
  {
    return null;
  }
  
  public final void a(long paramLong)
  {
    if (k == null) {
      return;
    }
    if ((l == null) || (m == null))
    {
      localObject1 = "splash";
      str1 = k.b;
      str2 = k.e;
      localObject2 = k.d();
      i2 = g.d(k.e);
      locallv = n.c.getSourceType();
      localObject3 = new hr();
      publisherId = str1;
      editionId = str2;
      splashId = ((String)localObject2);
      source = locallv;
      if (i2 < 0) {}
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0)
        {
          snapIndexCount = Long.valueOf(i2);
          snapIndexPos = Long.valueOf(0L);
        }
        ScAnalyticsEventEngine.a((ml)localObject3);
        ReleaseManager.k();
        if ((!akr.aO()) && (l != null) && (l.o))
        {
          localObject1 = new bcg(h.getString(2131493133), k.h, k.i, l.i());
          f.a(localObject1);
        }
        return;
      }
    }
    if (l.e() == m)
    {
      localObject1 = "longform";
      str1 = k.b;
      str2 = l.g;
      localObject3 = l.a;
      localObject4 = l.d;
      i1 = l.k.intValue();
      localObject2 = m.g;
      i2 = l.f.intValue();
      i3 = g.d(l.g);
      i4 = l.e;
      i5 = g.e(l.g);
      locallv = n.c.getSourceType();
      if (i1 == 0)
      {
        localObject4 = new hf();
        publisherId = str1;
        editionId = str2;
        dsnapId = ((String)localObject3);
        longformType = DiscoverUsageAnalytics.b((DSnapPanel.MediaType)localObject2);
        source = locallv;
        if (i3 < 0) {}
        for (i1 = 1;; i1 = 0)
        {
          if (i1 == 0)
          {
            snapIndexCount = Long.valueOf(i3);
            snapIndexPos = Long.valueOf(i2 + 1);
          }
          ScAnalyticsEventEngine.a((ml)localObject4);
          break;
        }
      }
      localObject3 = new gt();
      publisherId = str1;
      editionId = str2;
      adsnapId = ((String)localObject4);
      longformType = DiscoverUsageAnalytics.b((DSnapPanel.MediaType)localObject2);
      source = locallv;
      if (i3 < 0) {}
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0)
        {
          snapIndexCount = Long.valueOf(i3);
          snapIndexPos = Long.valueOf(i2 + 1);
          adIndexPos = Long.valueOf(i4);
          adIndexCount = Long.valueOf(i5);
        }
        ScAnalyticsEventEngine.a((ml)localObject3);
        break;
      }
    }
    Object localObject1 = "top snap";
    String str1 = k.b;
    String str2 = l.g;
    Object localObject3 = l.a;
    Object localObject4 = l.d;
    int i1 = l.k.intValue();
    int i2 = l.f.intValue();
    int i3 = g.d(l.g);
    int i4 = l.e;
    int i5 = g.e(l.g);
    Object localObject2 = m.g;
    lv locallv = n.c.getSourceType();
    if (i1 == 0)
    {
      localObject4 = new hk();
      publisherId = str1;
      editionId = str2;
      dsnapId = ((String)localObject3);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2);
      source = locallv;
      if (i3 < 0) {}
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0)
        {
          snapIndexCount = Long.valueOf(i3);
          snapIndexPos = Long.valueOf(i2 + 1);
        }
        ScAnalyticsEventEngine.a((ml)localObject4);
        break;
      }
    }
    localObject3 = new gx();
    publisherId = str1;
    editionId = str2;
    adsnapId = ((String)localObject4);
    mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2);
    source = locallv;
    if (i3 < 0) {}
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        snapIndexCount = Long.valueOf(i3);
        snapIndexPos = Long.valueOf(i2 + 1);
        adIndexPos = Long.valueOf(i4);
        adIndexCount = Long.valueOf(i5);
      }
      ScAnalyticsEventEngine.a((ml)localObject3);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ada
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */