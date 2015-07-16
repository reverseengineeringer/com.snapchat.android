package com.snapchat.android.ui;

import aak;
import aen;
import ajk;
import aka;
import akl;
import alv;
import alw;
import ama;
import amd;
import amu;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import aoh;
import aph;
import apl;
import apl.a;
import aps;
import aps.1;
import aps.2;
import aps.3;
import aps.a;
import asf;
import asg;
import asi;
import asj;
import ask;
import asl;
import att;
import awf;
import awj;
import bbo;
import bcy;
import bdj;
import bdt;
import bem;
import bey;
import bhp;
import cdn;
import chc;
import com.snapchat.android.SnapchatApplication;
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
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import ec;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import mi;
import nx;
import oe;
import pg;
import r;
import zq;
import zx;
import zz;

public class SnapView
  extends RelativeLayout
  implements aps.a
{
  public final Bus a;
  public final asg b;
  protected FadeFullScreenAnimationView c;
  protected VerticalSwipeLayout d;
  public boolean e = false;
  public asi f;
  protected final asj g = new asj()
  {
    public final void a(asi paramAnonymousasi)
    {
      int j = 1;
      paramAnonymousasi.a();
      Object localObject1 = SnapView.b(SnapView.this);
      Object localObject2 = paramAnonymousasi.c();
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
      localObject1 = paramAnonymousasi.b();
      localObject2 = ((ajk)localObject1).d();
      if (localObject2 != null) {
        if ((att.IS_GALAXY_S6) && (((aka)localObject2).ag()))
        {
          i = j;
          if (i == 0) {
            break label145;
          }
        }
      }
      for (;;)
      {
        return;
        i = 0;
        break;
        label145:
        new StringBuilder("SNAP-VIEW: Preloading next snap: ").append(localObject2);
        SnapView.a(SnapView.this, b((aka)localObject2, (ajk)localObject1, paramAnonymousasi.e()));
        SnapView.d(SnapView.this).a(SnapView.c(SnapView.this));
        localObject1 = SnapView.e(SnapView.this).iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((zq)((Iterator)localObject1).next()).d(paramAnonymousasi.a());
        }
      }
    }
    
    public final void a(asi paramAnonymousasi, SnapViewSessionStopReason paramAnonymousSnapViewSessionStopReason)
    {
      if (SnapView.a(SnapView.this) == paramAnonymousasi)
      {
        paramAnonymousasi.a();
        SnapView.a(SnapView.this, false);
        if (paramAnonymousSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
        {
          SnapView.a(SnapView.this, paramAnonymousasi.a());
          a(SnapViewEventAnalytics.EndReason.KICKED_OUT);
        }
        for (;;)
        {
          Iterator localIterator = SnapView.e(SnapView.this).iterator();
          while (localIterator.hasNext()) {
            ((zq)localIterator.next()).a(paramAnonymousasi.a(), paramAnonymousSnapViewSessionStopReason, 0);
          }
          if (paramAnonymousSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA)
          {
            if (ReleaseManager.f()) {
              SnapView.f(SnapView.this).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "ALPHA-ONLY: Snap skipped, media player error"));
            }
            SnapView.this.a(paramAnonymousasi, paramAnonymousSnapViewSessionStopReason);
          }
          else if (paramAnonymousSnapViewSessionStopReason != SnapViewSessionStopReason.ABORT_REQUESTED)
          {
            SnapView.this.a(paramAnonymousasi, paramAnonymousSnapViewSessionStopReason);
          }
        }
      }
      if (SnapView.d(SnapView.this) == paramAnonymousasi)
      {
        paramAnonymousasi.a();
        if (paramAnonymousSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
        {
          paramAnonymousSnapViewSessionStopReason = paramAnonymousasi.a();
          if (!(paramAnonymousSnapViewSessionStopReason instanceof akl)) {
            break label246;
          }
          SnapView.g(SnapView.this).a((akl)paramAnonymousSnapViewSessionStopReason);
        }
      }
      for (;;)
      {
        SnapView.d(SnapView.this).h();
        SnapView.a(SnapView.this, null);
        return;
        label246:
        SnapView.a(SnapView.this, paramAnonymousasi.a());
      }
    }
  };
  private final SnapViewEventAnalytics h;
  private final ViewGroup i;
  private final SnapTimerView j;
  private final aph k;
  private final aoh l;
  private final a m;
  private final nx n;
  private final LayoutInflater o;
  private final zz p;
  private final alw q;
  private final apl r;
  private final awf s;
  private final Set<zq> t;
  private asi u;
  private alv v = null;
  private aps w;
  private final VerticalSwipeLayout.a x = new VerticalSwipeLayout.a()
  {
    public final void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      asi localasi;
      if (SnapView.a(SnapView.this) != null)
      {
        localasi = SnapView.a(SnapView.this);
        if (paramAnonymousInt3 == 0) {
          break label36;
        }
      }
      label36:
      for (boolean bool = true;; bool = false)
      {
        localasi.a(bool);
        return;
      }
    }
    
    public final void c(int paramAnonymousInt)
    {
      asi localasi;
      if (SnapView.a(SnapView.this) != null)
      {
        localasi = SnapView.a(SnapView.this);
        if (paramAnonymousInt == 0) {
          break label32;
        }
      }
      label32:
      for (boolean bool = true;; bool = false)
      {
        localasi.a(bool);
        return;
      }
    }
  };
  private final asj y = new ask(new Handler(Looper.getMainLooper()), g);
  
  public SnapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, bbo.a(), new asg(paramContext), SnapViewEventAnalytics.a(), nx.a(), aph.a(), new aoh(paramContext), new a(), zz.a(), alw.a(), apl.a(), new awf(paramContext), ec.a(new zq[] { new aak(), amu.a() }));
  }
  
  SnapView(Context paramContext, AttributeSet paramAttributeSet, Bus paramBus, asg paramasg, SnapViewEventAnalytics paramSnapViewEventAnalytics, nx paramnx, aph paramaph, aoh paramaoh, a parama, zz paramzz, alw paramalw, apl paramapl, awf paramawf, Set<zq> paramSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramBus;
    b = paramasg;
    h = paramSnapViewEventAnalytics;
    k = paramaph;
    l = paramaoh;
    m = parama;
    p = paramzz;
    q = paramalw;
    t = paramSet;
    o = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    o.inflate(2130968782, this, true);
    i = ((ViewGroup)findViewById(2131362837));
    j = ((SnapTimerView)findViewById(2131362838));
    d = ((VerticalSwipeLayout)findViewById(2131362839));
    c = ((FadeFullScreenAnimationView)findViewById(2131362840));
    c.setColorFilter(getResources().getColor(2131230807));
    l.a(i);
    n = paramnx;
    r = paramapl;
    s = paramawf;
    w = new aps(getContext(), d, x, this);
  }
  
  @awj
  @cdn
  private void c(@chc aka paramaka, @chc ajk paramajk, boolean paramBoolean)
  {
    
    if (f != null)
    {
      if (f.a() == paramaka)
      {
        new StringBuilder("SNAP-VIEW: Session active? ").append(f.f());
        paramaka.y();
        paramaka.A();
      }
      f.h();
      f = null;
    }
    Object localObject;
    if (u != null)
    {
      if (u.a() == paramaka)
      {
        new StringBuilder("SNAP-VIEW: Session preloaded for snap ").append(u.a());
        f = u;
        u = null;
      }
    }
    else
    {
      q.a.a(paramaka.aa(), paramaka.i());
      if (!(paramajk instanceof zx)) {
        break label289;
      }
      localObject = (zx)paramajk;
      akl localakl = (akl)paramaka;
      if (localakl == null) {
        break label283;
      }
      localObject = (StorySnapLogbook)a.get(mClientId);
      label188:
      a((StorySnapLogbook)localObject, false);
    }
    for (;;)
    {
      if (f == null)
      {
        f = b(paramaka, paramajk, paramBoolean);
        f.a(y);
      }
      if (f == null) {
        return;
      }
      f.g();
      return;
      new StringBuilder("SNAP-VIEW: Session preloaded for different snap ").append(u.a());
      u.h();
      u = null;
      break;
      label283:
      localObject = null;
      break label188;
      label289:
      a(null, false);
    }
  }
  
  public final void a()
  {
    a(f, SnapViewSessionStopReason.DELETED_SNAP);
    a.a(new bdj());
  }
  
  public final void a(float paramFloat)
  {
    c.setVisibility(0);
    c.setAlpha(paramFloat);
  }
  
  @cdn
  public final void a(@chc aka paramaka, ajk paramajk)
  {
    bhp.a();
    a(paramaka, paramajk, false);
  }
  
  @cdn
  public final void a(@chc aka paramaka, @chc ajk paramajk, boolean paramBoolean)
  {
    if (v == null)
    {
      v = q.b();
      q.a(v.a(paramaka.j()));
    }
    setVisibility(0);
    c.setVisibility(8);
    c.b();
    boolean bool = paramajk.e();
    Object localObject = b;
    a = SystemClock.elapsedRealtime();
    c = bool;
    b += 1;
    bool = paramajk.f();
    r.a(bool);
    paramajk.a();
    localObject = t.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((zq)((Iterator)localObject).next()).a(paramaka, paramajk);
    }
    c(paramaka, paramajk, paramBoolean);
    s.a(this, false);
    awf.a(getContext(), this);
    if (!paramajk.e()) {
      NotificationTable.c(SnapchatApplication.b(), AndroidNotificationManager.Type.SNAP.name(), paramaka.j());
    }
  }
  
  protected final void a(asi paramasi, SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    Object localObject;
    switch (3.a[paramSnapViewSessionStopReason.ordinal()])
    {
    default: 
      localObject = SnapViewEventAnalytics.EndReason.SWIPED_DOWN;
    }
    while (paramasi == null)
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
    ajk localajk = paramasi.b();
    localajk.a(p.c(), paramasi.a());
    if (localajk.g())
    {
      paramasi = h;
      boolean bool;
      if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.SKIP_REQUESTED)
      {
        bool = true;
        mViewNextSnapMetric = EasyMetric.EasyMetricFactory.b("VIEW_NEXT_SNAP").a("wasSkipped", Boolean.valueOf(bool)).b();
        paramasi = f;
        paramSnapViewSessionStopReason = paramasi.b();
        localObject = paramSnapViewSessionStopReason.c();
        if (localObject != null) {
          break label217;
        }
        paramasi.a();
      }
      for (;;)
      {
        a(SnapViewEventAnalytics.EndReason.KICKED_OUT);
        return;
        bool = false;
        break;
        label217:
        if ((((aka)localObject).M()) || (((aka)localObject).N()))
        {
          paramasi.a();
          ((aka)localObject).Y();
          c((aka)localObject, paramSnapViewSessionStopReason, paramasi.e());
          return;
        }
        paramasi.a();
        ((aka)localObject).Y();
        if (!((aka)localObject).S()) {
          if (paramSnapViewSessionStopReason.e()) {
            p.a((akl)localObject, StoryLoadingContext.LOAD_FROM_VIEWING);
          } else {
            new pg((aka)localObject).a();
          }
        }
      }
    }
    a((SnapViewEventAnalytics.EndReason)localObject);
  }
  
  @awj
  @cdn
  public final void a(SnapViewEventAnalytics.EndReason paramEndReason)
  {
    boolean bool = true;
    bhp.a();
    if (!b()) {
      return;
    }
    Object localObject1;
    ajk localajk;
    label49:
    Object localObject2;
    int i1;
    if (f != null)
    {
      localObject1 = f.a();
      if (f == null) {
        break label176;
      }
      localajk = f.b();
      localObject2 = n;
      if (paramEndReason != SnapViewEventAnalytics.EndReason.KICKED_OUT) {
        break label182;
      }
      i1 = 1;
      label64:
      if (i1 == 0) {
        break label187;
      }
      ((nx)localObject2).a(true);
      ((nx)localObject2).a("kicked_out");
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
      label176:
      localajk = null;
      break label49;
      label182:
      i1 = 0;
      break label64;
      label187:
      ((nx)localObject2).a(false);
      mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", "last_action", "end_view_media", false);
    }
    if (f != null)
    {
      f.h();
      localObject2 = t.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((zq)((Iterator)localObject2).next()).a(f.b());
      }
      f = null;
      s.a(this, true);
      localObject2 = k;
      SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
      Intent localIntent = ((aph)localObject2).b(localSnapchatApplication);
      localIntent.putExtra("op_code", 1000);
      localIntent.putExtra("display_notifications", true);
      ((aph)localObject2).a(localSnapchatApplication, localIntent);
      if ((localObject1 != null) && (localajk != null) && (localajk.f())) {
        a.a(new bdt((akl)localObject1));
      }
    }
    else
    {
      if (u != null)
      {
        u.h();
        u = null;
      }
      if ((localajk == null) || (localajk.d() == null)) {
        break label802;
      }
      i1 = 1;
      label422:
      localObject1 = r;
      if (i1 != 0) {
        break label807;
      }
    }
    for (;;)
    {
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
        ((EasyMetric)localObject2).a(false);
        paramEndReason = new mi();
        exitEvent = b.e;
        viewLocation = b.c;
        numSnapsViewed = b.b;
        fullView = Boolean.valueOf(b.a);
        timeViewed = Double.valueOf(apl.a(b.d));
        storyType = b.f;
        posterId = b.g;
        if (b.i != -1L) {
          viewLocationPos = Long.valueOf(b.i);
        }
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
      if (localajk != null) {
        localajk.b();
      }
      a.a(new bcy());
      return;
      a.a(new bem(false));
      break;
      label802:
      i1 = 0;
      break label422;
      label807:
      bool = false;
    }
  }
  
  public final void a(StorySnapLogbook paramStorySnapLogbook, boolean paramBoolean)
  {
    aps localaps = w;
    a.removeAllViews();
    a.f();
    if (paramStorySnapLogbook == null)
    {
      a.setEnabled(false);
      a.setVisibility(8);
      a.invalidate();
      return;
    }
    a.setEnabled(true);
    a.setVisibility(0);
    MyStoryView localMyStoryView = new MyStoryView(b, paramStorySnapLogbook, localaps);
    localMyStoryView.measure(0, 0);
    int i1;
    if (paramBoolean)
    {
      i1 = localMyStoryView.getViewersInfoHeight();
      paramStorySnapLogbook = new View(b);
      paramStorySnapLogbook.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }
    for (;;)
    {
      a.addView(paramStorySnapLogbook);
      int i2 = localMyStoryView.getViewersInfoHeight() + localMyStoryView.getVisibleViewersListHeight();
      a.a(localMyStoryView, i2, i1);
      if (i2 != i1)
      {
        a.a(c);
        a.a(new aps.3(localaps, localMyStoryView));
      }
      a.a(0, 0.0D);
      break;
      d = new aen(b);
      d.a(-1, -16777216);
      d.a();
      d.a(new aps.1(localaps));
      a.a(new aps.2(localaps));
      paramStorySnapLogbook = d.c;
      i1 = 0;
    }
  }
  
  public final void a(zq paramzq)
  {
    t.add(paramzq);
  }
  
  @chc
  protected final asi b(aka paramaka, @chc ajk paramajk, boolean paramBoolean)
  {
    boolean bool1 = paramajk.e();
    boolean bool2 = paramajk.f();
    ViewGroup localViewGroup;
    SnapTimerView localSnapTimerView;
    SnapMediaRenderer[] arrayOfSnapMediaRenderer;
    int i1;
    if ((bool1) && (!bool2))
    {
      bool1 = true;
      localViewGroup = i;
      localSnapTimerView = j;
      localaoh = l;
      if (!paramaka.ag()) {
        break label116;
      }
      arrayOfSnapMediaRenderer = a;
      i1 = c;
      c = (i1 + 1);
    }
    for (aoh localaoh = arrayOfSnapMediaRenderer[(i1 % 2)];; localaoh = arrayOfSnapMediaRenderer[(i1 % 2)])
    {
      if ((!paramaka.W()) || (!paramaka.N())) {
        break label151;
      }
      return new asl(paramaka, paramajk);
      bool1 = false;
      break;
      label116:
      arrayOfSnapMediaRenderer = b;
      i1 = d;
      d = (i1 + 1);
    }
    label151:
    return new asf(paramaka, paramajk, localViewGroup, paramBoolean, localSnapTimerView, bool1, localaoh, oe.a());
  }
  
  public final void b(zq paramzq)
  {
    t.remove(paramzq);
  }
  
  public final boolean b()
  {
    return f != null;
  }
  
  public final void c()
  {
    c.b();
  }
  
  public final boolean d()
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
    if (b())
    {
      a(SnapViewEventAnalytics.EndReason.BACK_PRESSED);
      a.a(new bey());
      return true;
    }
    return false;
  }
  
  @r
  public aka getSnap()
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