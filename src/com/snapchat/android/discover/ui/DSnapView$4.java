package com.snapchat.android.discover.ui;

import adb;
import adf;
import ady;
import aef;
import aim;
import android.animation.Animator;
import android.view.View;
import avf;
import avj;
import ayd;
import bdj;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.squareup.otto.Bus;
import gl;
import gp;
import gx;
import hc;
import java.util.ArrayList;
import lt;

final class DSnapView$4
  extends avj
{
  DSnapView$4(DSnapView paramDSnapView, ady paramady, boolean paramBoolean, DSnapPanel.MediaType paramMediaType, long paramLong) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    Object localObject2 = e;
    Object localObject3 = a;
    boolean bool = b;
    Object localObject1 = c;
    long l = d;
    int j;
    int m;
    Object localObject5;
    Object localObject6;
    Object localObject4;
    int k;
    int n;
    if (g != null)
    {
      j = l.d(g.g);
      m = l.e(g.g);
      paramAnimator = null;
      if (!bool) {
        paramAnimator = (Animator)localObject1;
      }
      localObject5 = g;
      localObject6 = h;
      DSnapPanel.MediaType localMediaType = ((ady)localObject3).e();
      localObject4 = new adb();
      a = b;
      b = c;
      c = d;
      e = a;
      d = g;
      l = ayd.a();
      m = ayd.b();
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
      A = localMediaType;
      B = paramAnimator;
      C = bool;
      D = l;
      if (localObject1 != DSnapPanel.MediaType.LOCAL_WEBPAGE) {
        break label539;
      }
      e.b();
      localObject1 = ((DSnapView)localObject2).getRootView();
      localObject1 = ((ady)localObject3).a((View)localObject1, (adb)localObject4, new ArrayList());
      if (localObject1 != null)
      {
        r.a(new bdj((aim)localObject1, SnapCaptureContext.DISCOVER));
        localObject1 = g.a();
        localObject4 = g.g;
        localObject5 = g.a;
        k = g.f.intValue();
        i = g.k.intValue();
        localObject6 = g.d;
        n = g.e;
        localObject2 = ((ady)localObject3).e();
        if (i != 0) {
          break label669;
        }
        if (!bool) {
          break label562;
        }
        paramAnimator = new hc();
        publisherId = ((String)localObject1);
        dsnapId = ((String)localObject5);
        editionId = ((String)localObject4);
        mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2, false);
        timeViewed = Double.valueOf(avf.a(l));
        if (j >= 0) {
          break label557;
        }
      }
    }
    label539:
    label557:
    for (int i = 1;; i = 0)
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
    label562:
    localObject3 = new gx();
    publisherId = ((String)localObject1);
    dsnapId = ((String)localObject5);
    editionId = ((String)localObject4);
    mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2, false);
    longformType = DiscoverUsageAnalytics.b(paramAnimator);
    timeViewed = Double.valueOf(avf.a(l));
    if (j < 0) {}
    for (i = 1;; i = 0)
    {
      if (i == 0)
      {
        snapIndexCount = Long.valueOf(j);
        snapIndexPos = Long.valueOf(k + 1);
      }
      ScAnalyticsEventEngine.a((lt)localObject3);
      return;
    }
    label669:
    if (bool)
    {
      paramAnimator = new gp();
      publisherId = ((String)localObject1);
      adsnapId = ((String)localObject6);
      editionId = ((String)localObject4);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2, false);
      timeViewed = Double.valueOf(avf.a(l));
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
    localObject3 = new gl();
    publisherId = ((String)localObject1);
    adsnapId = ((String)localObject6);
    editionId = ((String)localObject4);
    mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2, false);
    timeViewed = Double.valueOf(avf.a(l));
    longformType = DiscoverUsageAnalytics.b(paramAnimator);
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
      ScAnalyticsEventEngine.a((lt)localObject3);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */