package com.snapchat.android.discover.ui;

import abq;
import aby;
import aca;
import adf;
import aeq;
import aeu;
import ajt;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import avf;
import azm;
import bdt;
import bgk;
import cgb;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;
import com.snapchat.android.ui.TextureVideoView;
import com.squareup.otto.Bus;
import hj;
import java.util.Map;
import mj;
import mj.2;
import mk;
import ml;
import mp.a;

public class DSnapIntroVideoView
  extends DiscoverEditionPageView
{
  protected aeq a = new aeq()
  {
    public final void a(String paramAnonymousString)
    {
      Timber.e("DSnapIntroVideoView", "Skipping intro video for %s because the media failed to load (%s).", new Object[] { DSnapIntroVideoView.e(DSnapIntroVideoView.this), paramAnonymousString });
      String str1 = eb;
      String str2 = DSnapIntroVideoView.e(DSnapIntroVideoView.this).d();
      EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR").a("publisher_name", str1).a("url", str2).a("description", paramAnonymousString).a(false);
      r_();
      DSnapIntroVideoView.a(DSnapIntroVideoView.this, DiscoverUsageAnalytics.ViewStatus.ERROR);
    }
    
    public final void b()
    {
      DSnapIntroVideoView.c(DSnapIntroVideoView.this);
      DSnapIntroVideoView.d(DSnapIntroVideoView.this).setVisibility(8);
    }
    
    public final void r_()
    {
      if (DSnapIntroVideoView.a(DSnapIntroVideoView.this) != null)
      {
        DSnapIntroVideoView.a(DSnapIntroVideoView.this, DiscoverUsageAnalytics.ViewStatus.COMPLETED);
        DSnapIntroVideoView.b(DSnapIntroVideoView.this).a();
      }
    }
  };
  private final aeu b;
  private View c;
  private TextureVideoView d;
  private ChannelPage e;
  private aca f;
  private boolean g = false;
  private long h = 0L;
  private boolean i = false;
  private DiscoverUsageAnalytics.ViewStatus j = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
  
  public DSnapIntroVideoView(@cgb Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new aeu(false), azm.a());
  }
  
  protected DSnapIntroVideoView(Context paramContext, AttributeSet paramAttributeSet, aby paramaby, abq paramabq, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, adf paramadf, bgk parambgk, Bus paramBus, aeu paramaeu, azm paramazm)
  {
    super(paramContext, paramAttributeSet, paramaby, paramabq, paramDiscoverUsageAnalytics, paramadf, paramazm, parambgk, paramBus);
    b = paramaeu;
  }
  
  private DSnapIntroVideoView(@cgb Context paramContext, AttributeSet paramAttributeSet, aeu paramaeu, azm paramazm)
  {
    super(paramContext, paramAttributeSet);
    b = paramaeu;
  }
  
  private void h()
  {
    if (f != null) {
      f.c = System.currentTimeMillis();
    }
  }
  
  public final void a()
  {
    if (!g) {
      return;
    }
    Timber.c("DSnapIntroVideoView", "Exited intro video page for channel %s", new Object[] { e });
    long l1;
    String str1;
    int k;
    long l2;
    if (h != 0L) {
      if (e != null)
      {
        Object localObject1 = o;
        l1 = System.currentTimeMillis() - h;
        Object localObject3 = j;
        String str2 = e.d();
        Object localObject2 = e.e;
        str1 = e.b;
        int m = l.d(e.e);
        DSnapPanel.MediaType localMediaType = DSnapPanel.MediaType.VIDEO;
        if (localObject3 != DiscoverUsageAnalytics.ViewStatus.ERROR)
        {
          hj localhj = new hj();
          timeViewed = Double.valueOf(avf.a(l1));
          fullView = Boolean.valueOf(((DiscoverUsageAnalytics.ViewStatus)localObject3).wasFullView());
          splashId = str2;
          editionId = ((String)localObject2);
          publisherId = str1;
          mediaType = DiscoverUsageAnalytics.a(localMediaType);
          if (m >= 0) {
            break label364;
          }
          k = 1;
          if (k == 0)
          {
            snapIndexCount = Long.valueOf(m);
            snapIndexPos = Long.valueOf(0L);
          }
          ScAnalyticsEventEngine.a(localhj);
          localObject3 = new mp.a();
          mChannelName = str1;
          mEditionName = ((String)localObject2);
          mPosition = 0;
          localObject2 = ((mp.a)localObject3).a();
          localObject1 = a;
          str1 = ((ml)localObject2).b();
          Timber.c("AdManager", "EndAdSplash for adKey:%s, viewTime:%s ms", new Object[] { str1, Long.valueOf(l1) });
          l2 = mConfiguration.mStudySettings.a("AdManager", "ad_splash_impression_duration");
          if (l1 < l2) {
            break label369;
          }
          mUIThreadHandler.post(new mj.2((mj)localObject1, (ml)localObject2, str1));
        }
      }
    }
    for (;;)
    {
      h = 0L;
      b.b();
      h();
      setCanAdvance(true);
      g = false;
      return;
      label364:
      k = 0;
      break;
      label369:
      Timber.c("AdManager", "endAdSplash(%s,%d) not shown long enough %d for recordImpression", new Object[] { str1, Long.valueOf(l1), Long.valueOf(l2) });
    }
  }
  
  public final void a(int paramInt)
  {
    if (g) {
      return;
    }
    Timber.c("DSnapIntroVideoView", "Entering intro video page for channel %s", new Object[] { e });
    g = true;
    r.a(new bdt(false));
    h = System.currentTimeMillis();
    Object localObject1 = o;
    Object localObject2 = e.l;
    Map localMap = e.f();
    String str1 = e.e;
    String str2 = e.b;
    mp.a locala = new mp.a();
    mChannelName = str2;
    mEditionName = str1;
    mPosition = 0;
    mAdUnitId = ((String)localObject2);
    mTargetingParams = localMap;
    localObject2 = locala.a();
    localObject1 = a;
    Timber.c("AdManager", "BeginAdSplash for adKey: ", new Object[] { ((ml)localObject2).b() });
    ((mj)localObject1).a((ml)localObject2, null);
    m.a(e, null);
    b.c = e.g();
    b.a();
  }
  
  public final void a(@cgb ChannelPage paramChannelPage)
  {
    e = paramChannelPage;
    Timber.c("DSnapIntroVideoView", "Initializing for intro video URI: %s", new Object[] { e.g() });
    d = ((TextureVideoView)findViewById(2131362291));
    c = findViewById(2131362292);
    c.setBackgroundColor(e.h);
    paramChannelPage = b;
    paramChannelPage.a(d, d);
    b.e = a;
  }
  
  public final boolean c()
  {
    return i;
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    return false;
  }
  
  public final boolean d()
  {
    return false;
  }
  
  public final boolean e()
  {
    return false;
  }
  
  public final boolean f()
  {
    return false;
  }
  
  public final boolean g()
  {
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((i) && (paramMotionEvent.getAction() == 1)) {
      s.a();
    }
    return true;
  }
  
  public final void q_()
  {
    super.q_();
    h();
    e = null;
    g = false;
    h = 0L;
    i = false;
    j = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
  }
  
  public void setCanAdvance(boolean paramBoolean)
  {
    i = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapIntroVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */