package com.snapchat.android.discover.ui.fragment;

import acq;
import acr;
import acy;
import ade;
import aef;
import aej;
import aej.13;
import aej.b;
import afk;
import afm;
import afn;
import afw;
import alv;
import alw;
import ama;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import avh;
import avh.a;
import awd;
import awf;
import awq;
import bbo;
import bbq;
import bbx;
import beg;
import bet;
import bfk;
import bhk;
import chc;
import chd;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics.WaitTimeMetricState;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPage.Form;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.FadeFullScreenAnimationView;
import com.snapchat.android.discover.ui.FadeFullScreenAnimationView.b;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import he;
import hu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import lv;
import ml;

public class EditionViewerFragment
  extends SnapchatFragment
  implements aej.b, avh.a, FadeFullScreenAnimationView.b, EditionViewerPager.b
{
  @chc
  public ChannelPage a;
  private afm b;
  @chd
  private EditionViewerPager c;
  private FadeFullScreenAnimationView d;
  private final awq e;
  private final Bus f;
  private final acy g;
  private final DiscoverUsageAnalytics h;
  private final aef i;
  private final alw j;
  private final aej k;
  private avh l;
  private String m;
  private boolean n;
  private String o;
  private int p;
  private boolean q;
  private EditionOpenOrigin r;
  private int s = -1;
  private boolean t;
  private final bhk u;
  private long v = 0L;
  private acr w;
  
  public EditionViewerFragment()
  {
    this(new awq(), bbo.a(), acy.a(), new bhk(), new DiscoverUsageAnalytics(), aef.a(), alw.a(), aej.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private EditionViewerFragment(awq paramawq, Bus paramBus, acy paramacy, bhk parambhk, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, aef paramaef, alw paramalw, aej paramaej)
  {
    f = paramBus;
    e = paramawq;
    g = paramacy;
    i = paramaef;
    u = parambhk;
    h = paramDiscoverUsageAnalytics;
    j = paramalw;
    k = paramaej;
  }
  
  public final void a()
  {
    Object localObject = i;
    String str = m;
    localObject = (List)e.get(str);
    i.e.clear();
    if (localObject != null)
    {
      f.a(new afw(a.d, r, (List)localObject));
      return;
    }
    f.a(new afw(a.d, r));
  }
  
  public final void a(float paramFloat)
  {
    d.setAlpha(paramFloat);
  }
  
  public final void a(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1;
    int i1;
    if (c != null)
    {
      Object localObject = c;
      if (b == 0)
      {
        localObject = ((EditionViewerPager)localObject).getCurrentView();
        if (localObject != null)
        {
          bool1 = ((DiscoverEditionPageView)localObject).f();
          if (!bool1) {
            break label108;
          }
          i1 = 1;
          switch (paramInt)
          {
          default: 
            label48:
            bool1 = bool2;
          }
        }
      }
    }
    for (;;)
    {
      if (c != null) {
        c.setLockedInPlace(bool1);
      }
      return;
      bool1 = false;
      break;
      label108:
      i1 = 0;
      break label48;
      f.a(new bbx(1));
      bool1 = bool2;
      continue;
      bool1 = bool2;
      if (i1 != 0)
      {
        f.a(new bbx(0));
        bool1 = true;
        continue;
        bool1 = bool2;
        if (i1 != 0)
        {
          f.a(new bbx(8));
          bool1 = true;
        }
      }
    }
  }
  
  public final void a(EditionViewerPager.SwipeToExitMethod paramSwipeToExitMethod)
  {
    b(paramSwipeToExitMethod);
    d.a();
  }
  
  public final void a(@chc final List<DSnapPage> paramList)
  {
    paramList = new ArrayList(paramList);
    mFragmentLayout.post(new Runnable()
    {
      public final void run()
      {
        if ((EditionViewerFragment.b(EditionViewerFragment.this) != null) && (EditionViewerFragment.c(EditionViewerFragment.this) != null))
        {
          EditionViewerFragment.b(EditionViewerFragment.this).a(paramList);
          if (EditionViewerFragment.d(EditionViewerFragment.this) != null)
          {
            EditionViewerFragment.a(EditionViewerFragment.this, Math.max(0, EditionViewerFragment.b(EditionViewerFragment.this).a(EditionViewerFragment.d(EditionViewerFragment.this))));
            EditionViewerFragment.e(EditionViewerFragment.this);
          }
          if ((!EditionViewerFragment.f(EditionViewerFragment.this)) && (EditionViewerFragment.c(EditionViewerFragment.this) != null) && (EditionViewerFragment.g(EditionViewerFragment.this) < EditionViewerFragment.c(EditionViewerFragment.this).getAdapter().getCount())) {
            if (!EditionViewerFragment.h(EditionViewerFragment.this)) {
              break label240;
            }
          }
        }
        label240:
        for (int i = DSnapPage.Form.LONGFORM.getIndex();; i = DSnapPage.Form.TOP_SNAP.getIndex())
        {
          EditionViewerFragment.c(EditionViewerFragment.this).setCurrentItem(EditionViewerFragment.g(EditionViewerFragment.this), false);
          EditionViewerFragment.c(EditionViewerFragment.this).setPanel(i);
          EditionViewerFragment.i(EditionViewerFragment.this);
          new StringBuilder("Opening page to ").append(EditionViewerFragment.g(EditionViewerFragment.this)).append(" longform? ").append(EditionViewerFragment.h(EditionViewerFragment.this)).append(" - count: ").append(EditionViewerFragment.b(EditionViewerFragment.this).getCount());
          EditionViewerFragment.j(EditionViewerFragment.this);
          return;
        }
      }
    });
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void b(EditionViewerPager.SwipeToExitMethod paramSwipeToExitMethod)
  {
    if ((m != null) && (w != null))
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = v;
      Object localObject1 = m;
      Object localObject2 = a.b;
      long l3 = w.a.size();
      long l4 = w.b.size();
      long l5 = i.d(m);
      Object localObject3 = w.c.getSourceType();
      int i1 = s;
      Object localObject4 = new he();
      timeViewed = Double.valueOf(awd.a(l1 - l2));
      editionId = ((String)localObject1);
      publisherId = ((String)localObject2);
      numSnapsViewed = Long.valueOf(l3);
      numLongformViewed = Long.valueOf(l4);
      source = ((lv)localObject3);
      if (localObject3 == lv.STORY) {
        viewLocationPos = Long.valueOf(i1);
      }
      switch (com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.1.a[paramSwipeToExitMethod.ordinal()])
      {
      default: 
        if ((int)l5 >= 0) {
          break;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          snapIndexCount = Long.valueOf(l5);
        }
        ScAnalyticsEventEngine.a((ml)localObject4);
        paramSwipeToExitMethod = w.d;
        localObject1 = a;
        localObject2 = c.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject4 = (Map.Entry)((Iterator)localObject2).next();
          if (((Map.Entry)localObject4).getValue() == EditionPerformanceAnalytics.WaitTimeMetricState.TIMING)
          {
            localObject3 = a;
            localObject4 = ((acq)localObject3).a("DISCOVER_DSNAP_WAIT_TIME", (String)((Map.Entry)localObject4).getKey());
            if (localObject4 != null) {
              ((EasyMetric)localObject4).a("type", "abandoned").a("reachability", a.f()).a(false);
            }
          }
        }
        exitEvent = hu.SWIPE_BEGINNING;
        break;
        exitEvent = hu.SWIPE_END;
        break;
        exitEvent = hu.ENTER_BACKGROUND;
        break;
        exitEvent = hu.SWIPE_DOWN;
        break;
        exitEvent = hu.AUTO_ADVANCE;
        break;
        exitEvent = hu.BACK_PRESSED;
        break;
      }
      localObject2 = a;
      localObject3 = d;
      localObject4 = b;
      localObject1 = e;
      i1 = b.size();
      paramSwipeToExitMethod = e;
      EasyMetric.EasyMetricFactory.a("DISCOVER_EDITION_VIEW_SUMMARY").a("session_id", localObject3).a("publisher_name", localObject4).a("edition_id", localObject1).a("reachability", a.f()).a("count", Integer.valueOf(i1)).a("source", paramSwipeToExitMethod.toString()).a(false);
    }
  }
  
  protected final void e()
  {
    boolean bool = true;
    f.a(new bbx(1));
    f.a(new bfk(TitleBarManager.Visibility.HIDDEN));
    f.a(new beg(false));
    f.a(new bbq(CameraDisplayState.CLOSE));
    Object localObject = f;
    DiscoverEditionPageView localDiscoverEditionPageView = c.getCurrentView();
    if ((localDiscoverEditionPageView != null) && (localDiscoverEditionPageView.g())) {}
    for (;;)
    {
      ((Bus)localObject).a(new bet(bool));
      awf.a(getActivity(), c);
      localObject = l;
      mRotation = 0;
      if (mOrientationListener.canDetectOrientation()) {
        mOrientationListener.enable();
      }
      v = SystemClock.elapsedRealtime();
      if (c != null) {
        c.a(c.getCurrentItem(), -1);
      }
      return;
      bool = false;
    }
  }
  
  protected final void f()
  {
    l.mOrientationListener.disable();
    f.a(new bbx(1));
    if (c != null) {
      c.a(c.getCurrentItem());
    }
  }
  
  public final boolean f_()
  {
    return true;
  }
  
  public final boolean g()
  {
    f.a(new bbx(1));
    if (c != null)
    {
      DiscoverEditionPageView localDiscoverEditionPageView = c.getCurrentView();
      if ((localDiscoverEditionPageView == null) || (!localDiscoverEditionPageView.e())) {
        break label72;
      }
    }
    label72:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        b(EditionViewerPager.SwipeToExitMethod.BACK_PRESSED);
        mFragmentLayout.post(new Runnable()
        {
          public final void run()
          {
            EditionViewerFragment.a(EditionViewerFragment.this).a();
          }
        });
      }
      return true;
    }
  }
  
  protected final alv h()
  {
    return j.b().a(m);
  }
  
  public final void i()
  {
    d.b();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    int i1;
    if (paramBundle != null)
    {
      a = ((ChannelPage)paramBundle.getParcelable(ChannelPage.a));
      o = paramBundle.getString("open_to_dsnap_id");
      n = paramBundle.getBoolean("archived_edition", false);
      m = paramBundle.getString("edition_id");
      q = paramBundle.getBoolean("open_to_longform", false);
      s = paramBundle.getInt("adapter_index", -1);
      i1 = paramBundle.getInt("edition_open_origin", EditionOpenOrigin.DISCOVER.ordinal());
      r = EditionOpenOrigin.values()[i1];
      if (!paramBundle.getBoolean("open_to_start", false)) {
        break label190;
      }
      i1 = 0;
    }
    for (;;)
    {
      p = i1;
      g.a(a, null);
      Object localObject = g;
      paramBundle = m;
      acy.a(paramBundle);
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((ade)((Iterator)localObject).next()).a(paramBundle);
      }
      label190:
      paramBundle = m;
      i1 = i.a(paramBundle);
      if ((i.b(paramBundle)) || (i1 == -1)) {
        i1 = 0;
      }
    }
    t = false;
    w = new acr(r);
    if (n) {}
    for (b = new afk(a, m, w);; b = new afn(a, m, w))
    {
      l = new avh(getActivity());
      l.mScreenRotationListener = this;
      return;
    }
  }
  
  public View onCreateView(LayoutInflater arg1, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(???, paramViewGroup, paramBundle);
    mFragmentLayout = ???.inflate(2130968655, paramViewGroup, false);
    c = ((EditionViewerPager)c(2131362266));
    c.setOnSwipeOutListener(this);
    c.setBackgroundColor(a.h);
    c.setAdapter(b);
    d = ((FadeFullScreenAnimationView)c(2131362267));
    d.setColorFilter(a.h);
    d.setFadeFullScreenListener(this);
    paramViewGroup = k;
    paramBundle = m;
    synchronized (e)
    {
      g.put(paramBundle, this);
      ??? = k;
      paramViewGroup = m;
      h.postAtFrontOfQueue(new aej.13(???, paramViewGroup, new aej.b[] { this }));
      return mFragmentLayout;
    }
  }
  
  public void onDestroy()
  {
    aej localaej = k;
    String str = m;
    synchronized (e)
    {
      g.remove(str);
      if (d != null) {
        e.a(d, true);
      }
      if (c != null)
      {
        ??? = c;
        ((afm)((EditionViewerPager)???).getAdapter()).a((ViewGroup)???);
        c = null;
        b = null;
      }
      super.onDestroy();
      return;
    }
  }
  
  public final long y_()
  {
    return 60000L;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.EditionViewerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */