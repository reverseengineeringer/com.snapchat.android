package com.snapchat.android.discover.ui;

import acq;
import acr;
import acy;
import ada;
import adb;
import aeb;
import aef;
import aef.c;
import aet;
import aeu;
import aev;
import aew;
import aex;
import aey;
import afa;
import afb;
import afc;
import afd;
import afd.a;
import afe;
import aff;
import aff.1;
import afj;
import afq;
import afv;
import afx;
import aji;
import ama;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import auv;
import awd;
import awh;
import awj;
import azb;
import bal;
import bdd;
import bej;
import bet;
import bhk;
import chc;
import chd;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics.WaitTimeMetricState;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPage.Form;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.Docking;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.VerticalSwipeLayout.a;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.squareup.otto.Bus;
import fz;
import gu;
import gy;
import hc;
import hd;
import hg;
import hj;
import hl;
import hq;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import lv;
import ml;
import na;
import nc;
import ng.a;

public class DSnapView
  extends DiscoverEditionPageView
  implements afq, VerticalSwipeLayout.a
{
  private final a A;
  private final int B;
  private float C;
  private float D;
  private ada E;
  private boolean F = false;
  private boolean G;
  private boolean H = false;
  private boolean I;
  private MediaState J = MediaState.NOT_STARTED;
  private DSnapPage K;
  private int L = -1;
  private afd.a M = new afd.a()
  {
    public final void a()
    {
      DSnapView.a(DSnapView.this).c();
    }
  };
  public final afd a;
  public VerticalSwipeLayout b;
  LinearLayout c;
  public afj d;
  aff e;
  public acr f;
  public DSnapPage g;
  public ChannelPage h;
  boolean i = false;
  protected boolean j = false;
  public long k = 0L;
  private final afa t;
  private final adb u;
  private final Map<Integer, aey> v;
  private final ReleaseManager w;
  private final afv x;
  private final auv y;
  private final Handler z;
  
  public DSnapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new afa(), new afd(paramContext), adb.a(), ReleaseManager.a(), new Handler(), ViewConfiguration.get(paramContext).getScaledTouchSlop(), new DiscoverUsageAnalytics(), new afv(), new afj(), new auv());
  }
  
  DSnapView(Context paramContext, AttributeSet paramAttributeSet, acy paramacy, acq paramacq, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, aef paramaef, bhk parambhk, Bus paramBus, afa paramafa, afd paramafd, adb paramadb, ReleaseManager paramReleaseManager, Handler paramHandler, int paramInt, afv paramafv, afj paramafj, auv paramauv, bal parambal)
  {
    super(paramContext, paramAttributeSet, paramacy, paramacq, paramDiscoverUsageAnalytics, paramaef, parambal, parambhk, paramBus);
    t = paramafa;
    u = paramadb;
    v = new HashMap();
    a = paramafd;
    w = paramReleaseManager;
    z = paramHandler;
    A = new a(this);
    B = paramInt;
    x = paramafv;
    d = paramafj;
    y = paramauv;
  }
  
  private DSnapView(Context paramContext, AttributeSet paramAttributeSet, afa paramafa, afd paramafd, adb paramadb, ReleaseManager paramReleaseManager, Handler paramHandler, int paramInt, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, afv paramafv, afj paramafj, auv paramauv)
  {
    super(paramContext, paramAttributeSet);
    t = paramafa;
    u = paramadb;
    v = new HashMap();
    a = paramafd;
    w = paramReleaseManager;
    z = paramHandler;
    A = new a(this);
    B = paramInt;
    x = paramafv;
    d = paramafj;
    y = paramauv;
  }
  
  private void a(@chc DSnapPage paramDSnapPage, @chd DSnapPanel paramDSnapPanel, DSnapPage.Form paramForm)
  {
    if (paramDSnapPanel == null) {}
    while (J != MediaState.SUCCESS) {
      return;
    }
    Object localObject1 = b(paramForm.getIndex());
    Object localObject2 = localObject1;
    Context localContext;
    if (localObject1 == null)
    {
      localContext = getContext();
      localObject1 = g;
      switch (afa.1.a[localObject1.ordinal()])
      {
      default: 
        localObject1 = null;
      }
    }
    for (;;)
    {
      if (localObject1 != null) {
        break label243;
      }
      localObject1 = null;
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        ((aey)localObject1).a(this);
        v.put(Integer.valueOf(paramForm.getIndex()), localObject1);
        if (b.getChildCount() > paramForm.getIndex()) {
          b.removeViewAt(paramForm.getIndex());
        }
        b.addView(((aey)localObject1).d(), paramForm.getIndex());
        localObject2 = localObject1;
      }
      if (localObject2 == null) {
        break;
      }
      ((aey)localObject2).a(paramDSnapPage, paramDSnapPanel);
      return;
      localObject1 = new aeu(localContext);
      continue;
      localObject1 = new afb(localContext);
      continue;
      localObject1 = new aex(localContext);
      continue;
      localObject1 = new aev(localContext);
    }
    label243:
    if ((!TextUtils.isEmpty(c)) && (d.isScreenDocking())) {
      localObject1 = new aew(localContext, (aey)localObject1);
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (paramDSnapPage.f() > 1)
      {
        localObject2 = localObject1;
        if (paramDSnapPage.d() == paramDSnapPanel) {
          localObject2 = new aet(localContext, (aey)localObject1);
        }
      }
      localObject1 = localObject2;
      if (((aey)localObject2).a(this, paramDSnapPage, paramDSnapPanel)) {
        break;
      }
      localObject1 = null;
      break;
    }
  }
  
  private static boolean a(@chc List<DSnapPage> paramList, int paramInt)
  {
    if (paramInt < paramList.size() - 1) {
      return ((DSnapPage)paramList.get(paramInt + 1)).g();
    }
    return false;
  }
  
  private void e(int paramInt)
  {
    Object localObject1 = g;
    if ((i) && (!u.a.getBoolean(SharedPreferenceKey.DISCOVER_SEEN_ONBOARDING.getKey(), false))) {}
    for (int m = 1;; m = 0)
    {
      if (m != 0)
      {
        if (c == null) {
          c = ((LinearLayout)((ViewStub)findViewById(2131362301)).inflate());
        }
        c.setVisibility(0);
        c.animate().alpha(1.0F).setDuration(300L);
        localObject1 = u.a.edit();
        ((SharedPreferences.Editor)localObject1).putBoolean(SharedPreferenceKey.DISCOVER_SEEN_ONBOARDING.getKey(), true);
        ((SharedPreferences.Editor)localObject1).apply();
      }
      if (!i()) {
        break;
      }
      return;
    }
    if (J != MediaState.SUCCESS)
    {
      localObject1 = g;
      J.name();
      return;
    }
    label175:
    Object localObject2;
    label205:
    label240:
    Object localObject3;
    if (DSnapPage.Form.LONGFORM.getIndex() == paramInt)
    {
      m = 1;
      if (m == 0) {
        break label417;
      }
      localObject1 = f;
      localObject2 = g;
      b.add(a);
      if ((m == 0) || (g.e().g != DSnapPanel.MediaType.REMOTE_VIDEO)) {
        break label446;
      }
      r.a(new bet(true));
      if (H) {
        break label462;
      }
      localObject1 = b(paramInt);
      if (localObject1 != null)
      {
        ((aey)localObject1).m_();
        if (g.g())
        {
          localObject1 = o;
          localObject2 = g.g;
          localObject3 = g.a();
          paramInt = g.e;
          ng.a locala = new ng.a();
          mChannelName = ((String)localObject3);
          mEditionName = ((String)localObject2);
          mPosition = paramInt;
          localObject2 = locala.a();
          a.a((nc)localObject2);
        }
      }
      k = SystemClock.elapsedRealtime();
      H = true;
      localObject2 = h;
      localObject3 = g;
      if (m == 0) {
        break label464;
      }
    }
    label417:
    label446:
    label462:
    label464:
    for (localObject1 = g.e();; localObject1 = g.d())
    {
      j();
      E = new ada((ChannelPage)localObject2, (DSnapPage)localObject3, (DSnapPanel)localObject1, getResources(), f);
      return;
      m = 0;
      break label175;
      localObject1 = f;
      localObject2 = g;
      a.add(a);
      break label205;
      r.a(new bet(false));
      break label240;
      break;
    }
  }
  
  @awj
  private void f(int paramInt)
  {
    Object localObject1 = g;
    b.setScrollable(false);
    localObject1 = b(paramInt);
    long l1;
    long l2;
    long l3;
    Object localObject7;
    if (localObject1 != null) {
      if ((H) && (k != 0L))
      {
        l1 = SystemClock.elapsedRealtime() - k;
        if (!g.g()) {
          break label446;
        }
        localObject2 = o;
        localObject4 = ((aey)localObject1).a(l1);
        localObject5 = g.d;
        localObject3 = g.g;
        str = g.a();
        m = g.f.intValue();
        n = l.d(g.g);
        int i1 = g.e;
        int i2 = l.e(g.g);
        localObject6 = ((aey)localObject1).e();
        l2 = ((aey)localObject1).k();
        l3 = ((aey)localObject1).j();
        localObject7 = f.c.getSourceType();
        if (localObject4 != DiscoverUsageAnalytics.ViewStatus.ERROR)
        {
          hd localhd = new hd();
          timeViewed = Double.valueOf(awd.a(l1));
          fullView = Boolean.valueOf(((DiscoverUsageAnalytics.ViewStatus)localObject4).wasFullView());
          adsnapId = ((String)localObject5);
          editionId = ((String)localObject3);
          publisherId = str;
          mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject6);
          source = ((lv)localObject7);
          if (l2 >= 0L) {
            mediaDisplayTimeSec = Double.valueOf(awd.a(l2));
          }
          if (l3 >= 0L) {
            snapTimeSec = Double.valueOf(awd.a(l3));
          }
          if (n >= 0) {
            break label441;
          }
          paramInt = 1;
          if (paramInt == 0)
          {
            snapIndexPos = Long.valueOf(m + 1);
            snapIndexCount = Long.valueOf(n);
            adIndexPos = Long.valueOf(i1);
            adIndexCount = Long.valueOf(i2);
          }
          ScAnalyticsEventEngine.a(localhd);
          localObject4 = new ng.a();
          mChannelName = str;
          mEditionName = ((String)localObject3);
          mPosition = i1;
          localObject3 = ((ng.a)localObject4).a();
          a.a((nc)localObject3, l1);
        }
      }
    }
    label441:
    label446:
    label717:
    do
    {
      do
      {
        ((aey)localObject1).n_();
        j();
        h();
        k = 0L;
        H = false;
        return;
        paramInt = 0;
        break;
        if (DSnapPage.Form.TOP_SNAP.getIndex() != paramInt) {
          break label717;
        }
        localObject2 = ((aey)localObject1).a(l1);
        localObject3 = g.a;
        str = g.g;
        localObject4 = g.a();
        m = g.f.intValue();
        n = l.d(g.g);
        localObject5 = f.c.getSourceType();
        localObject6 = ((aey)localObject1).e();
        l2 = ((aey)localObject1).k();
        l3 = ((aey)localObject1).j();
      } while (localObject2 == DiscoverUsageAnalytics.ViewStatus.ERROR);
      localObject7 = new hq();
      timeViewed = Double.valueOf(awd.a(l1));
      fullView = Boolean.valueOf(((DiscoverUsageAnalytics.ViewStatus)localObject2).wasFullView());
      dsnapId = ((String)localObject3);
      editionId = str;
      publisherId = ((String)localObject4);
      source = ((lv)localObject5);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject6);
      if (l2 >= 0L) {
        mediaDisplayTimeSec = Double.valueOf(awd.a(l2));
      }
      if (l3 >= 0L) {
        snapTimeSec = Double.valueOf(awd.a(l3));
      }
      if (n < 0) {}
      for (paramInt = 1;; paramInt = 0)
      {
        if (paramInt == 0)
        {
          snapIndexCount = Long.valueOf(n);
          snapIndexPos = Long.valueOf(m + 1);
        }
        ScAnalyticsEventEngine.a((ml)localObject7);
        break;
      }
    } while (DSnapPage.Form.LONGFORM.getIndex() != paramInt);
    Object localObject2 = g.a;
    Object localObject3 = g.g;
    String str = g.a();
    Object localObject4 = ((aey)localObject1).e();
    int m = g.f.intValue();
    int n = l.d(g.g);
    Object localObject5 = f.c.getSourceType();
    Object localObject6 = new hj();
    timeViewed = Double.valueOf(awd.a(l1));
    dsnapId = ((String)localObject2);
    editionId = ((String)localObject3);
    publisherId = str;
    longformType = DiscoverUsageAnalytics.b((DSnapPanel.MediaType)localObject4);
    source = ((lv)localObject5);
    if (n < 0) {}
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt == 0)
      {
        snapIndexPos = Long.valueOf(m + 1);
        snapIndexCount = Long.valueOf(n);
      }
      ScAnalyticsEventEngine.a((ml)localObject6);
      break;
    }
  }
  
  private void h()
  {
    z.removeCallbacks(A);
    G = false;
  }
  
  private boolean i()
  {
    return (c != null) && (c.isShown());
  }
  
  private void j()
  {
    if (E != null) {
      E.c = System.currentTimeMillis();
    }
  }
  
  @awj
  public final void a()
  {
    if (!j) {
      return;
    }
    h();
    int m = getCurrentPanel();
    DSnapPage localDSnapPage = g;
    f(m);
    j = false;
    r.a(new bdd(getInAppNotificationSourceId()));
  }
  
  public final void a(float paramFloat1, float paramFloat2, @chc final aey paramaey, final boolean paramBoolean, final DSnapPanel.MediaType paramMediaType, final long paramLong)
  {
    int m;
    aff localaff;
    if (paramaey.e() == DSnapPanel.MediaType.VIDEO)
    {
      m = 1;
      localaff = e;
      paramaey = new awh()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          Object localObject2 = DSnapView.this;
          Object localObject3 = paramaey;
          boolean bool = paramBoolean;
          Object localObject1 = paramMediaType;
          long l = paramLong;
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
            paramAnonymousAnimator = null;
            if (!bool) {
              paramAnonymousAnimator = (Animator)localObject1;
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
            if (paramAnonymousAnimator == DSnapPanel.MediaType.LOCAL_WEBPAGE) {
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
            B = paramAnonymousAnimator;
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
              paramAnonymousAnimator = new hl();
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
                ScAnalyticsEventEngine.a(paramAnonymousAnimator);
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
            longformType = DiscoverUsageAnalytics.b(paramAnonymousAnimator);
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
            paramAnonymousAnimator = new gy();
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
              ScAnalyticsEventEngine.a(paramAnonymousAnimator);
              return;
            }
          }
          localObject4 = new gu();
          publisherId = ((String)localObject1);
          adsnapId = ((String)localObject7);
          editionId = ((String)localObject5);
          mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject3, false);
          timeViewed = Double.valueOf(awd.a(l));
          longformType = DiscoverUsageAnalytics.b(paramAnonymousAnimator);
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
      };
      localaff.a();
      if (d != null)
      {
        e.setVisibility(0);
        c.setAlpha(0.0F);
        d.setVisibility(0);
        c.setVisibility(0);
        paramMediaType = c.findViewById(2131362275);
        if (m == 0) {
          break label544;
        }
        paramMediaType.setVisibility(0);
      }
    }
    for (;;)
    {
      float f1 = Math.max(Math.max(a - paramFloat1, paramFloat2), Math.max(b - paramFloat1, paramFloat2)) * 1.1F;
      e.setX(paramFloat1 - f1);
      e.setY(paramFloat2 - f1);
      paramMediaType = e.getLayoutParams();
      width = ((int)f1 * 2);
      height = ((int)f1 * 2);
      e.setLayoutParams(paramMediaType);
      paramMediaType = new AnimatorSet();
      paramMediaType.setDuration(350L);
      paramMediaType.setInterpolator(new AccelerateDecelerateInterpolator());
      ArrayList localArrayList = new ArrayList(8);
      localArrayList.add(ObjectAnimator.ofFloat(e, View.SCALE_X, new float[] { 0.0F, 1.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(e, View.SCALE_Y, new float[] { 0.0F, 1.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(e, View.ALPHA, new float[] { 0.5F, 0.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(c, View.SCALE_X, new float[] { 0.0F, 1.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(c, View.SCALE_Y, new float[] { 0.0F, 1.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(c, View.ALPHA, new float[] { 0.0F, 1.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(c, View.TRANSLATION_X, new float[] { paramFloat1 - 0.5F * a, 0.0F }));
      localArrayList.add(ObjectAnimator.ofFloat(c, View.TRANSLATION_Y, new float[] { paramFloat2 - 0.5F * b, 0.0F }));
      paramMediaType.addListener(new aff.1(localaff, paramaey));
      paramMediaType.playTogether(localArrayList);
      paramMediaType.start();
      return;
      m = 0;
      break;
      label544:
      paramMediaType.setVisibility(8);
    }
  }
  
  @awj
  public final void a(int paramInt)
  {
    if (j)
    {
      d(paramInt);
      return;
    }
    e.b();
    ??? = d;
    Object localObject2 = b;
    if (a != null)
    {
      a.clearAnimation();
      localObject4 = (ViewGroup)a.getParent();
      if (localObject4 != null) {
        ((ViewGroup)localObject4).removeView(a);
      }
      ((VerticalSwipeLayout)localObject2).addView(a, 0);
      a = null;
    }
    j = true;
    this.m.a(h, g);
    localObject2 = this.l;
    Object localObject4 = g.g;
    ((aef)localObject2).b(g.a, System.currentTimeMillis());
    for (;;)
    {
      Object localObject5;
      boolean bool;
      Object localObject6;
      String str1;
      Object localObject7;
      String str2;
      String str3;
      String str4;
      int m;
      int n;
      synchronized (b)
      {
        localObject5 = (aef.c)b.get(localObject4);
        if (localObject5 == null) {
          break label1171;
        }
        bool = ((aef)localObject2).a(f);
        ((aef)localObject2).a((String)localObject4, bool);
        if ((K == null) || (!K.g()))
        {
          ??? = f.d;
          localObject2 = g;
          bool = F;
          localObject4 = f.c;
          localObject5 = (EditionPerformanceAnalytics.WaitTimeMetricState)c.get(a);
          if ((localObject5 == null) || (localObject5 == EditionPerformanceAnalytics.WaitTimeMetricState.NOT_STARTED))
          {
            if (!((DSnapPage)localObject2).c().isLoading()) {
              break label936;
            }
            localObject5 = a;
            localObject6 = a;
            str1 = d;
            localObject7 = h;
            str2 = g;
            str3 = a;
            str4 = ((DSnapPage)localObject2).b();
            m = f.intValue();
            n = f;
            ((acq)localObject5).a("DISCOVER_DSNAP_WAIT_TIME", (String)localObject6, EasyMetric.EasyMetricFactory.a("DISCOVER_DSNAP_WAIT_TIME").a("session_id", str1).a("publisher_name", localObject7).a("edition_id", str2).a("dsnap_id", str3).a("has_ad", Boolean.valueOf(bool)).a("hash", str4).a("snap_index_pos", Integer.toString(m + 1)).a("source", ((EditionOpenOrigin)localObject4).toString()).a("snap_index_count", Integer.toString(n)).b());
            c.put(a, EditionPerformanceAnalytics.WaitTimeMetricState.TIMING);
            b.add(a);
          }
          this.l.a(g.g, g.f.intValue() + 1);
          d(paramInt);
          return;
        }
      }
      ??? = K.c();
      if (((MediaState)???).isError())
      {
        DiscoverUsageAnalytics localDiscoverUsageAnalytics = o;
        str1 = K.a;
        localObject4 = K.g;
        localObject5 = K.a();
        m = K.f.intValue();
        n = this.l.d(K.g);
        int i1 = K.e;
        int i2 = this.l.e(K.g);
        localObject7 = f.c.getSourceType();
        long l = m + 1;
        localObject6 = new hc();
        adsnapId = str1;
        editionId = ((String)localObject4);
        publisherId = ((String)localObject5);
        snapIndexPos = Long.valueOf(l);
        snapIndexCount = Long.valueOf(n);
        adIndexPos = Long.valueOf(i1);
        adIndexCount = Long.valueOf(i2);
        source = ((lv)localObject7);
        if ((??? == null) || (!((MediaState)???).isError())) {
          ??? = fz.FAILED;
        }
        for (;;)
        {
          additionalInfo = ((fz)???);
          ScAnalyticsEventEngine.a((ml)localObject6);
          ??? = new ng.a();
          mChannelName = ((String)localObject5);
          mEditionName = ((String)localObject4);
          mPosition = i1;
          ??? = ((ng.a)???).a();
          a.b((nc)???);
          break;
          switch (com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.1.b[???.ordinal()])
          {
          default: 
            ??? = fz.FAILED;
            break;
          case 1: 
            ??? = fz.SERVER_INTERNAL_ERROR;
            break;
          case 2: 
            ??? = fz.SERVER_INVALID_REQUEST_ERROR;
            break;
          case 3: 
            ??? = fz.SERVER_NETWORK_ERROR;
            break;
          case 4: 
            ??? = fz.SERVER_NO_FILL_ERROR;
            break;
          case 5: 
            ??? = fz.SERVER_OTHER_ERROR;
            break;
          case 6: 
            ??? = fz.CONTENT_NO_FILL;
            break;
          case 7: 
            ??? = fz.TIMEOUT;
            break;
          case 8: 
            ??? = fz.CLIENT_ERROR;
          }
        }
        label936:
        localObject5 = a;
        localObject6 = a;
        str1 = d;
        localObject7 = h;
        str2 = g;
        str3 = a;
        str4 = localDiscoverUsageAnalytics.b();
        m = f.intValue();
        n = f;
        MediaState localMediaState = localDiscoverUsageAnalytics.c();
        if (!b.contains(localObject6)) {
          EasyMetric.EasyMetricFactory.a("DISCOVER_DSNAP_WAIT_TIME").a("session_id", str1).a("publisher_name", localObject7).a("edition_id", str2).a("dsnap_id", str3).a("has_ad", Boolean.valueOf(bool)).a("hash", str4).a("type", localMediaState.toString().toLowerCase(Locale.ENGLISH)).a("snap_index_pos", Integer.toString(m + 1)).a("snap_index_count", Integer.toString(n)).a("source", ((EditionOpenOrigin)localObject4).toString()).a("reachability", a.f()).a(0L).a(false);
        }
        c.put(a, EditionPerformanceAnalytics.WaitTimeMetricState.REPORTED);
        continue;
        label1171:
        bool = false;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (g == null) {}
    aey localaey;
    do
    {
      do
      {
        do
        {
          return;
        } while (!j);
        if ((paramInt1 == 2) && (paramInt2 != paramInt3))
        {
          f(paramInt2);
          L = paramInt3;
          e(paramInt3);
          return;
        }
      } while (paramInt1 != 1);
      localaey = b(paramInt2);
    } while (localaey == null);
    localaey.f();
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    if (b == null) {
      return;
    }
    if (paramBoolean)
    {
      b.a(paramInt, 1.0D);
      return;
    }
    b.a(paramInt, 0.0D);
  }
  
  public final void a(String paramString)
  {
    if (j)
    {
      Object localObject = g;
      localObject = g.a();
      String str1 = g.g;
      String str2 = g.a;
      String str3 = g.b();
      EasyMetric.EasyMetricFactory.a("DISCOVER_DSNAP_MEDIA_PLAYBACK_ERROR").a("publisher_name", localObject).a("dsnap_id", str2).a("edition_id", str1).a("hash", str3).a("description", paramString).a(false);
      a.a(MediaState.GENERIC_ERROR);
      I = false;
    }
  }
  
  /* Error */
  public final void a(@chc List<DSnapPage> paramList, @chc DSnapPage paramDSnapPage1, int paramInt, @chd DSnapPage paramDSnapPage2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_2
    //   4: putfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   7: aload_0
    //   8: aload_1
    //   9: iload_3
    //   10: invokestatic 1053	com/snapchat/android/discover/ui/DSnapView:a	(Ljava/util/List;I)Z
    //   13: putfield 131	com/snapchat/android/discover/ui/DSnapView:F	Z
    //   16: aload_0
    //   17: aload 4
    //   19: putfield 859	com/snapchat/android/discover/ui/DSnapView:K	Lcom/snapchat/android/discover/model/DSnapPage;
    //   22: aload_0
    //   23: getfield 160	com/snapchat/android/discover/ui/DSnapView:a	Lafd;
    //   26: astore 4
    //   28: aload_0
    //   29: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   32: getfield 1055	com/snapchat/android/discover/model/DSnapPage:j	Ljava/lang/String;
    //   35: invokestatic 1060	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   38: istore 5
    //   40: iload 5
    //   42: aload 4
    //   44: getfield 1062	afd:j	I
    //   47: if_icmpeq +26 -> 73
    //   50: aload 4
    //   52: iload 5
    //   54: putfield 1062	afd:j	I
    //   57: aload 4
    //   59: iconst_1
    //   60: putfield 1064	afd:e	Z
    //   63: aload 4
    //   65: aload 4
    //   67: getfield 1066	afd:g	Lcom/snapchat/android/discover/model/MediaState;
    //   70: invokevirtual 1050	afd:a	(Lcom/snapchat/android/discover/model/MediaState;)V
    //   73: aload_1
    //   74: iload_3
    //   75: invokestatic 1053	com/snapchat/android/discover/ui/DSnapView:a	(Ljava/util/List;I)Z
    //   78: ifeq +141 -> 219
    //   81: aload_1
    //   82: iload_3
    //   83: iconst_1
    //   84: iadd
    //   85: invokeinterface 317 2 0
    //   90: checkcast 292	com/snapchat/android/discover/model/DSnapPage
    //   93: astore_1
    //   94: aload_1
    //   95: invokevirtual 874	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   98: invokevirtual 877	com/snapchat/android/discover/model/MediaState:isLoading	()Z
    //   101: ifeq +118 -> 219
    //   104: aload_1
    //   105: invokevirtual 874	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   108: astore_1
    //   109: aload_0
    //   110: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   113: invokevirtual 874	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   116: pop
    //   117: aload_0
    //   118: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   121: astore_2
    //   122: aload_0
    //   123: getfield 140	com/snapchat/android/discover/ui/DSnapView:J	Lcom/snapchat/android/discover/model/MediaState;
    //   126: getstatic 190	com/snapchat/android/discover/model/MediaState:SUCCESS	Lcom/snapchat/android/discover/model/MediaState;
    //   129: if_acmpeq +98 -> 227
    //   132: aload_1
    //   133: getstatic 190	com/snapchat/android/discover/model/MediaState:SUCCESS	Lcom/snapchat/android/discover/model/MediaState;
    //   136: if_acmpne +91 -> 227
    //   139: iconst_1
    //   140: istore_3
    //   141: aload_0
    //   142: aload_1
    //   143: putfield 140	com/snapchat/android/discover/ui/DSnapView:J	Lcom/snapchat/android/discover/model/MediaState;
    //   146: aload_0
    //   147: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   150: invokevirtual 297	com/snapchat/android/discover/model/DSnapPage:d	()Lcom/snapchat/android/discover/model/DSnapPanel;
    //   153: astore_1
    //   154: aload_0
    //   155: aload_0
    //   156: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   159: aload_1
    //   160: getstatic 634	com/snapchat/android/discover/model/DSnapPage$Form:TOP_SNAP	Lcom/snapchat/android/discover/model/DSnapPage$Form;
    //   163: invokespecial 1068	com/snapchat/android/discover/ui/DSnapView:a	(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    //   166: aload_0
    //   167: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   170: invokevirtual 423	com/snapchat/android/discover/model/DSnapPage:e	()Lcom/snapchat/android/discover/model/DSnapPanel;
    //   173: astore_1
    //   174: aload_0
    //   175: aload_0
    //   176: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   179: aload_1
    //   180: getstatic 406	com/snapchat/android/discover/model/DSnapPage$Form:LONGFORM	Lcom/snapchat/android/discover/model/DSnapPage$Form;
    //   183: invokespecial 1068	com/snapchat/android/discover/ui/DSnapView:a	(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    //   186: aload_0
    //   187: getfield 160	com/snapchat/android/discover/ui/DSnapView:a	Lafd;
    //   190: aload_0
    //   191: getfield 140	com/snapchat/android/discover/ui/DSnapView:J	Lcom/snapchat/android/discover/model/MediaState;
    //   194: invokevirtual 1050	afd:a	(Lcom/snapchat/android/discover/model/MediaState;)V
    //   197: iload_3
    //   198: ifeq +18 -> 216
    //   201: aload_0
    //   202: getfield 129	com/snapchat/android/discover/ui/DSnapView:j	Z
    //   205: ifeq +11 -> 216
    //   208: aload_0
    //   209: aload_0
    //   210: getfield 144	com/snapchat/android/discover/ui/DSnapView:L	I
    //   213: invokevirtual 817	com/snapchat/android/discover/ui/DSnapView:d	(I)V
    //   216: aload_0
    //   217: monitorexit
    //   218: return
    //   219: aload_2
    //   220: invokevirtual 874	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   223: astore_1
    //   224: goto -115 -> 109
    //   227: iconst_0
    //   228: istore_3
    //   229: goto -88 -> 141
    //   232: astore_1
    //   233: aload_0
    //   234: monitorexit
    //   235: aload_1
    //   236: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	237	0	this	DSnapView
    //   0	237	1	paramList	List<DSnapPage>
    //   0	237	2	paramDSnapPage1	DSnapPage
    //   0	237	3	paramInt	int
    //   0	237	4	paramDSnapPage2	DSnapPage
    //   38	15	5	m	int
    // Exception table:
    //   from	to	target	type
    //   2	73	232	finally
    //   73	109	232	finally
    //   109	139	232	finally
    //   141	197	232	finally
    //   201	216	232	finally
    //   219	224	232	finally
  }
  
  @chd
  public final aey b(int paramInt)
  {
    return (aey)v.get(Integer.valueOf(paramInt));
  }
  
  public final void b()
  {
    Object localObject;
    afc localafc;
    if ((!J.isLoading()) && (!J.isError()))
    {
      localObject = a;
      ((afd)localObject).a();
      localafc = d;
      float f1;
      if (!e)
      {
        e = true;
        if (f == null) {
          break label152;
        }
        f.cancel();
        f1 = a.getAlpha();
        localafc.a(Math.abs(300.0F * f1), f1, false);
      }
      localObject = c;
      if (!f)
      {
        f = true;
        if (g == null) {
          break label162;
        }
        g.cancel();
        f1 = a.getAlpha();
        ((afe)localObject).a(Math.abs(300.0F * f1), f1, false);
      }
    }
    for (;;)
    {
      b.setScrollable(true);
      I = true;
      return;
      label152:
      localafc.a(300);
      break;
      label162:
      ((afe)localObject).a(300);
    }
  }
  
  public final void c(int paramInt) {}
  
  public final boolean c()
  {
    return (g != null) && ((J == MediaState.SUCCESS) || (H)) && (!i());
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    if (b.getChildCount() > 0) {
      return b.canScrollVertically(paramInt);
    }
    return super.canScrollVertically(paramInt);
  }
  
  final void d(int paramInt)
  {
    if (paramInt >= 0)
    {
      if (paramInt != getCurrentPanel()) {
        a(paramInt, false);
      }
      L = paramInt;
      e(paramInt);
      return;
    }
    e(getCurrentPanel());
  }
  
  public final boolean d()
  {
    return i();
  }
  
  public final boolean e()
  {
    if (getCurrentPanel() == DSnapPage.Form.LONGFORM.getIndex())
    {
      a(DSnapPage.Form.TOP_SNAP.getIndex(), true);
      return true;
    }
    return false;
  }
  
  public final boolean f()
  {
    if ((b == null) || (b.e())) {}
    aey localaey;
    do
    {
      return false;
      localaey = b(getCurrentPanel());
    } while (localaey == null);
    return localaey.i();
  }
  
  public final boolean g()
  {
    if (g == null) {}
    for (;;)
    {
      return false;
      if (DSnapPage.Form.LONGFORM.getIndex() == getCurrentPanel()) {}
      for (int m = 1; (m != 0) && (g.e().g == DSnapPanel.MediaType.REMOTE_VIDEO); m = 0) {
        return true;
      }
    }
  }
  
  public int getCurrentPanel()
  {
    if (b != null) {
      return b.getCurrentPanel();
    }
    return 0;
  }
  
  @chd
  public DSnapPage getDSnapPage()
  {
    return g;
  }
  
  public String getInAppNotificationSourceId()
  {
    return g.i();
  }
  
  public int getPublisherPrimaryColor()
  {
    if (h != null) {
      return h.h;
    }
    return -16777216;
  }
  
  public int getPublisherSecondaryColor()
  {
    if (h != null) {
      return h.i;
    }
    return -1;
  }
  
  int getSelectedPanel()
  {
    return L;
  }
  
  public final void o_()
  {
    super.o_();
    new StringBuilder("Resetting view containing ").append(g);
    Object localObject1 = a;
    Object localObject2;
    if (c != null)
    {
      localObject2 = c;
      ((afe)localObject2).b();
      ((afe)localObject2).a();
    }
    if (d != null)
    {
      localObject2 = d;
      ((afc)localObject2).a();
      ((afc)localObject2).b();
    }
    i = null;
    j = 0;
    g = MediaState.NOT_STARTED;
    h = MediaState.NOT_STARTED;
    e = true;
    f = false;
    localObject1 = v.values().iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((aey)((Iterator)localObject1).next()).c();
    }
    v.clear();
    b.removeAllViews();
    b.d();
    b.setScrollable(false);
    g = null;
    h = null;
    E = null;
    F = false;
    G = false;
    i = false;
    j = false;
    H = false;
    J = MediaState.NOT_STARTED;
    k = 0L;
    L = -1;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    aey localaey = b(getCurrentPanel());
    if (localaey != null)
    {
      int m = orientation;
      localaey.g();
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    b = ((VerticalSwipeLayout)findViewById(2131362297));
    a.k = M;
    b.f();
    b.a(this);
    e = new aff(getContext(), this);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((c != null) && (c.isShown())) {
      return true;
    }
    int m;
    if (getCurrentPanel() == DSnapPage.Form.TOP_SNAP.getIndex())
    {
      m = 1;
      if ((j) && (m != 0) && (paramMotionEvent.getAction() == 1) && (c())) {
        s.a();
      }
      ReleaseManager.k();
      if (J != MediaState.SUCCESS) {}
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 1: 
    case 3: 
      do
      {
        for (;;)
        {
          return false;
          m = 0;
          break;
          if (!G)
          {
            Object localObject = e;
            paramMotionEvent.getX();
            paramMotionEvent.getY();
            ((aff)localObject).a();
            localObject = A;
            float f1 = paramMotionEvent.getX();
            float f2 = paramMotionEvent.getY();
            b = f1;
            c = f2;
            z.postDelayed(A, 400L);
            C = paramMotionEvent.getX();
            D = paramMotionEvent.getY();
            G = true;
          }
        }
      } while (!G);
    }
    for (;;)
    {
      h();
      break;
      if (!G) {
        break;
      }
      if (Math.abs(paramMotionEvent.getRawY() - D) <= B) {
        if (Math.abs(paramMotionEvent.getRawX() - C) <= B) {
          break;
        }
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((c != null) && (c.isShown()))
    {
      if (paramMotionEvent.getAction() == 1) {
        c.animate().alpha(0.0F).setDuration(300L).setListener(new awh()
        {
          public final void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            paramAnonymousAnimator = DSnapView.this;
            if (c != null) {
              c.setVisibility(8);
            }
            i = false;
            paramAnonymousAnimator.d(paramAnonymousAnimator.getCurrentPanel());
          }
        });
      }
      return true;
    }
    aey localaey = b(getCurrentPanel());
    if (localaey != null) {
      return localaey.d().dispatchTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public final void p_()
  {
    if ((s != null) && (TextUtils.equals(g.b, "auto_advancing"))) {
      s.a();
    }
  }
  
  void setDSnapItemViewAdapterMap(HashMap<Integer, aey> paramHashMap)
  {
    v.clear();
    v.putAll(paramHashMap);
  }
  
  void setDSnapPreviewToolPresenter(aff paramaff)
  {
    e = paramaff;
  }
  
  public void setOnboardingEnabled(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  final class a
    implements Runnable
  {
    DSnapView a;
    float b;
    float c;
    
    public a(DSnapView paramDSnapView)
    {
      a = paramDSnapView;
    }
    
    public final void run()
    {
      if (DSnapView.b(DSnapView.this) != null)
      {
        ReleaseManager.k();
        if (DSnapView.c(DSnapView.this)) {
          DSnapView.d(DSnapView.this).a(new afx(a, b, c));
        }
      }
      DSnapView.e(DSnapView.this);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */