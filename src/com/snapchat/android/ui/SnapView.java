package com.snapchat.android.ui;

import adn;
import aio;
import aje;
import ajr;
import ala;
import alb;
import ale;
import alh;
import alx;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import ank;
import aol;
import aop;
import aop.a;
import arg;
import arh;
import arj;
import ark;
import arl;
import arm;
import asu;
import aup;
import avh;
import avl;
import ban;
import bby;
import bcj;
import bct;
import bdm;
import bdz;
import bgp;
import ccm;
import cgb;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.EndReason;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.discover.ui.FadeFullScreenAnimationView;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.stories.ui.MyStoryView;
import com.snapchat.android.stories.ui.MyStoryView.a;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import ds;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import lq;
import ng;
import nn;
import op;
import r;
import yu;
import zb;
import zd;
import zk;

public class SnapView
  extends RelativeLayout
  implements MyStoryView.a
{
  public final Bus a;
  public final arh b;
  protected FadeFullScreenAnimationView c;
  protected VerticalSwipeLayout d;
  public boolean e = false;
  public arj f;
  protected final ark g = new ark()
  {
    public final void a(arj paramAnonymousarj)
    {
      int j = 1;
      Timber.c("SnapView", "SNAP-VIEW: session started for %s", new Object[] { paramAnonymousarj.a() });
      Object localObject1 = SnapView.b(SnapView.this);
      Object localObject2 = paramAnonymousarj.c();
      int i = 0;
      while (i < 2)
      {
        if (a[i] != localObject2) {
          a[i].d();
        }
        if (b[i] != localObject2) {
          b[i].d();
        }
        i += 1;
      }
      SnapView.a(SnapView.this, true);
      localObject1 = paramAnonymousarj.b();
      localObject2 = ((aio)localObject1).d();
      if (localObject2 != null)
      {
        if ((asu.IS_GALAXY_S6) && (((aje)localObject2).ai())) {}
        for (i = j; i != 0; i = 0)
        {
          Timber.c("SnapView", "SNAP-VIEW: Skipping preload on S6", new Object[0]);
          return;
        }
        Timber.c("SnapView", "SNAP-VIEW: Preloading next snap: " + localObject2, new Object[0]);
        SnapView.a(SnapView.this, b((aje)localObject2, (aio)localObject1, paramAnonymousarj.e()));
        SnapView.d(SnapView.this).a(SnapView.c(SnapView.this));
      }
      for (;;)
      {
        localObject1 = SnapView.e(SnapView.this).iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((yu)((Iterator)localObject1).next()).a(paramAnonymousarj.a());
        }
        break;
        Timber.c("SnapView", "SNAP-VIEW: No snap to pre-load", new Object[0]);
      }
    }
    
    public final void a(arj paramAnonymousarj, SnapViewSessionStopReason paramAnonymousSnapViewSessionStopReason)
    {
      if (SnapView.a(SnapView.this) == paramAnonymousarj)
      {
        Timber.c("SnapView", "SNAP-VIEW: primary session stopped for %s, reason %s", new Object[] { paramAnonymousarj.a(), paramAnonymousSnapViewSessionStopReason });
        SnapView.a(SnapView.this, false);
        if (paramAnonymousSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
        {
          SnapView.a(SnapView.this, paramAnonymousarj.a());
          a(SnapViewEventAnalytics.EndReason.KICKED_OUT);
        }
        for (;;)
        {
          Iterator localIterator = SnapView.e(SnapView.this).iterator();
          while (localIterator.hasNext()) {
            ((yu)localIterator.next()).a(paramAnonymousarj.a(), paramAnonymousSnapViewSessionStopReason, 0);
          }
          if (paramAnonymousSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA)
          {
            if (ReleaseManager.f()) {
              SnapView.f(SnapView.this).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "ALPHA-ONLY: Snap skipped, media player error"));
            }
            SnapView.this.a(paramAnonymousarj, paramAnonymousSnapViewSessionStopReason);
          }
          else if (paramAnonymousSnapViewSessionStopReason != SnapViewSessionStopReason.ABORT_REQUESTED)
          {
            SnapView.this.a(paramAnonymousarj, paramAnonymousSnapViewSessionStopReason);
          }
        }
      }
      if (SnapView.d(SnapView.this) == paramAnonymousarj)
      {
        Timber.c("SnapView", "SNAP-VIEW: next session stopped for %s, reason %s", new Object[] { paramAnonymousarj.a(), paramAnonymousSnapViewSessionStopReason });
        if (paramAnonymousSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
        {
          paramAnonymousSnapViewSessionStopReason = paramAnonymousarj.a();
          if (!(paramAnonymousSnapViewSessionStopReason instanceof ajr)) {
            break label280;
          }
          SnapView.g(SnapView.this).a((ajr)paramAnonymousSnapViewSessionStopReason);
        }
      }
      for (;;)
      {
        SnapView.d(SnapView.this).h();
        SnapView.a(SnapView.this, null);
        return;
        label280:
        SnapView.a(SnapView.this, paramAnonymousarj.a());
      }
    }
  };
  private final SnapViewEventAnalytics h;
  private final ViewGroup i;
  private final SnapTimerView j;
  private final aol k;
  private final ank l;
  private final a m;
  private final ng n;
  private final LayoutInflater o;
  private final zd p;
  private final alb q;
  private final aop r;
  private final avh s;
  private final Set<yu> t;
  private arj u;
  private ala v = null;
  private final ark w = new arl(new Handler(Looper.getMainLooper()), g);
  
  public SnapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, ban.a(), new arh(paramContext), SnapViewEventAnalytics.a(), ng.a(), aol.a(), new ank(paramContext), new a(), zd.a(), alb.a(), aop.a(), new avh(paramContext), ds.a(new yu[] { new zk(), aup.d(), alx.a() }));
  }
  
  SnapView(final Context paramContext, AttributeSet paramAttributeSet, Bus paramBus, arh paramarh, SnapViewEventAnalytics paramSnapViewEventAnalytics, ng paramng, aol paramaol, ank paramank, a parama, zd paramzd, alb paramalb, aop paramaop, avh paramavh, Set<yu> paramSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramBus;
    b = paramarh;
    h = paramSnapViewEventAnalytics;
    k = paramaol;
    l = paramank;
    m = parama;
    p = paramzd;
    q = paramalb;
    t = paramSet;
    o = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    o.inflate(2130968780, this, true);
    i = ((ViewGroup)findViewById(2131362844));
    j = ((SnapTimerView)findViewById(2131362845));
    d = ((VerticalSwipeLayout)findViewById(2131362846));
    paramContext = new adn(getContext());
    paramContext.a(-1, -16777216);
    paramContext.a();
    paramContext.a(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        d.a(1, 1.0D);
      }
    });
    paramAttributeSet = new VerticalSwipeLayout.a()
    {
      public final void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void c(int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
        {
          SnapView.a(SnapView.this).a(false);
          paramContext.a();
          return;
        }
        SnapView.a(SnapView.this).a(true);
        paramContext.b();
        SnapView.a(SnapView.this).j();
      }
    };
    d.addView(c);
    d.setOnScrolledListener(paramAttributeSet);
    d.setVisibility(8);
    d.setEnabled(false);
    c = ((FadeFullScreenAnimationView)findViewById(2131362847));
    c.setColorFilter(getResources().getColor(2131230806));
    l.a(i);
    n = paramng;
    r = paramaop;
    s = paramavh;
  }
  
  @avl
  @ccm
  private void c(@cgb aje paramaje, @cgb aio paramaio, boolean paramBoolean)
  {
    bgp.a();
    Timber.c("SnapView", "SNAP-VIEW: Show snap %s", new Object[] { paramaje });
    Object localObject;
    if ((paramaio instanceof zb))
    {
      localObject = (zb)paramaio;
      ajr localajr = (ajr)paramaje;
      if (localajr != null)
      {
        localObject = (StorySnapLogbook)a.get(mClientId);
        a((StorySnapLogbook)localObject);
        label70:
        if (f != null)
        {
          if (f.a() == paramaje)
          {
            Timber.f("SnapView", "SNAP-VIEW: Viewing previously viewed snap %s", new Object[] { paramaje });
            Timber.c("SnapView", "SNAP-VIEW: Session active? " + f.f(), new Object[0]);
            Timber.c("SnapView", "SNAP-VIEW: Session already has snap %s is being viewed / is viewed? %s / %s", new Object[] { paramaje, Boolean.valueOf(paramaje.x()), Boolean.valueOf(paramaje.z()) });
          }
          f.h();
          f = null;
        }
        if (u != null)
        {
          if (u.a() != paramaje) {
            break label347;
          }
          Timber.c("SnapView", "SNAP-VIEW: Session preloaded for snap " + u.a(), new Object[0]);
          f = u;
        }
      }
    }
    for (u = null;; u = null)
    {
      q.a.a(paramaje.ac(), paramaje.i());
      if (f == null)
      {
        Timber.c("SnapView", "SNAP-VIEW: There was no session preloaded", new Object[0]);
        f = b(paramaje, paramaio, paramBoolean);
        f.a(w);
      }
      f.g();
      return;
      localObject = null;
      break;
      a(null);
      break label70;
      label347:
      Timber.c("SnapView", "SNAP-VIEW: Session preloaded for different snap " + u.a(), new Object[0]);
      u.h();
    }
  }
  
  public final void a()
  {
    a(f, SnapViewSessionStopReason.DELETED_SNAP);
    a.a(new bcj());
  }
  
  public final void a(float paramFloat)
  {
    c.setVisibility(0);
    c.setAlpha(paramFloat);
  }
  
  @ccm
  public final void a(@cgb aje paramaje, aio paramaio)
  {
    bgp.a();
    a(paramaje, paramaio, false);
  }
  
  @ccm
  public final void a(@cgb aje paramaje, @cgb aio paramaio, boolean paramBoolean)
  {
    if (v == null)
    {
      v = q.b();
      q.a(v.a(paramaje.j()));
    }
    setVisibility(0);
    c.setVisibility(8);
    c.b();
    boolean bool = paramaio.e();
    Object localObject = b;
    a = SystemClock.elapsedRealtime();
    c = bool;
    b += 1;
    bool = paramaio.f();
    localObject = r;
    if (b == null)
    {
      b = new aop.a((byte)0);
      b.c = Long.valueOf(aop.a(bool));
    }
    paramaio.a();
    localObject = t.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((yu)((Iterator)localObject).next()).a(paramaje, paramaio);
    }
    c(paramaje, paramaio, paramBoolean);
    s.a(this, false);
    avh.a(getContext(), this);
    if (!paramaio.e()) {
      NotificationTable.c(SnapchatApplication.b(), AndroidNotificationManager.Type.SNAP.name(), paramaje.j());
    }
  }
  
  protected final void a(arj paramarj, SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    Object localObject;
    switch (4.a[paramSnapViewSessionStopReason.ordinal()])
    {
    default: 
      localObject = SnapViewEventAnalytics.EndReason.SWIPED_DOWN;
    }
    while (paramarj == null)
    {
      a((SnapViewEventAnalytics.EndReason)localObject);
      return;
      localObject = SnapViewEventAnalytics.EndReason.ERROR;
      continue;
      localObject = SnapViewEventAnalytics.EndReason.KICKED_OUT;
      continue;
      localObject = SnapViewEventAnalytics.EndReason.TAP_PAST_END;
      continue;
      localObject = SnapViewEventAnalytics.EndReason.FINISHED_VIEWING;
    }
    aio localaio = paramarj.b();
    localaio.a(7, paramarj.a());
    if (localaio.g())
    {
      paramarj = h;
      boolean bool;
      if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.SKIP_REQUESTED)
      {
        bool = true;
        mViewNextSnapMetric = EasyMetric.EasyMetricFactory.b("VIEW_NEXT_SNAP").a("wasSkipped", Boolean.valueOf(bool)).b();
        paramarj = f;
        paramSnapViewSessionStopReason = paramarj.b();
        localObject = paramSnapViewSessionStopReason.c();
        if (localObject != null) {
          break label227;
        }
        Timber.c("SnapView", "SNAP-VIEW: Kicked out after %s, nextSnap is null", new Object[] { paramarj.a() });
      }
      for (;;)
      {
        a(SnapViewEventAnalytics.EndReason.KICKED_OUT);
        return;
        bool = false;
        break;
        label227:
        if ((((aje)localObject).L()) || (((aje)localObject).M()))
        {
          Timber.c("SnapView", "SNAP-VIEW: Moving from %s to nextSnap  %s", new Object[] { paramarj.a(), ((aje)localObject).aa() });
          c((aje)localObject, paramSnapViewSessionStopReason, paramarj.e());
          return;
        }
        Timber.c("SnapView", "SNAP-VIEW: Kicked out after %s, nextSnap is %s", new Object[] { paramarj.a(), ((aje)localObject).aa() });
        if (!((aje)localObject).R()) {
          if (paramSnapViewSessionStopReason.e()) {
            p.a((ajr)localObject, StoryLoadingContext.LOAD_FROM_VIEWING);
          } else {
            new op((aje)localObject).a();
          }
        }
      }
    }
    a((SnapViewEventAnalytics.EndReason)localObject);
  }
  
  @avl
  @ccm
  public final void a(SnapViewEventAnalytics.EndReason paramEndReason)
  {
    boolean bool = false;
    bgp.a();
    if (!c()) {
      return;
    }
    Object localObject1;
    aio localaio;
    label71:
    Object localObject2;
    if (f != null)
    {
      localObject1 = f.a();
      Timber.c("SnapView", "SNAP-VIEW: Hide snap %s with reason %s", new Object[] { localObject1, paramEndReason });
      if (f == null) {
        break label198;
      }
      localaio = f.b();
      localObject2 = n;
      if (paramEndReason != SnapViewEventAnalytics.EndReason.KICKED_OUT) {
        break label204;
      }
      i1 = 1;
      label86:
      if (i1 == 0) {
        break label209;
      }
      ((ng)localObject2).a(true);
      ((ng)localObject2).a("kicked_out");
    }
    for (;;)
    {
      localObject2 = b;
      b = 0;
      a = -1L;
      setVisibility(8);
      i.setVisibility(8);
      j.setVisibility(8);
      localObject2 = l;
      i1 = 0;
      while (i1 < 2)
      {
        a[i1].d();
        b[i1].d();
        i1 += 1;
      }
      localObject1 = null;
      break;
      label198:
      localaio = null;
      break label71;
      label204:
      i1 = 0;
      break label86;
      label209:
      ((ng)localObject2).a(false);
      mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", "last_action", "end_view_media", false);
    }
    if (f != null)
    {
      f.h();
      localObject2 = t.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((yu)((Iterator)localObject2).next()).a(f.b());
      }
      f = null;
      s.a(this, true);
      localObject2 = k;
      SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
      Intent localIntent = ((aol)localObject2).b(localSnapchatApplication);
      localIntent.putExtra("op_code", 1000);
      localIntent.putExtra("display_notifications", true);
      ((aol)localObject2).a(localSnapchatApplication, localIntent);
      if ((localObject1 != null) && (localaio != null) && (localaio.f())) {
        a.a(new bct((ajr)localObject1));
      }
    }
    else
    {
      if (u != null)
      {
        u.h();
        u = null;
      }
      if ((localaio == null) || (localaio.d() == null)) {
        break label796;
      }
    }
    label796:
    for (int i1 = 1;; i1 = 0)
    {
      localObject1 = r;
      if (i1 == 0) {
        bool = true;
      }
      if ((b != null) && (b.d != 0.0D))
      {
        b.e = paramEndReason.getExitEvent();
        b.a = bool;
        localObject2 = EasyMetric.EasyMetricFactory.a("VIEW_STORIES_END");
        ((EasyMetric)localObject2).a("view_location", b.c);
        ((EasyMetric)localObject2).a("time_viewed", Double.valueOf(b.d));
        ((EasyMetric)localObject2).a("full_view", Boolean.valueOf(b.a));
        ((EasyMetric)localObject2).a("exit_event", paramEndReason.getEventName());
        ((EasyMetric)localObject2).a("reachability", a.f());
        ((EasyMetric)localObject2).a(true);
        paramEndReason = new lq();
        exitEvent = b.e;
        viewLocation = b.c;
        numSnapsViewed = b.b;
        fullView = Boolean.valueOf(b.a);
        timeViewed = Double.valueOf(aop.a(b.d));
        storyType = b.f;
        posterId = b.g;
        if (b.h) {
          geoFence = "LOCAL";
        }
        ScAnalyticsEventEngine.a(paramEndReason);
        b = null;
      }
      if (v != null)
      {
        q.a(v);
        v = null;
      }
      if (localaio != null) {
        localaio.b();
      }
      a.a(new bby());
      return;
      a.a(new bdm(false));
      break;
    }
  }
  
  public final void a(@r StorySnapLogbook paramStorySnapLogbook)
  {
    if (paramStorySnapLogbook == null)
    {
      d.setEnabled(false);
      d.setVisibility(8);
    }
    for (;;)
    {
      d.invalidate();
      return;
      if (d.getChildCount() > 1) {
        d.removeViewAt(1);
      }
      d.addView(new MyStoryView(getContext(), this, paramStorySnapLogbook));
      d.a(0, 0.0D);
      d.setEnabled(true);
      d.setVisibility(0);
    }
  }
  
  public final void a(yu paramyu)
  {
    t.add(paramyu);
  }
  
  @cgb
  protected final arj b(aje paramaje, @cgb aio paramaio, boolean paramBoolean)
  {
    boolean bool1 = paramaio.e();
    boolean bool2 = paramaio.f();
    ViewGroup localViewGroup;
    SnapTimerView localSnapTimerView;
    SnapMediaRenderer[] arrayOfSnapMediaRenderer;
    int i1;
    if ((bool1) && (!bool2))
    {
      bool1 = true;
      localViewGroup = i;
      localSnapTimerView = j;
      localank = l;
      if (!paramaje.ai()) {
        break label116;
      }
      arrayOfSnapMediaRenderer = a;
      i1 = c;
      c = (i1 + 1);
    }
    for (ank localank = arrayOfSnapMediaRenderer[(i1 % 2)];; localank = arrayOfSnapMediaRenderer[(i1 % 2)])
    {
      if ((!paramaje.Y()) || (!paramaje.M())) {
        break label151;
      }
      return new arm(paramaje, paramaio);
      bool1 = false;
      break;
      label116:
      arrayOfSnapMediaRenderer = b;
      i1 = d;
      d = (i1 + 1);
    }
    label151:
    return new arg(paramaje, paramaio, localViewGroup, paramBoolean, localSnapTimerView, bool1, localank, nn.a());
  }
  
  public final void b()
  {
    d.a(0, 1.0D);
  }
  
  public final void b(yu paramyu)
  {
    t.remove(paramyu);
  }
  
  public final boolean c()
  {
    return f != null;
  }
  
  public final void d()
  {
    c.b();
  }
  
  public final boolean e()
  {
    if (d.getVisibility() == 0)
    {
      VerticalSwipeLayout localVerticalSwipeLayout = d;
      if (a != 0) {
        localVerticalSwipeLayout.a(0, 1.0D);
      }
      for (int i1 = 1; i1 != 0; i1 = 0) {
        return true;
      }
    }
    if (c())
    {
      a(SnapViewEventAnalytics.EndReason.BACK_PRESSED);
      a.a(new bdz());
      return true;
    }
    return false;
  }
  
  @r
  public aje getSnap()
  {
    if (f == null) {
      return null;
    }
    return f.a();
  }
  
  public static final class a {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */