package com.snapchat.android.discover.ui;

import acq;
import acr;
import acy;
import ada;
import aef;
import afq;
import afu;
import akn;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import awd;
import bal;
import bet;
import bhk;
import chc;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;
import com.snapchat.android.ui.TextureVideoView;
import com.squareup.otto.Bus;
import hs;
import java.util.Map;
import lv;
import na;
import na.2;
import nb;
import nc;
import ng.a;

public class DSnapIntroVideoView
  extends DiscoverEditionPageView
{
  protected afq a = new afq()
  {
    public final void a(String paramAnonymousString)
    {
      DSnapIntroVideoView.e(DSnapIntroVideoView.this);
      String str1 = eb;
      String str2 = DSnapIntroVideoView.e(DSnapIntroVideoView.this).d();
      EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR").a("publisher_name", str1).a("url", str2).a("description", paramAnonymousString).a(false);
      p_();
      DSnapIntroVideoView.a(DSnapIntroVideoView.this, DiscoverUsageAnalytics.ViewStatus.ERROR);
    }
    
    public final void b()
    {
      DSnapIntroVideoView.c(DSnapIntroVideoView.this);
      DSnapIntroVideoView.d(DSnapIntroVideoView.this).setVisibility(8);
    }
    
    public final void p_()
    {
      if (DSnapIntroVideoView.a(DSnapIntroVideoView.this) != null)
      {
        DSnapIntroVideoView.a(DSnapIntroVideoView.this, DiscoverUsageAnalytics.ViewStatus.COMPLETED);
        DSnapIntroVideoView.b(DSnapIntroVideoView.this).a();
      }
    }
  };
  private final afu b;
  private View c;
  private TextureVideoView d;
  private ChannelPage e;
  private ada f;
  private boolean g = false;
  private long h = 0L;
  private boolean i = false;
  private DiscoverUsageAnalytics.ViewStatus j = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
  private acr k;
  
  public DSnapIntroVideoView(@chc Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new afu(false), bal.a());
  }
  
  protected DSnapIntroVideoView(Context paramContext, AttributeSet paramAttributeSet, acy paramacy, acq paramacq, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, aef paramaef, bhk parambhk, Bus paramBus, afu paramafu, bal parambal)
  {
    super(paramContext, paramAttributeSet, paramacy, paramacq, paramDiscoverUsageAnalytics, paramaef, parambal, parambhk, paramBus);
    b = paramafu;
  }
  
  private DSnapIntroVideoView(@chc Context paramContext, AttributeSet paramAttributeSet, afu paramafu, bal parambal)
  {
    super(paramContext, paramAttributeSet);
    b = paramafu;
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
    Object localObject1 = e;
    int m;
    if (h != 0L) {
      if (e != null)
      {
        m = d.getDuration();
        int i1 = Math.min(m, d.getCurrentPosition());
        localObject1 = o;
        long l1 = System.currentTimeMillis() - h;
        Object localObject3 = j;
        String str2 = e.d();
        Object localObject2 = e.e;
        String str1 = e.b;
        int n = l.d(e.e);
        DSnapPanel.MediaType localMediaType = DSnapPanel.MediaType.VIDEO;
        long l2 = i1;
        long l3 = m;
        lv locallv = k.c.getSourceType();
        if (localObject3 != DiscoverUsageAnalytics.ViewStatus.ERROR)
        {
          hs localhs = new hs();
          timeViewed = Double.valueOf(awd.a(l1));
          fullView = Boolean.valueOf(((DiscoverUsageAnalytics.ViewStatus)localObject3).wasFullView());
          splashId = str2;
          editionId = ((String)localObject2);
          publisherId = str1;
          mediaType = DiscoverUsageAnalytics.a(localMediaType);
          source = locallv;
          if (l2 >= 0L) {
            mediaDisplayTimeSec = Double.valueOf(awd.a(l2));
          }
          if (l3 >= 0L) {
            snapTimeSec = Double.valueOf(awd.a(l3));
          }
          if (n >= 0) {
            break label420;
          }
          m = 1;
          if (m == 0)
          {
            snapIndexCount = Long.valueOf(n);
            snapIndexPos = Long.valueOf(0L);
          }
          ScAnalyticsEventEngine.a(localhs);
          localObject3 = new ng.a();
          mChannelName = str1;
          mEditionName = ((String)localObject2);
          mPosition = 0;
          localObject2 = ((ng.a)localObject3).a();
          localObject1 = a;
          str1 = ((nc)localObject2).b();
          l2 = mConfiguration.mStudySettings.a("AdManager", "ad_splash_impression_duration");
          if (l1 < l2) {
            break label425;
          }
          mUIThreadHandler.post(new na.2((na)localObject1, (nc)localObject2, str1));
        }
      }
    }
    label420:
    label425:
    for (;;)
    {
      h = 0L;
      b.b();
      h();
      setCanAdvance(true);
      g = false;
      return;
      m = 0;
      break;
    }
  }
  
  public final void a(int paramInt)
  {
    if (g) {
      return;
    }
    Object localObject1 = e;
    g = true;
    r.a(new bet(false));
    h = System.currentTimeMillis();
    localObject1 = o;
    Object localObject2 = e.l;
    Map localMap = e.f();
    String str1 = e.e;
    String str2 = e.b;
    ng.a locala = new ng.a();
    mChannelName = str2;
    mEditionName = str1;
    mPosition = 0;
    mAdUnitId = ((String)localObject2);
    mTargetingParams = localMap;
    localObject2 = locala.a();
    localObject1 = a;
    ((nc)localObject2).b();
    ((na)localObject1).a((nc)localObject2, null);
    m.a(e, null);
    b.c = e.g();
    b.a();
  }
  
  public final void a(@chc ChannelPage paramChannelPage, acr paramacr)
  {
    e = paramChannelPage;
    k = paramacr;
    e.g();
    d = ((TextureVideoView)findViewById(2131362289));
    c = findViewById(2131362290);
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
  
  public final void o_()
  {
    super.o_();
    h();
    e = null;
    g = false;
    h = 0L;
    i = false;
    j = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
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