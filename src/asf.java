import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.controller.countdown.SnapCountdownController;
import com.snapchat.android.controller.countdown.SnapCountdownController.Action;
import com.snapchat.android.controller.countdown.SnapCountdownController.a;
import com.snapchat.android.model.Friend;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.ui.SnapTimerView;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public final class asf
  implements asi
{
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  final ViewGroup a;
  final akp b;
  final aka c;
  final SnapViewEventAnalytics d;
  final SnapTimerView e;
  final Bus f;
  final SnapMediaRenderer g;
  final aov h;
  final SnapCountdownController i;
  final avl j;
  final Object k = new Object();
  asj l;
  boolean m = false;
  boolean n = false;
  int o = 0;
  int p = 0;
  int q = 0;
  oe r = null;
  protected final SnapMediaRenderer.a s = new SnapMediaRenderer.a()
  {
    public final void a()
    {
      for (;;)
      {
        Object localObject3;
        Object localObject5;
        boolean bool2;
        int i;
        boolean bool1;
        label328:
        int j;
        synchronized (k)
        {
          Object localObject1 = c;
          f();
          if (f())
          {
            a.setVisibility(0);
            g.c();
            c.c(true);
            asf.this.j.a();
            l.a(asf.this);
            if (!(c instanceof akl)) {
              continue;
            }
            Object localObject6 = (akl)c;
            double d = ((akl)localObject6).G();
            localObject1 = mUsername;
            localObject3 = ((akl)localObject6).aq();
            localObject5 = c.d();
            mj localmj = apl.c((akl)localObject6);
            String str2 = mStoryId;
            bool2 = c.W();
            i = c.ai();
            String str3 = mStoryFilterId;
            localObject6 = auk.a(mUsername, akp.g());
            if ((localObject6 == null) || (!mIsLocalStory)) {
              break label756;
            }
            bool1 = true;
            h.a((String)localObject5, bool2, d, str2, (String)localObject1, (String)localObject3, localmj, bool1, str3, i);
            localObject5 = asf.this.d;
            bool1 = c.ag();
            bool2 = d();
            if (!bool1) {
              break label683;
            }
            localObject1 = "video";
            if (mViewSnapMetric == null) {
              break label691;
            }
            mViewSnapMetric.a("type", localObject1).b(false);
            mViewSnapMetric = null;
            if (!d())
            {
              localObject1 = r;
              mSnapViews.incrementAndGet();
              mSnapEngagement.incrementAndGet();
            }
            aka.s();
            if (j()) {
              break label770;
            }
            i = 1;
            if ((i == 0) || (c.e())) {
              break label776;
            }
            j = 1;
            if (i != 0)
            {
              if (asf.this.i.a(c, o)) {
                AnalyticsEvents.a(c, b);
              }
              if (j == 0) {
                break label742;
              }
              localObject1 = asf.this;
              float f1 = p;
              float f2 = q;
              i = o;
              float f3 = a.getWidth();
              f1 = Math.max((a.getHeight() - f3 / (f1 / f2)) / 2.0F, 0.0F);
              f2 = awf.a(10.0F, a.getContext());
              localObject3 = (RelativeLayout.LayoutParams)e.getLayoutParams();
              topMargin = ((int)(f2 + f1));
              e.setLayoutParams((ViewGroup.LayoutParams)localObject3);
              j = Math.min((int)c.H() * 1000, i);
              e.setIsStory(((asf)localObject1).d());
              e.a(j, i);
              e.setVisibility(0);
              ((asf)localObject1).a(j);
            }
          }
          label638:
          return;
          h.a(c.j(), c.d());
        }
        label683:
        String str1 = "image";
        continue;
        label691:
        if (mViewNextSnapMetric != null)
        {
          if (bool2) {}
          for (localObject3 = "story";; localObject3 = "feed")
          {
            mViewNextSnapMetric.a("type", str1).a("context", localObject3).b(false);
            mViewNextSnapMetric = null;
            break label328;
            label742:
            e.setVisibility(4);
            break label638;
            label756:
            bool1 = false;
            break;
          }
          label770:
          i = 0;
          continue;
          label776:
          j = 0;
        }
      }
    }
    
    public final void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      synchronized (k)
      {
        aka localaka = c;
        f();
        if (f())
        {
          int i = (int)(Math.floor(c.G() + 1.0D) * 1000.0D);
          o = Math.min(i, paramAnonymousInt1);
          new StringBuilder("SNAP-VIEW: Snap canonical cap:").append(i).append("ms, media length: ").append(paramAnonymousInt1).append("ms, picked: ").append(o).append("ms");
          p = paramAnonymousInt2;
          q = paramAnonymousInt3;
          n = true;
          if (m) {
            g();
          }
        }
        return;
      }
    }
    
    public final void a(SnapMediaRenderer.ErrorCode paramAnonymousErrorCode)
    {
      for (;;)
      {
        synchronized (k)
        {
          aka localaka = c;
          f();
          if (paramAnonymousErrorCode == SnapMediaRenderer.ErrorCode.EXTERNAL_STORAGE_REQUIRED)
          {
            f.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492945));
            paramAnonymousErrorCode = c;
            a(SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA);
            return;
          }
          if (paramAnonymousErrorCode == SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY) {
            a(SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY);
          }
        }
        if ((paramAnonymousErrorCode == SnapMediaRenderer.ErrorCode.PLAYBACK_ERROR) && (d())) {
          a(SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA);
        }
      }
    }
    
    public final void b()
    {
      synchronized (k)
      {
        aka localaka = c;
        f();
        a(SnapViewSessionStopReason.TIMER_EXPIRED);
        return;
      }
    }
  };
  protected final zu t = new zu()
  {
    public final void a(aka arg1)
    {
      synchronized (k)
      {
        aka localaka = c;
        f();
        f.a(new bfj(c instanceof akl));
        a(SnapViewSessionStopReason.TIMER_EXPIRED);
        return;
      }
    }
    
    public final void a(aka paramAnonymousaka, long paramAnonymousLong)
    {
      a(paramAnonymousLong);
    }
    
    public final void b(aka paramAnonymousaka) {}
    
    public final void c(aka paramAnonymousaka) {}
  };
  private final ajk u;
  private final og v;
  private final apl w;
  private final auk x;
  private final boolean y;
  private final boolean z;
  
  public asf(aka paramaka, ajk paramajk, ViewGroup paramViewGroup, boolean paramBoolean1, SnapTimerView paramSnapTimerView, boolean paramBoolean2, SnapMediaRenderer paramSnapMediaRenderer, oe paramoe)
  {
    this(paramaka, localakp, paramajk, paramViewGroup, localSnapCountdownController, paramBoolean1, localSnapViewEventAnalytics, localBus, aov.a, paramSnapTimerView, paramBoolean2, paramSnapMediaRenderer, new avl(), apl.a(), og.a(), new auk(), paramoe);
  }
  
  private asf(aka paramaka, akp paramakp, ajk paramajk, ViewGroup paramViewGroup, SnapCountdownController paramSnapCountdownController, boolean paramBoolean1, SnapViewEventAnalytics paramSnapViewEventAnalytics, Bus paramBus, aov paramaov, SnapTimerView paramSnapTimerView, boolean paramBoolean2, SnapMediaRenderer paramSnapMediaRenderer, avl paramavl, apl paramapl, og paramog, auk paramauk, oe paramoe)
  {
    c = paramaka;
    b = paramakp;
    i = paramSnapCountdownController;
    u = paramajk;
    a = paramViewGroup;
    z = paramBoolean1;
    h = paramaov;
    d = paramSnapViewEventAnalytics;
    v = paramog;
    w = paramapl;
    f = paramBus;
    y = paramBoolean2;
    e = paramSnapTimerView;
    g = paramSnapMediaRenderer;
    j = paramavl;
    x = paramauk;
    r = paramoe;
  }
  
  @chc
  public final aka a()
  {
    return c;
  }
  
  final void a(long paramLong)
  {
    int i1 = (int)Math.ceil(paramLong / 1000.0D);
    int i2 = u.h();
    e.setText(Integer.toString(i1 + i2));
  }
  
  public final void a(asj paramasj)
  {
    synchronized (k)
    {
      Object localObject1 = c;
      l = paramasj;
      A = true;
      SnapCountdownController localSnapCountdownController = i;
      aka localaka = c;
      boolean bool = y;
      zu localzu = t;
      synchronized (a)
      {
        localObject1 = localSnapCountdownController.b(localaka);
        paramasj = (asj)localObject1;
        if (localObject1 == null)
        {
          localObject1 = c;
          paramasj = new zt(localaka, bool);
          paramasj.a(a);
          b.put(localaka.d(), paramasj);
        }
        if (localzu != null) {
          paramasj.a(localzu);
        }
        if (((c instanceof akl)) && (c).mWas404ResponseReceived))
        {
          a(SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER);
          return;
        }
      }
    }
    g.a(c, j(), s);
  }
  
  public final void a(boolean paramBoolean)
  {
    for (boolean bool = true;; bool = false) {
      for (;;)
      {
        synchronized (k)
        {
          Object localObject2 = c;
          f();
          if (f())
          {
            i.a(c, paramBoolean);
            g.a(paramBoolean);
            localObject2 = e;
            if (b == Long.MAX_VALUE) {
              break;
            }
            if (paramBoolean != bool)
            {
              if (paramBoolean)
              {
                b = (c - SystemClock.elapsedRealtime());
                d = false;
              }
            }
            else
            {
              if (!paramBoolean) {
                break label143;
              }
              j.b();
            }
          }
          else
          {
            return;
          }
          ((SnapTimerView)localObject2).a(b, a);
          b = Long.MAX_VALUE;
        }
        label143:
        j.a();
      }
    }
  }
  
  final boolean a(SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    label80:
    Object localObject5;
    Object localObject2;
    synchronized (k)
    {
      if (f())
      {
        A = false;
        ??? = c;
        i.a(c, false);
        switch (asf.3.a[paramSnapViewSessionStopReason.ordinal()])
        {
        case 1: 
          if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.SKIP_REQUESTED) {
            e.d = false;
          }
          g.b();
          h.b();
          j.b();
          c.c(false);
          ??? = i;
          localObject5 = c;
          localObject2 = t;
          ((aka)localObject5).d();
        }
      }
    }
    for (;;)
    {
      label275:
      label336:
      Object localObject6;
      boolean bool2;
      double d1;
      double d2;
      double d3;
      label476:
      label481:
      ih localih;
      Object localObject7;
      String str;
      Object localObject8;
      synchronized (a)
      {
        localObject5 = ((SnapCountdownController)???).b((aka)localObject5);
        if (localObject5 != null) {}
        synchronized (a)
        {
          b.remove(localObject2);
          if (B)
          {
            ??? = c;
            localObject2 = j;
            if (mIsAccumulating)
            {
              l1 = 0L;
              ((aka)???).a(l1);
              if (!paramSnapViewSessionStopReason.isErrorReason()) {
                break label1095;
              }
              bool1 = c.ag();
              localObject2 = c.j();
              if (!bool1) {
                break label1342;
              }
              ??? = "video";
              EasyMetric.EasyMetricFactory.c("SNAP_VIEW_FAILED").a("sender", (String)localObject2).a("reason", paramSnapViewSessionStopReason.toString()).a("type", ???).b(false);
              if (SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY == paramSnapViewSessionStopReason) {
                EasyMetric.EasyMetricFactory.a("SNAP_STACK_LOADING").a("type", ???).b(false);
              }
              if (!d()) {
                break label1321;
              }
              localObject6 = (akl)c;
              AnalyticsEvents.a(u instanceof akc, (akl)localObject6);
              localObject5 = w;
              bool2 = C;
              d1 = ((akl)localObject6).G();
              d2 = Math.max(0.0D, Math.min(apl.a(awd.a(((akl)localObject6).z())), d1));
              ??? = apl.c((akl)localObject6);
              d3 = Math.max(0.0D, awd.a(System.currentTimeMillis() - ((akl)localObject6).U()));
              if (d2 < d1 - 0.10000000149011612D) {
                break label1358;
              }
              bool1 = true;
            }
          }
          else
          {
            switch (apl.1.b[paramSnapViewSessionStopReason.ordinal()])
            {
            case 1: 
              ??? = hu.ERROR;
              localih = apl.a(((akl)localObject6).ai());
              if (!apl.a((akl)localObject6)) {
                break label1364;
              }
              localObject2 = "LOCAL";
              localObject7 = b;
              b = Long.valueOf(b.longValue() + 1L);
              localObject7 = b;
              d += d2;
              b.f = ((mj)???);
              b.g = mUsername;
              b.h = apl.a((akl)localObject6);
              if (!((akl)localObject6).W()) {
                break label1155;
              }
              localObject7 = mUsername;
              str = ((akl)localObject6).d();
              localObject8 = ((akl)localObject6).aq();
              int i1 = ((akl)localObject6).ar();
              l1 = b.c.longValue();
              ly locally = new ly();
              posterId = ((String)localObject7);
              storySnapId = str;
              adsnapId = ((String)localObject8);
              storyType = ((mj)???);
              viewLocation = b.c;
              timeViewed = Double.valueOf(d2);
              fullView = Boolean.valueOf(bool1);
              exitEvent = ((hu)???);
              mediaType = localih;
              snapTime = Double.valueOf(d1);
              viewLocation = Long.valueOf(l1);
              adIndexPos = Long.valueOf(i1);
              if (!TextUtils.isEmpty((CharSequence)localObject2)) {
                geoFence = ((String)localObject2);
              }
              ScAnalyticsEventEngine.a(locally);
              label768:
              if (!TextUtils.isEmpty(mStoryFilterId))
              {
                localObject7 = mUsername;
                localObject6 = mStoryFilterId;
                b.c.longValue();
                localObject5 = new ic();
                posterId = ((String)localObject7);
                encFilterGeofilterId = ((String)localObject6);
                viewTimeSec = Double.valueOf(d2);
                fullView = Boolean.valueOf(bool1);
                exitEvent = ((hu)???);
                snapTimeSec = Double.valueOf(d1);
                storyType = ((mj)???);
                mediaType = localih;
                if (!TextUtils.isEmpty((CharSequence)localObject2)) {
                  geoFence = ((String)localObject2);
                }
                ScAnalyticsEventEngine.a((ml)localObject5);
              }
              u.a(c, paramSnapViewSessionStopReason, (int)c.z());
              label920:
              l.a(this, paramSnapViewSessionStopReason);
              return true;
              i.a(c);
              break label80;
              paramSnapViewSessionStopReason = finally;
              throw paramSnapViewSessionStopReason;
              localObject2 = i;
              ??? = c;
              synchronized (a)
              {
                ??? = ((SnapCountdownController)localObject2).b((aka)???);
                if (??? != null) {
                  ((SnapCountdownController)localObject2).a((zt)???, SnapCountdownController.Action.SKIP);
                }
              }
              localObject2 = i;
              ??? = c;
              synchronized (a)
              {
                ??? = ((SnapCountdownController)localObject2).b((aka)???);
                if (??? != null) {
                  ((SnapCountdownController)localObject2).a((zt)???, SnapCountdownController.Action.EXPIRE);
                }
              }
            }
          }
        }
      }
      long l1 = mAccumulatedTimeMillis;
      continue;
      label1095:
      if (c.ag()) {}
      for (??? = "video";; ??? = "image")
      {
        EasyMetric.EasyMetricFactory.a("SNAP_VIEW_SUCCESS").a("type", ???).b(false);
        break label336;
        ??? = hu.TAP;
        break label481;
        ??? = hu.SWIPE_DOWN;
        break label481;
        ??? = hu.AUTO_ADVANCE;
        break label481;
        label1155:
        localObject7 = mUsername;
        str = ((akl)localObject6).d();
        l1 = b.c.longValue();
        localObject8 = new mf();
        posterId = ((String)localObject7);
        storySnapId = str;
        storyType = ((mj)???);
        viewLocation = b.c;
        timeViewed = Double.valueOf(d2);
        fullView = Boolean.valueOf(bool1);
        exitEvent = ((hu)???);
        mediaType = localih;
        snapTime = Double.valueOf(d1);
        ackTimeSec = Double.valueOf(d3);
        viewLocation = Long.valueOf(l1);
        swipeUp = Boolean.valueOf(bool2);
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          geoFence = ((String)localObject2);
        }
        ScAnalyticsEventEngine.a((ml)localObject8);
        break label768;
        label1321:
        og.c(c);
        break label920;
        return false;
        break;
        break label476;
        label1342:
        ??? = "image";
        break label275;
      }
      label1358:
      boolean bool1 = false;
      continue;
      label1364:
      localObject2 = null;
    }
  }
  
  @chc
  public final ajk b()
  {
    return u;
  }
  
  @chc
  public final SnapMediaRenderer c()
  {
    return g;
  }
  
  public final boolean d()
  {
    return (u.e()) || ((c instanceof akl));
  }
  
  public final boolean e()
  {
    return z;
  }
  
  public final boolean f()
  {
    synchronized (k)
    {
      boolean bool = A;
      return bool;
    }
  }
  
  public final void g()
  {
    synchronized (k)
    {
      aka localaka = c;
      f();
      if (f())
      {
        if (n)
        {
          localaka = c;
          B = true;
          g.a();
        }
      }
      else {
        return;
      }
      m = true;
    }
  }
  
  public final void h()
  {
    a(SnapViewSessionStopReason.ABORT_REQUESTED);
  }
  
  public final void i()
  {
    a(SnapViewSessionStopReason.SKIP_REQUESTED);
  }
  
  final boolean j()
  {
    return ((u instanceof ajm)) && (z);
  }
}

/* Location:
 * Qualified Name:     asf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */