package com.snapchat.android.discover.ui.fragment;

import abq;
import abr;
import aby;
import ace;
import adf;
import aek;
import aem;
import aen;
import aew;
import ala;
import alb;
import ale;
import android.annotation.SuppressLint;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import auj;
import auj.a;
import avf;
import avh;
import avs;
import ban;
import bap;
import baw;
import bdg;
import bdt;
import bel;
import bgk;
import cgb;
import cgc;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics.WaitTimeMetricState;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.ui.FadeFullScreenAnimationView;
import com.snapchat.android.discover.ui.FadeFullScreenAnimationView.b;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import gv;
import hl;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import ld;
import lt;

public class EditionViewerFragment
  extends SnapchatFragment
  implements LoaderManager.LoaderCallbacks<Cursor>, auj.a, FadeFullScreenAnimationView.b, EditionViewerPager.b
{
  @cgb
  public ChannelPage a;
  private aem b;
  @cgc
  private EditionViewerPager c;
  private FadeFullScreenAnimationView d;
  private final avs e;
  private final Bus f;
  private final aby g;
  private final DiscoverUsageAnalytics h;
  private final adf i;
  private final alb j;
  private auj k;
  private String l;
  private boolean m;
  private String n;
  private int o;
  private boolean p;
  private EditionOpenOrigin q;
  private boolean r;
  private final bgk s;
  private long t = 0L;
  private abr u;
  
  public EditionViewerFragment()
  {
    this(new avs(), ban.a(), aby.a(), new bgk(), new DiscoverUsageAnalytics(), adf.a(), alb.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private EditionViewerFragment(avs paramavs, Bus paramBus, aby paramaby, bgk parambgk, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, adf paramadf, alb paramalb)
  {
    f = paramBus;
    e = paramavs;
    g = paramaby;
    i = paramadf;
    s = parambgk;
    h = paramDiscoverUsageAnalytics;
    j = paramalb;
  }
  
  public final void a()
  {
    Object localObject = i;
    String str = l;
    localObject = (List)e.get(str);
    i.e.clear();
    if (localObject != null)
    {
      f.a(new aew(a.d, q, (List)localObject));
      return;
    }
    f.a(new aew(a.d, q));
  }
  
  public final void a(float paramFloat)
  {
    d.setAlpha(paramFloat);
  }
  
  public final void a(int paramInt)
  {
    boolean bool3 = false;
    boolean bool1;
    boolean bool2;
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
            break label132;
          }
          bool2 = true;
          label48:
          Timber.a("EditionViewerFragment", "onRotate %d with isLandscapeSupported %s", new Object[] { Integer.valueOf(paramInt), Boolean.valueOf(bool2) });
          switch (paramInt)
          {
          default: 
            bool1 = bool3;
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
      label132:
      bool2 = false;
      break label48;
      f.a(new baw(1));
      bool1 = bool3;
      continue;
      bool1 = bool3;
      if (bool2)
      {
        f.a(new baw(0));
        bool1 = true;
        continue;
        bool1 = bool3;
        if (bool2)
        {
          f.a(new baw(8));
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
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void b(EditionViewerPager.SwipeToExitMethod paramSwipeToExitMethod)
  {
    if ((l != null) && (u != null))
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = t;
      Object localObject1 = l;
      Object localObject2 = a.b;
      long l3 = u.a.size();
      long l4 = u.b.size();
      long l5 = i.d(l);
      Object localObject3 = new gv();
      timeViewed = Double.valueOf(avf.a(l1 - l2));
      editionId = ((String)localObject1);
      publisherId = ((String)localObject2);
      numSnapsViewed = Long.valueOf(l3);
      numLongformViewed = Long.valueOf(l4);
      switch (com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.1.a[paramSwipeToExitMethod.ordinal()])
      {
      default: 
        Timber.f("DiscoverAnalytics", "Unsupported Discover exit method, will leave as null in logged event.", new Object[0]);
        if ((int)l5 >= 0) {
          break;
        }
      }
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          snapIndexCount = Long.valueOf(l5);
        }
        ScAnalyticsEventEngine.a((lt)localObject3);
        paramSwipeToExitMethod = u.d;
        localObject1 = a;
        localObject2 = c.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject4 = (Map.Entry)((Iterator)localObject2).next();
          if (((Map.Entry)localObject4).getValue() == EditionPerformanceAnalytics.WaitTimeMetricState.TIMING)
          {
            localObject3 = a;
            localObject4 = ((abq)localObject3).a("DISCOVER_DSNAP_WAIT_TIME", (String)((Map.Entry)localObject4).getKey());
            if (localObject4 != null) {
              ((EasyMetric)localObject4).a("type", "abandoned").a("reachability", a.f()).a(false);
            }
          }
        }
        exitEvent = hl.SWIPE_BEGINNING;
        break;
        exitEvent = hl.SWIPE_END;
        break;
        exitEvent = hl.ENTER_BACKGROUND;
        break;
        exitEvent = hl.SWIPE_DOWN;
        break;
        exitEvent = hl.AUTO_ADVANCE;
        break;
        exitEvent = hl.BACK_PRESSED;
        break;
      }
      localObject2 = a;
      localObject3 = d;
      Object localObject4 = b;
      localObject1 = e;
      i1 = b.size();
      EasyMetric.EasyMetricFactory.a("DISCOVER_EDITION_VIEW_SUMMARY").a("session_id", localObject3).a("publisher_name", localObject4).a("edition_id", localObject1).a("reachability", a.f()).a("count", Integer.valueOf(i1)).a(false);
      return;
    }
    Timber.f("EditionViewerFragment", "edition ID or view record is null when trying to report edition exit metrics.", new Object[0]);
  }
  
  protected final void e()
  {
    boolean bool = true;
    f.a(new baw(1));
    f.a(new bel(TitleBarManager.Visibility.HIDDEN));
    f.a(new bdg(false));
    f.a(new bap(CameraDisplayState.CLOSE));
    Object localObject = f;
    DiscoverEditionPageView localDiscoverEditionPageView = c.getCurrentView();
    if ((localDiscoverEditionPageView != null) && (localDiscoverEditionPageView.g())) {}
    for (;;)
    {
      ((Bus)localObject).a(new bdt(bool));
      avh.a(getActivity(), c);
      localObject = k;
      mRotation = 0;
      if (mOrientationListener.canDetectOrientation()) {
        mOrientationListener.enable();
      }
      t = SystemClock.elapsedRealtime();
      if (c != null) {
        c.a(c.getCurrentItem(), -1);
      }
      return;
      bool = false;
    }
  }
  
  protected final void f()
  {
    k.mOrientationListener.disable();
    f.a(new baw(1));
    if (c != null) {
      c.a(c.getCurrentItem());
    }
  }
  
  public final boolean g()
  {
    f.a(new baw(1));
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
  
  public final boolean g_()
  {
    return true;
  }
  
  protected final ala h()
  {
    return j.b().a(l);
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
      n = paramBundle.getString("open_to_dsnap_id");
      m = paramBundle.getBoolean("archived_edition", false);
      l = paramBundle.getString("edition_id");
      p = paramBundle.getBoolean("open_to_longform", false);
      i1 = paramBundle.getInt("edition_open_origin", EditionOpenOrigin.DISCOVER.ordinal());
      q = EditionOpenOrigin.values()[i1];
      if (!paramBundle.getBoolean("open_to_start", false)) {
        break label178;
      }
      i1 = 0;
    }
    for (;;)
    {
      o = i1;
      g.a(a, null);
      Object localObject = g;
      paramBundle = l;
      aby.a(paramBundle);
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((ace)((Iterator)localObject).next()).a(paramBundle);
      }
      label178:
      paramBundle = l;
      i1 = i.a(paramBundle);
      if ((i.b(paramBundle)) || (i1 == -1)) {
        i1 = 0;
      }
    }
    r = false;
    u = new abr();
    if (n != null) {
      u.a(n, ld.CHAT);
    }
    if (m) {}
    for (b = new aek(a, l, u);; b = new aen(a, l, u))
    {
      k = new auj(getActivity());
      k.mScreenRotationListener = this;
      getLoaderManager().restartLoader$71be8de6(1100, this);
      return;
    }
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    Timber.c("EditionViewerFragment", "creating DSnapPageVirtualTable cursor loader", new Object[0]);
    paramBundle = Uri.withAppendedPath(SnapchatProvider.c, l);
    return new CursorLoader(getActivity(), paramBundle, DSnapPageVirtualTable.a, null);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    mFragmentLayout = paramLayoutInflater.inflate(2130968654, paramViewGroup, false);
    c = ((EditionViewerPager)c(2131362268));
    c.setOnSwipeOutListener(this);
    c.setBackgroundColor(a.h);
    c.setAdapter(b);
    d = ((FadeFullScreenAnimationView)c(2131362269));
    d.setColorFilter(a.h);
    d.setFadeFullScreenListener(this);
    return mFragmentLayout;
  }
  
  public void onDestroy()
  {
    if (d != null) {
      e.a(d, true);
    }
    try
    {
      getLoaderManager().destroyLoader(1100);
      if (c != null)
      {
        EditionViewerPager localEditionViewerPager = c;
        ((aem)localEditionViewerPager.getAdapter()).a(localEditionViewerPager);
      }
      super.onDestroy();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  public final long z_()
  {
    return 60000L;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.EditionViewerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */