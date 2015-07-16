package com.snapchat.android.discover.ui;

import acr;
import aeb;
import aef;
import aey;
import aff;
import aji;
import android.animation.Animator;
import android.view.View;
import awd;
import awh;
import azb;
import bej;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.squareup.otto.Bus;
import gu;
import gy;
import hg;
import hl;
import java.util.ArrayList;
import lv;
import ml;

final class DSnapView$4
  extends awh
{
  DSnapView$4(DSnapView paramDSnapView, aey paramaey, boolean paramBoolean, DSnapPanel.MediaType paramMediaType, long paramLong) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    Object localObject2 = e;
    Object localObject3 = a;
    boolean bool = b;
    Object localObject1 = c;
    long l = d;
    Object localObject4 = g;
    Object localObject6 = h;
    if ((localObject4 == null) || (localObject6 == null)) {}
    int j;
    int m;
    do
    {
      return;
      j = l.d(g);
      m = l.e(g);
      paramAnimator = null;
      if (!bool) {
        paramAnimator = (Animator)localObject1;
      }
      localObject7 = ((aey)localObject3).e();
      lv locallv = f.c.getSourceType();
      localObject5 = new aeb();
      a = b;
      b = c;
      c = d;
      e = a;
      d = g;
      l = azb.a();
      m = azb.b();
      if (paramAnimator == DSnapPanel.MediaType.LOCAL_WEBPAGE) {
        n = true;
      }
      o = h;
      p = i;
      u = f.intValue();
      v = j;
      w = k.intValue();
      x = d;
      y = e;
      z = m;
      A = ((DSnapPanel.MediaType)localObject7);
      B = paramAnimator;
      C = bool;
      D = l;
      E = locallv;
      if (localObject1 != DSnapPanel.MediaType.LOCAL_WEBPAGE) {
        break;
      }
      e.b();
      localObject1 = ((DSnapView)localObject2).getRootView();
      localObject1 = ((aey)localObject3).a((View)localObject1, (aeb)localObject5, new ArrayList());
    } while (localObject1 == null);
    r.a(new bej((aji)localObject1, SnapCaptureContext.DISCOVER));
    localObject1 = ((DSnapPage)localObject4).a();
    Object localObject5 = g;
    localObject6 = a;
    int k = f.intValue();
    int i = k.intValue();
    Object localObject7 = d;
    int n = e;
    localObject3 = ((aey)localObject3).e();
    localObject2 = f.c.getSourceType();
    if (i == 0)
    {
      if (bool)
      {
        paramAnimator = new hl();
        publisherId = ((String)localObject1);
        dsnapId = ((String)localObject6);
        editionId = ((String)localObject5);
        mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject3, false);
        timeViewed = Double.valueOf(awd.a(l));
        source = ((lv)localObject2);
        if (j < 0) {}
        for (i = 1;; i = 0)
        {
          if (i == 0)
          {
            snapIndexCount = Long.valueOf(j);
            snapIndexPos = Long.valueOf(k + 1);
          }
          ScAnalyticsEventEngine.a(paramAnimator);
          return;
          localObject1 = b.getChildAt(((DSnapView)localObject2).getCurrentPanel());
          break;
        }
      }
      localObject4 = new hg();
      publisherId = ((String)localObject1);
      dsnapId = ((String)localObject6);
      editionId = ((String)localObject5);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject3, false);
      longformType = DiscoverUsageAnalytics.b(paramAnimator);
      timeViewed = Double.valueOf(awd.a(l));
      source = ((lv)localObject2);
      if (j < 0) {}
      for (i = 1;; i = 0)
      {
        if (i == 0)
        {
          snapIndexCount = Long.valueOf(j);
          snapIndexPos = Long.valueOf(k + 1);
        }
        ScAnalyticsEventEngine.a((ml)localObject4);
        return;
      }
    }
    if (bool)
    {
      paramAnimator = new gy();
      publisherId = ((String)localObject1);
      adsnapId = ((String)localObject7);
      editionId = ((String)localObject5);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject3, false);
      timeViewed = Double.valueOf(awd.a(l));
      source = ((lv)localObject2);
      if (j < 0) {}
      for (i = 1;; i = 0)
      {
        if (i == 0)
        {
          snapIndexCount = Long.valueOf(j);
          snapIndexPos = Long.valueOf(k + 1);
          adIndexPos = Long.valueOf(n);
          adIndexCount = Long.valueOf(m);
        }
        ScAnalyticsEventEngine.a(paramAnimator);
        return;
      }
    }
    localObject4 = new gu();
    publisherId = ((String)localObject1);
    adsnapId = ((String)localObject7);
    editionId = ((String)localObject5);
    mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject3, false);
    timeViewed = Double.valueOf(awd.a(l));
    longformType = DiscoverUsageAnalytics.b(paramAnimator);
    source = ((lv)localObject2);
    if (j < 0) {}
    for (i = 1;; i = 0)
    {
      if (i == 0)
      {
        snapIndexCount = Long.valueOf(j);
        snapIndexPos = Long.valueOf(k + 1);
        adIndexPos = Long.valueOf(n);
        adIndexCount = Long.valueOf(m);
      }
      ScAnalyticsEventEngine.a((ml)localObject4);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */