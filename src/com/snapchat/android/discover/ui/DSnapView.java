package com.snapchat.android.discover.ui;

import abq;
import abr;
import aby;
import aca;
import acb;
import adb;
import adf;
import adf.c;
import adt;
import adu;
import adv;
import adw;
import adx;
import ady;
import aea;
import aeb;
import aec;
import aed;
import aed.a;
import aee;
import aef;
import aef.1;
import aej;
import aeq;
import aev;
import aex;
import aim;
import ale;
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
import atx;
import avf;
import avj;
import avl;
import ayd;
import azm;
import bcd;
import bdj;
import bdt;
import bgk;
import cgb;
import cgc;
import com.snapchat.android.Timber;
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
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.VerticalSwipeLayout.a;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.squareup.otto.Bus;
import fq;
import gl;
import gp;
import gt;
import gu;
import gx;
import ha;
import hc;
import hh;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import ld;
import lt;
import mj;
import ml;
import mp.a;

public class DSnapView
  extends DiscoverEditionPageView
  implements aeq, VerticalSwipeLayout.a
{
  private final a A;
  private final int B;
  private float C;
  private float D;
  private aca E;
  private boolean F = false;
  private boolean G;
  private boolean H = false;
  private boolean I;
  private MediaState J = MediaState.NOT_STARTED;
  private DSnapPage K;
  private int L = -1;
  private aed.a M = new aed.a()
  {
    public final void a()
    {
      DSnapView.a(DSnapView.this).c();
    }
  };
  public final aed a;
  public VerticalSwipeLayout b;
  LinearLayout c;
  public aej d;
  aef e;
  public abr f;
  public DSnapPage g;
  public ChannelPage h;
  boolean i = false;
  protected boolean j = false;
  public long k = 0L;
  private final aea t;
  private final acb u;
  private final Map<Integer, ady> v;
  private final ReleaseManager w;
  private final aev x;
  private final atx y;
  private final Handler z;
  
  public DSnapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new aea(), new aed(paramContext), acb.a(), ReleaseManager.a(), new Handler(), ViewConfiguration.get(paramContext).getScaledTouchSlop(), new DiscoverUsageAnalytics(), new aev(), new aej(), new atx());
  }
  
  DSnapView(Context paramContext, AttributeSet paramAttributeSet, aby paramaby, abq paramabq, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, adf paramadf, bgk parambgk, Bus paramBus, aea paramaea, aed paramaed, acb paramacb, ReleaseManager paramReleaseManager, Handler paramHandler, int paramInt, aev paramaev, aej paramaej, atx paramatx, azm paramazm)
  {
    super(paramContext, paramAttributeSet, paramaby, paramabq, paramDiscoverUsageAnalytics, paramadf, paramazm, parambgk, paramBus);
    t = paramaea;
    u = paramacb;
    v = new HashMap();
    a = paramaed;
    w = paramReleaseManager;
    z = paramHandler;
    A = new a(this);
    B = paramInt;
    x = paramaev;
    d = paramaej;
    y = paramatx;
  }
  
  private DSnapView(Context paramContext, AttributeSet paramAttributeSet, aea paramaea, aed paramaed, acb paramacb, ReleaseManager paramReleaseManager, Handler paramHandler, int paramInt, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, aev paramaev, aej paramaej, atx paramatx)
  {
    super(paramContext, paramAttributeSet);
    t = paramaea;
    u = paramacb;
    v = new HashMap();
    a = paramaed;
    w = paramReleaseManager;
    z = paramHandler;
    A = new a(this);
    B = paramInt;
    x = paramaev;
    d = paramaej;
    y = paramatx;
  }
  
  private void a(@cgb DSnapPage paramDSnapPage, @cgc DSnapPanel paramDSnapPanel, DSnapPage.Form paramForm)
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
      switch (aea.1.a[localObject1.ordinal()])
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
        ((ady)localObject1).a(this);
        v.put(Integer.valueOf(paramForm.getIndex()), localObject1);
        if (b.getChildCount() > paramForm.getIndex()) {
          b.removeViewAt(paramForm.getIndex());
        }
        b.addView(((ady)localObject1).d(), paramForm.getIndex());
        localObject2 = localObject1;
      }
      if (localObject2 == null) {
        break;
      }
      ((ady)localObject2).a(paramDSnapPage, paramDSnapPanel);
      return;
      localObject1 = new adu(localContext);
      continue;
      localObject1 = new aeb(localContext);
      continue;
      localObject1 = new adx(localContext);
      continue;
      localObject1 = new adv(localContext);
    }
    label243:
    if ((!TextUtils.isEmpty(c)) && (d.isScreenDocking())) {
      localObject1 = new adw(localContext, (ady)localObject1);
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (paramDSnapPage.f() > 1)
      {
        localObject2 = localObject1;
        if (paramDSnapPage.d() == paramDSnapPanel) {
          localObject2 = new adt(localContext, (ady)localObject1);
        }
      }
      localObject1 = localObject2;
      if (((ady)localObject2).a(this, paramDSnapPage, paramDSnapPanel)) {
        break;
      }
      localObject1 = null;
      break;
    }
  }
  
  private static boolean a(@cgb List<DSnapPage> paramList, int paramInt)
  {
    if (paramInt < paramList.size() - 1) {
      return ((DSnapPage)paramList.get(paramInt + 1)).g();
    }
    return false;
  }
  
  private void e(int paramInt)
  {
    Timber.c("DSnapView", "Enter %s panel %d", new Object[] { g, Integer.valueOf(paramInt) });
    int m;
    Object localObject2;
    if (DSnapPage.Form.LONGFORM.getIndex() == paramInt)
    {
      m = 1;
      if (m == 0) {
        break label208;
      }
      localObject1 = f;
      localObject2 = g;
      b.add(a);
      label71:
      if ((!i) || (u.a.getBoolean(SharedPreferenceKey.DISCOVER_SEEN_ONBOARDING.getKey(), false))) {
        break label239;
      }
    }
    label208:
    label239:
    for (int n = 1;; n = 0)
    {
      if (n != 0)
      {
        if (c == null) {
          c = ((LinearLayout)((ViewStub)findViewById(2131362303)).inflate());
        }
        c.setVisibility(0);
        c.animate().alpha(1.0F).setDuration(300L);
        localObject1 = u.a.edit();
        ((SharedPreferences.Editor)localObject1).putBoolean(SharedPreferenceKey.DISCOVER_SEEN_ONBOARDING.getKey(), true);
        ((SharedPreferences.Editor)localObject1).apply();
      }
      if (!i()) {
        break label244;
      }
      return;
      m = 0;
      break;
      localObject1 = f;
      localObject2 = g;
      a.add(a);
      break label71;
    }
    label244:
    if (J != MediaState.SUCCESS)
    {
      Timber.c("DSnapView", "Cannot enter %s panel %d yet, loading state is %s", new Object[] { g, Integer.valueOf(paramInt), J.name() });
      return;
    }
    label327:
    Object localObject3;
    if ((m != 0) && (g.e().g == DSnapPanel.MediaType.REMOTE_VIDEO))
    {
      r.a(new bdt(true));
      if (H) {
        break label518;
      }
      localObject1 = b(paramInt);
      if (localObject1 != null)
      {
        ((ady)localObject1).o_();
        if (g.g())
        {
          localObject1 = o;
          localObject2 = g.g;
          localObject3 = g.a();
          paramInt = g.e;
          mp.a locala = new mp.a();
          mChannelName = ((String)localObject3);
          mEditionName = ((String)localObject2);
          mPosition = paramInt;
          localObject2 = locala.a();
          a.a((ml)localObject2);
        }
      }
      k = SystemClock.elapsedRealtime();
      H = true;
      localObject2 = h;
      localObject3 = g;
      if (m == 0) {
        break label520;
      }
    }
    label518:
    label520:
    for (Object localObject1 = g.e();; localObject1 = g.d())
    {
      j();
      E = new aca((ChannelPage)localObject2, (DSnapPage)localObject3, (DSnapPanel)localObject1, getResources());
      return;
      r.a(new bdt(false));
      break label327;
      break;
    }
  }
  
  @avl
  private void f(int paramInt)
  {
    Timber.c("DSnapView", "Leaving %s panel %d", new Object[] { g, Integer.valueOf(paramInt) });
    b.setScrollable(false);
    ady localady = b(paramInt);
    long l;
    Object localObject1;
    Object localObject6;
    if (localady != null) {
      if ((H) && (k != 0L))
      {
        l = SystemClock.elapsedRealtime() - k;
        if (!g.g()) {
          break label394;
        }
        localObject1 = o;
        localObject3 = localady.a(l);
        localObject4 = g.d;
        localObject2 = g.g;
        str = g.a();
        m = g.f.intValue();
        n = this.l.d(g.g);
        int i1 = g.e;
        int i2 = this.l.e(g.g);
        localObject5 = localady.e();
        if (localObject3 != DiscoverUsageAnalytics.ViewStatus.ERROR)
        {
          localObject6 = new gu();
          timeViewed = Double.valueOf(avf.a(l));
          fullView = Boolean.valueOf(((DiscoverUsageAnalytics.ViewStatus)localObject3).wasFullView());
          adsnapId = ((String)localObject4);
          editionId = ((String)localObject2);
          publisherId = str;
          mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject5);
          if (n >= 0) {
            break label389;
          }
          paramInt = 1;
          if (paramInt == 0)
          {
            snapIndexPos = Long.valueOf(m + 1);
            snapIndexCount = Long.valueOf(n);
            adIndexPos = Long.valueOf(i1);
            adIndexCount = Long.valueOf(i2);
          }
          ScAnalyticsEventEngine.a((lt)localObject6);
          localObject3 = new mp.a();
          mChannelName = str;
          mEditionName = ((String)localObject2);
          mPosition = i1;
          localObject2 = ((mp.a)localObject3).a();
          a.a((ml)localObject2, l);
        }
      }
    }
    label389:
    label394:
    label441:
    label658:
    label671:
    do
    {
      do
      {
        localady.p_();
        j();
        h();
        k = 0L;
        H = false;
        return;
        paramInt = 0;
        break;
        localObject1 = f;
        localObject2 = g.a;
        if (!c.containsKey(localObject2)) {
          break label658;
        }
        localObject1 = (ld)c.get(localObject2);
        f.a(g.a, ld.DISCOVER);
        if (DSnapPage.Form.TOP_SNAP.getIndex() != paramInt) {
          break label671;
        }
        localObject2 = localady.a(l);
        str = g.a;
        localObject3 = g.g;
        localObject4 = g.a();
        m = g.f.intValue();
        n = this.l.d(g.g);
        localObject5 = localady.e();
      } while (localObject2 == DiscoverUsageAnalytics.ViewStatus.ERROR);
      localObject6 = new hh();
      timeViewed = Double.valueOf(avf.a(l));
      fullView = Boolean.valueOf(((DiscoverUsageAnalytics.ViewStatus)localObject2).wasFullView());
      dsnapId = str;
      editionId = ((String)localObject3);
      publisherId = ((String)localObject4);
      source = ((ld)localObject1);
      mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject5);
      if (n < 0) {}
      for (paramInt = 1;; paramInt = 0)
      {
        if (paramInt == 0)
        {
          snapIndexCount = Long.valueOf(n);
          snapIndexPos = Long.valueOf(m + 1);
        }
        ScAnalyticsEventEngine.a((lt)localObject6);
        break;
        localObject1 = ld.DISCOVER;
        break label441;
      }
    } while (DSnapPage.Form.LONGFORM.getIndex() != paramInt);
    Object localObject2 = g.a;
    String str = g.g;
    Object localObject3 = g.a();
    Object localObject4 = localady.e();
    int m = g.f.intValue();
    int n = this.l.d(g.g);
    Object localObject5 = new ha();
    timeViewed = Double.valueOf(avf.a(l));
    dsnapId = ((String)localObject2);
    editionId = str;
    publisherId = ((String)localObject3);
    longformType = DiscoverUsageAnalytics.b((DSnapPanel.MediaType)localObject4);
    source = ((ld)localObject1);
    if (n < 0) {}
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt == 0)
      {
        snapIndexPos = Long.valueOf(m + 1);
        snapIndexCount = Long.valueOf(n);
      }
      ScAnalyticsEventEngine.a((lt)localObject5);
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
  
  @avl
  public final void a()
  {
    if (!j) {
      return;
    }
    h();
    int m = getCurrentPanel();
    Timber.c("DSnapView", "Exit page %s with current panel %d", new Object[] { g, Integer.valueOf(m) });
    f(m);
    j = false;
    r.a(new bcd(getInAppNotificationSourceId()));
  }
  
  public final void a(float paramFloat1, float paramFloat2, @cgb final ady paramady, final boolean paramBoolean, final DSnapPanel.MediaType paramMediaType, final long paramLong)
  {
    if (paramady.e() == DSnapPanel.MediaType.VIDEO) {}
    aef localaef;
    for (int m = 1;; m = 0)
    {
      localaef = e;
      paramady = new avj()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          Object localObject2 = DSnapView.this;
          Object localObject3 = paramady;
          boolean bool = paramBoolean;
          Object localObject1 = paramMediaType;
          long l = paramLong;
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
            paramAnonymousAnimator = null;
            if (!bool) {
              paramAnonymousAnimator = (Animator)localObject1;
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
            A = localMediaType;
            B = paramAnonymousAnimator;
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
              paramAnonymousAnimator = new hc();
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
            ScAnalyticsEventEngine.a(paramAnonymousAnimator);
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
          longformType = DiscoverUsageAnalytics.b(paramAnonymousAnimator);
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
            paramAnonymousAnimator = new gp();
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
              ScAnalyticsEventEngine.a(paramAnonymousAnimator);
              return;
            }
          }
          localObject3 = new gl();
          publisherId = ((String)localObject1);
          adsnapId = ((String)localObject6);
          editionId = ((String)localObject4);
          mediaType = DiscoverUsageAnalytics.a((DSnapPanel.MediaType)localObject2, false);
          timeViewed = Double.valueOf(avf.a(l));
          longformType = DiscoverUsageAnalytics.b(paramAnonymousAnimator);
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
      };
      localaef.a();
      if (d != null) {
        break;
      }
      Timber.f("DSnapPreviewToolPresenter", "Inflation failed!", new Object[0]);
      return;
    }
    e.setVisibility(0);
    c.setAlpha(0.0F);
    d.setVisibility(0);
    c.setVisibility(0);
    paramMediaType = c.findViewById(2131362277);
    if (m != 0) {
      paramMediaType.setVisibility(0);
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
      paramMediaType.addListener(new aef.1(localaef, paramady));
      paramMediaType.playTogether(localArrayList);
      paramMediaType.start();
      return;
      paramMediaType.setVisibility(8);
    }
  }
  
  @avl
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
    ((adf)localObject2).b(g.a, System.currentTimeMillis());
    for (;;)
    {
      Object localObject5;
      boolean bool;
      Object localObject6;
      String str1;
      String str2;
      String str3;
      String str4;
      int m;
      int n;
      synchronized (b)
      {
        localObject5 = (adf.c)b.get(localObject4);
        if (localObject5 == null) {
          break label1124;
        }
        bool = ((adf)localObject2).a(f);
        ((adf)localObject2).a((String)localObject4, bool);
        if ((K == null) || (!K.g()))
        {
          ??? = f.d;
          localObject2 = g;
          bool = F;
          localObject4 = (EditionPerformanceAnalytics.WaitTimeMetricState)c.get(a);
          if ((localObject4 == null) || (localObject4 == EditionPerformanceAnalytics.WaitTimeMetricState.NOT_STARTED))
          {
            if (!((DSnapPage)localObject2).c().isLoading()) {
              break label900;
            }
            localObject4 = a;
            localObject5 = a;
            localObject6 = d;
            str1 = h;
            str2 = g;
            str3 = a;
            str4 = ((DSnapPage)localObject2).b();
            m = f.intValue();
            n = e;
            ((abq)localObject4).a("DISCOVER_DSNAP_WAIT_TIME", (String)localObject5, EasyMetric.EasyMetricFactory.a("DISCOVER_DSNAP_WAIT_TIME").a("session_id", localObject6).a("publisher_name", str1).a("edition_id", str2).a("dsnap_id", str3).a("has_ad", Boolean.valueOf(bool)).a("hash", str4).a("snap_index_pos", Integer.toString(m + 1)).a("snap_index_count", Integer.toString(n)).b());
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
        long l = m + 1;
        localObject6 = new gt();
        adsnapId = str1;
        editionId = ((String)localObject4);
        publisherId = ((String)localObject5);
        snapIndexPos = Long.valueOf(l);
        snapIndexCount = Long.valueOf(n);
        adIndexPos = Long.valueOf(i1);
        adIndexCount = Long.valueOf(i2);
        if ((??? == null) || (!((MediaState)???).isError())) {
          ??? = fq.FAILED;
        }
        for (;;)
        {
          additionalInfo = ((fq)???);
          ScAnalyticsEventEngine.a((lt)localObject6);
          ??? = new mp.a();
          mChannelName = ((String)localObject5);
          mEditionName = ((String)localObject4);
          mPosition = i1;
          ??? = ((mp.a)???).a();
          a.b((ml)???);
          break;
          switch (com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.1.b[???.ordinal()])
          {
          default: 
            ??? = fq.FAILED;
            break;
          case 1: 
            ??? = fq.SERVER_INTERNAL_ERROR;
            break;
          case 2: 
            ??? = fq.SERVER_INVALID_REQUEST_ERROR;
            break;
          case 3: 
            ??? = fq.SERVER_NETWORK_ERROR;
            break;
          case 4: 
            ??? = fq.SERVER_NO_FILL_ERROR;
            break;
          case 5: 
            ??? = fq.SERVER_OTHER_ERROR;
            break;
          case 6: 
            ??? = fq.CONTENT_NO_FILL;
            break;
          case 7: 
            ??? = fq.TIMEOUT;
            break;
          case 8: 
            ??? = fq.CLIENT_ERROR;
          }
        }
        label900:
        localObject4 = a;
        localObject5 = a;
        localObject6 = d;
        str1 = h;
        str2 = g;
        str3 = a;
        str4 = localDiscoverUsageAnalytics.b();
        m = f.intValue();
        n = e;
        MediaState localMediaState = localDiscoverUsageAnalytics.c();
        if (!b.contains(localObject5)) {
          EasyMetric.EasyMetricFactory.a("DISCOVER_DSNAP_WAIT_TIME").a("session_id", localObject6).a("publisher_name", str1).a("edition_id", str2).a("dsnap_id", str3).a("has_ad", Boolean.valueOf(bool)).a("hash", str4).a("type", localMediaState.toString().toLowerCase(Locale.ENGLISH)).a("snap_index_pos", Integer.toString(m + 1)).a("snap_index_count", Integer.toString(n)).a("reachability", a.f()).a(0L).a(false);
        }
        c.put(a, EditionPerformanceAnalytics.WaitTimeMetricState.REPORTED);
        continue;
        label1124:
        bool = false;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (g == null) {}
    ady localady;
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
      localady = b(paramInt2);
    } while (localady == null);
    localady.f();
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
      Timber.f("DSnapView", "Error playing DSnap %s (%s)", new Object[] { g, paramString });
      String str1 = g.a();
      String str2 = g.g;
      String str3 = g.a;
      String str4 = g.b();
      EasyMetric.EasyMetricFactory.a("DISCOVER_DSNAP_MEDIA_PLAYBACK_ERROR").a("publisher_name", str1).a("dsnap_id", str3).a("edition_id", str2).a("hash", str4).a("description", paramString).a(false);
      a.a(MediaState.GENERIC_ERROR);
      I = false;
    }
  }
  
  /* Error */
  public final void a(@cgb List<DSnapPage> paramList, @cgb DSnapPage paramDSnapPage1, int paramInt, @cgc DSnapPage paramDSnapPage2)
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
    //   10: invokestatic 1064	com/snapchat/android/discover/ui/DSnapView:a	(Ljava/util/List;I)Z
    //   13: putfield 131	com/snapchat/android/discover/ui/DSnapView:F	Z
    //   16: aload_0
    //   17: aload 4
    //   19: putfield 873	com/snapchat/android/discover/ui/DSnapView:K	Lcom/snapchat/android/discover/model/DSnapPage;
    //   22: aload_0
    //   23: getfield 160	com/snapchat/android/discover/ui/DSnapView:a	Laed;
    //   26: astore 4
    //   28: aload_0
    //   29: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   32: getfield 1066	com/snapchat/android/discover/model/DSnapPage:j	Ljava/lang/String;
    //   35: invokestatic 1071	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   38: istore 5
    //   40: iload 5
    //   42: aload 4
    //   44: getfield 1073	aed:j	I
    //   47: if_icmpeq +26 -> 73
    //   50: aload 4
    //   52: iload 5
    //   54: putfield 1073	aed:j	I
    //   57: aload 4
    //   59: iconst_1
    //   60: putfield 1075	aed:e	Z
    //   63: aload 4
    //   65: aload 4
    //   67: getfield 1077	aed:g	Lcom/snapchat/android/discover/model/MediaState;
    //   70: invokevirtual 1061	aed:a	(Lcom/snapchat/android/discover/model/MediaState;)V
    //   73: aload_1
    //   74: iload_3
    //   75: invokestatic 1064	com/snapchat/android/discover/ui/DSnapView:a	(Ljava/util/List;I)Z
    //   78: ifeq +162 -> 240
    //   81: aload_1
    //   82: iload_3
    //   83: iconst_1
    //   84: iadd
    //   85: invokeinterface 317 2 0
    //   90: checkcast 292	com/snapchat/android/discover/model/DSnapPage
    //   93: astore_1
    //   94: aload_1
    //   95: invokevirtual 887	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   98: invokevirtual 890	com/snapchat/android/discover/model/MediaState:isLoading	()Z
    //   101: ifeq +139 -> 240
    //   104: aload_1
    //   105: invokevirtual 887	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   108: astore_1
    //   109: ldc_w 334
    //   112: ldc_w 1079
    //   115: iconst_3
    //   116: anewarray 338	java/lang/Object
    //   119: dup
    //   120: iconst_0
    //   121: aload_0
    //   122: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   125: invokevirtual 887	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   128: aastore
    //   129: dup
    //   130: iconst_1
    //   131: aload_1
    //   132: aastore
    //   133: dup
    //   134: iconst_2
    //   135: aload_0
    //   136: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   139: aastore
    //   140: invokestatic 343	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   143: aload_0
    //   144: getfield 140	com/snapchat/android/discover/ui/DSnapView:J	Lcom/snapchat/android/discover/model/MediaState;
    //   147: getstatic 190	com/snapchat/android/discover/model/MediaState:SUCCESS	Lcom/snapchat/android/discover/model/MediaState;
    //   150: if_acmpeq +98 -> 248
    //   153: aload_1
    //   154: getstatic 190	com/snapchat/android/discover/model/MediaState:SUCCESS	Lcom/snapchat/android/discover/model/MediaState;
    //   157: if_acmpne +91 -> 248
    //   160: iconst_1
    //   161: istore_3
    //   162: aload_0
    //   163: aload_1
    //   164: putfield 140	com/snapchat/android/discover/ui/DSnapView:J	Lcom/snapchat/android/discover/model/MediaState;
    //   167: aload_0
    //   168: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   171: invokevirtual 297	com/snapchat/android/discover/model/DSnapPage:d	()Lcom/snapchat/android/discover/model/DSnapPanel;
    //   174: astore_1
    //   175: aload_0
    //   176: aload_0
    //   177: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   180: aload_1
    //   181: getstatic 643	com/snapchat/android/discover/model/DSnapPage$Form:TOP_SNAP	Lcom/snapchat/android/discover/model/DSnapPage$Form;
    //   184: invokespecial 1081	com/snapchat/android/discover/ui/DSnapView:a	(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    //   187: aload_0
    //   188: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   191: invokevirtual 438	com/snapchat/android/discover/model/DSnapPage:e	()Lcom/snapchat/android/discover/model/DSnapPanel;
    //   194: astore_1
    //   195: aload_0
    //   196: aload_0
    //   197: getfield 324	com/snapchat/android/discover/ui/DSnapView:g	Lcom/snapchat/android/discover/model/DSnapPage;
    //   200: aload_1
    //   201: getstatic 347	com/snapchat/android/discover/model/DSnapPage$Form:LONGFORM	Lcom/snapchat/android/discover/model/DSnapPage$Form;
    //   204: invokespecial 1081	com/snapchat/android/discover/ui/DSnapView:a	(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    //   207: aload_0
    //   208: getfield 160	com/snapchat/android/discover/ui/DSnapView:a	Laed;
    //   211: aload_0
    //   212: getfield 140	com/snapchat/android/discover/ui/DSnapView:J	Lcom/snapchat/android/discover/model/MediaState;
    //   215: invokevirtual 1061	aed:a	(Lcom/snapchat/android/discover/model/MediaState;)V
    //   218: iload_3
    //   219: ifeq +18 -> 237
    //   222: aload_0
    //   223: getfield 129	com/snapchat/android/discover/ui/DSnapView:j	Z
    //   226: ifeq +11 -> 237
    //   229: aload_0
    //   230: aload_0
    //   231: getfield 144	com/snapchat/android/discover/ui/DSnapView:L	I
    //   234: invokevirtual 834	com/snapchat/android/discover/ui/DSnapView:d	(I)V
    //   237: aload_0
    //   238: monitorexit
    //   239: return
    //   240: aload_2
    //   241: invokevirtual 887	com/snapchat/android/discover/model/DSnapPage:c	()Lcom/snapchat/android/discover/model/MediaState;
    //   244: astore_1
    //   245: goto -136 -> 109
    //   248: iconst_0
    //   249: istore_3
    //   250: goto -88 -> 162
    //   253: astore_1
    //   254: aload_0
    //   255: monitorexit
    //   256: aload_1
    //   257: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	this	DSnapView
    //   0	258	1	paramList	List<DSnapPage>
    //   0	258	2	paramDSnapPage1	DSnapPage
    //   0	258	3	paramInt	int
    //   0	258	4	paramDSnapPage2	DSnapPage
    //   38	15	5	m	int
    // Exception table:
    //   from	to	target	type
    //   2	73	253	finally
    //   73	109	253	finally
    //   109	160	253	finally
    //   162	218	253	finally
    //   222	237	253	finally
    //   240	245	253	finally
  }
  
  @cgc
  public final ady b(int paramInt)
  {
    return (ady)v.get(Integer.valueOf(paramInt));
  }
  
  public final void b()
  {
    Object localObject;
    aec localaec;
    if (!J.isLoading())
    {
      localObject = a;
      Timber.a("DSnapLoadingStatePresenter", "LOADING-STATE %s: Hiding loading state quickly.", new Object[] { ((aed)localObject).a() });
      localaec = d;
      float f1;
      long l;
      if (!e)
      {
        e = true;
        if (f == null) {
          break label233;
        }
        f.cancel();
        f1 = a.getAlpha();
        l = Math.abs(300.0F * f1);
        Timber.a("DSnapLoadingErrorViewHolder", "LOADING-STATE: Cancel slow and hide fast with duration: " + l, new Object[0]);
        localaec.a(l, f1, false);
      }
      localObject = c;
      if (!f)
      {
        f = true;
        if (g == null) {
          break label257;
        }
        g.cancel();
        f1 = a.getAlpha();
        l = Math.abs(300.0F * f1);
        Timber.a("DSnapLoadingViewHolder", "LOADING-STATE: Cancel slow and hide fast with duration: " + l, new Object[0]);
        ((aee)localObject).a(l, f1, false);
      }
    }
    for (;;)
    {
      b.setScrollable(true);
      I = true;
      return;
      label233:
      Timber.a("DSnapLoadingErrorViewHolder", "LOADING-STATE: Hiding fast", new Object[0]);
      localaec.a(300);
      break;
      label257:
      Timber.a("DSnapLoadingViewHolder", "LOADING-STATE: Hiding fast", new Object[0]);
      ((aee)localObject).a(300);
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
    ady localady;
    do
    {
      return false;
      localady = b(getCurrentPanel());
    } while (localady == null);
    return localady.h();
  }
  
  public final boolean g()
  {
    if (DSnapPage.Form.LONGFORM.getIndex() == getCurrentPanel()) {}
    for (int m = 1; (m != 0) && (g.e().g == DSnapPanel.MediaType.REMOTE_VIDEO); m = 0) {
      return true;
    }
    return false;
  }
  
  public int getCurrentPanel()
  {
    if (b != null) {
      return b.getCurrentPanel();
    }
    return 0;
  }
  
  @cgc
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
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ady localady = b(getCurrentPanel());
    if (localady != null) {
      localady.a(orientation);
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    b = ((VerticalSwipeLayout)findViewById(2131362299));
    a.k = M;
    b.setOnScrolledListener(this);
    e = new aef(getContext(), this);
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
            ((aef)localObject).a();
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
        c.animate().alpha(0.0F).setDuration(300L).setListener(new avj()
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
    ady localady = b(getCurrentPanel());
    if (localady != null) {
      return localady.d().dispatchTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public final void q_()
  {
    super.q_();
    Object localObject = a;
    if (c != null)
    {
      aee localaee = c;
      localaee.b();
      localaee.a();
    }
    i = null;
    j = 0;
    g = MediaState.NOT_STARTED;
    h = MediaState.NOT_STARTED;
    e = true;
    f = false;
    localObject = v.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ady)((Iterator)localObject).next()).c();
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
  
  public final void r_()
  {
    if ((s != null) && (TextUtils.equals(g.b, "auto_advancing"))) {
      s.a();
    }
  }
  
  void setDSnapItemViewAdapterMap(HashMap<Integer, ady> paramHashMap)
  {
    v.clear();
    v.putAll(paramHashMap);
  }
  
  void setDSnapPreviewToolPresenter(aef paramaef)
  {
    e = paramaef;
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
          DSnapView.d(DSnapView.this).a(new aex(a, b, c));
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