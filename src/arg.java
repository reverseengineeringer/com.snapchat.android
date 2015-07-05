import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.Timber;
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

public final class arg
  implements arj
{
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  final ViewGroup a;
  final ajv b;
  final aje c;
  final SnapViewEventAnalytics d;
  final SnapTimerView e;
  final Bus f;
  final SnapMediaRenderer g;
  final any h;
  final SnapCountdownController i;
  final aun j;
  final Object k = new Object();
  ark l;
  boolean m = false;
  boolean n = false;
  int o = 0;
  int p = 0;
  int q = 0;
  nn r = null;
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
        label354:
        int j;
        synchronized (k)
        {
          Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer started for %s (active=%b)", new Object[] { c, Boolean.valueOf(f()) });
          if (f())
          {
            a.setVisibility(0);
            g.c();
            c.c(true);
            arg.this.j.a();
            l.a(arg.this);
            if (!(c instanceof ajr)) {
              continue;
            }
            Object localObject6 = (ajr)c;
            double d = ((ajr)localObject6).F();
            Object localObject1 = mUsername;
            localObject3 = ((ajr)localObject6).as();
            localObject5 = c.d();
            lr locallr = aop.c((ajr)localObject6);
            String str2 = mStoryId;
            bool2 = c.Y();
            i = c.ak();
            String str3 = mStoryFilterId;
            Friend localFriend = atm.a(mUsername, ajv.g());
            if ((localFriend == null) || (!mIsLocalStory)) {
              break label782;
            }
            bool1 = true;
            localObject6 = ((ajr)localObject6).ax();
            h.a((String)localObject5, bool2, d, str2, (String)localObject1, (String)localObject3, locallr, bool1, (String)localObject6, str3, i);
            localObject5 = arg.this.d;
            bool1 = c.ai();
            bool2 = d();
            if (!bool1) {
              break label709;
            }
            localObject1 = "video";
            if (mViewSnapMetric == null) {
              break label717;
            }
            mViewSnapMetric.a("type", localObject1).b(false);
            mViewSnapMetric = null;
            if (!d())
            {
              localObject1 = r;
              mSnapViews.incrementAndGet();
              mSnapEngagement.incrementAndGet();
            }
            aje.r();
            if (k()) {
              break label796;
            }
            i = 1;
            if ((i == 0) || (c.e())) {
              break label802;
            }
            j = 1;
            if (i != 0)
            {
              if (arg.this.i.a(c, o)) {
                AnalyticsEvents.a(c, b);
              }
              if (j == 0) {
                break label768;
              }
              localObject1 = arg.this;
              float f1 = p;
              float f2 = q;
              i = o;
              float f3 = a.getWidth();
              f1 = Math.max((a.getHeight() - f3 / (f1 / f2)) / 2.0F, 0.0F);
              f2 = avh.a(10.0F, a.getContext());
              localObject3 = (RelativeLayout.LayoutParams)e.getLayoutParams();
              topMargin = ((int)(f2 + f1));
              e.setLayoutParams((ViewGroup.LayoutParams)localObject3);
              j = Math.min((int)c.G() * 1000, i);
              e.setIsStory(((arg)localObject1).d());
              e.a(j, i);
              e.setVisibility(0);
              ((arg)localObject1).a(j);
            }
          }
          label664:
          return;
          h.a(c.j(), c.d());
        }
        label709:
        String str1 = "image";
        continue;
        label717:
        if (mViewNextSnapMetric != null)
        {
          if (bool2) {}
          for (localObject3 = "story";; localObject3 = "feed")
          {
            mViewNextSnapMetric.a("type", str1).a("context", localObject3).b(false);
            mViewNextSnapMetric = null;
            break label354;
            label768:
            e.setVisibility(4);
            break label664;
            label782:
            bool1 = false;
            break;
          }
          label796:
          i = 0;
          continue;
          label802:
          j = 0;
        }
      }
    }
    
    public final void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      synchronized (k)
      {
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer prepared for %s (active=%b). duration:%dms, width:%d, height:%d", new Object[] { c, Boolean.valueOf(f()), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), Integer.valueOf(paramAnonymousInt3) });
        if (f())
        {
          int i = (int)(Math.floor(c.F() + 1.0D) * 1000.0D);
          o = Math.min(i, paramAnonymousInt1);
          Timber.c("MediaSnapViewSession", "SNAP-VIEW: Snap canonical cap:" + i + "ms, media length: " + paramAnonymousInt1 + "ms, picked: " + o + "ms", new Object[0]);
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
          Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer error for %s (active=%b), errorCode:%s", new Object[] { c, Boolean.valueOf(f()), paramAnonymousErrorCode });
          if (paramAnonymousErrorCode == SnapMediaRenderer.ErrorCode.EXTERNAL_STORAGE_REQUIRED)
          {
            f.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492945));
            Timber.c("MediaSnapViewSession", "SNAP-VIEW: MARKING snap %s as viewed (EXTERNAL STORAGE NO_BITMAP_AVAILABLE)", new Object[] { c });
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
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer complete for %s (active=%b)", new Object[] { c, Boolean.valueOf(f()) });
        a(SnapViewSessionStopReason.TIMER_EXPIRED);
        return;
      }
    }
  };
  protected final yy t = new yy()
  {
    public final void a(long paramAnonymousLong)
    {
      arg.this.a(paramAnonymousLong);
    }
    
    public final void a(aje arg1)
    {
      synchronized (k)
      {
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: timer finished for %s (active=%b)", new Object[] { c, Boolean.valueOf(f()) });
        f.a(new bek(c instanceof ajr));
        a(SnapViewSessionStopReason.TIMER_EXPIRED);
        return;
      }
    }
    
    public final void b(aje paramAnonymousaje) {}
  };
  private final aio u;
  private final np v;
  private final aop w;
  private final atm x;
  private final boolean y;
  private final boolean z;
  
  public arg(aje paramaje, aio paramaio, ViewGroup paramViewGroup, boolean paramBoolean1, SnapTimerView paramSnapTimerView, boolean paramBoolean2, SnapMediaRenderer paramSnapMediaRenderer, nn paramnn)
  {
    this(paramaje, localajv, paramaio, paramViewGroup, localSnapCountdownController, paramBoolean1, localSnapViewEventAnalytics, localBus, any.a, paramSnapTimerView, paramBoolean2, paramSnapMediaRenderer, new aun(), aop.a(), np.a(), new atm(), paramnn);
  }
  
  private arg(aje paramaje, ajv paramajv, aio paramaio, ViewGroup paramViewGroup, SnapCountdownController paramSnapCountdownController, boolean paramBoolean1, SnapViewEventAnalytics paramSnapViewEventAnalytics, Bus paramBus, any paramany, SnapTimerView paramSnapTimerView, boolean paramBoolean2, SnapMediaRenderer paramSnapMediaRenderer, aun paramaun, aop paramaop, np paramnp, atm paramatm, nn paramnn)
  {
    c = paramaje;
    b = paramajv;
    i = paramSnapCountdownController;
    u = paramaio;
    a = paramViewGroup;
    z = paramBoolean1;
    h = paramany;
    d = paramSnapViewEventAnalytics;
    v = paramnp;
    w = paramaop;
    f = paramBus;
    y = paramBoolean2;
    e = paramSnapTimerView;
    g = paramSnapMediaRenderer;
    j = paramaun;
    x = paramatm;
    r = paramnn;
  }
  
  @cgb
  public final aje a()
  {
    return c;
  }
  
  final void a(long paramLong)
  {
    int i1 = (int)Math.ceil(paramLong / 1000.0D);
    int i2 = u.h();
    e.setText(Integer.toString(i1 + i2));
  }
  
  public final void a(ark paramark)
  {
    synchronized (k)
    {
      Timber.c("MediaSnapViewSession", "SNAP-VIEW: preparing %s", new Object[] { c });
      l = paramark;
      A = true;
      SnapCountdownController localSnapCountdownController = i;
      aje localaje = c;
      boolean bool = y;
      yy localyy = t;
      Timber.c("SnapCountdownController", "prepareCountdown %s, isCancelable: %b", new Object[] { localaje, Boolean.valueOf(bool) });
      synchronized (a)
      {
        Object localObject1 = localSnapCountdownController.b(localaje);
        paramark = (ark)localObject1;
        if (localObject1 == null)
        {
          localObject1 = c;
          paramark = new yx(localaje, bool);
          paramark.a(a);
          b.put(localaje.d(), paramark);
        }
        if (localyy != null) {
          paramark.a(localyy);
        }
        if (((c instanceof ajr)) && (c).mWas404ResponseReceived))
        {
          a(SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER);
          return;
        }
      }
    }
    g.a(c, k(), s);
  }
  
  public final void a(boolean paramBoolean)
  {
    for (boolean bool = true;; bool = false) {
      for (;;)
      {
        synchronized (k)
        {
          Timber.c("MediaSnapViewSession", "SNAP-VIEW: Toggle pause %s (pause=%b, active=%b)", new Object[] { c, Boolean.valueOf(paramBoolean), Boolean.valueOf(f()) });
          SnapTimerView localSnapTimerView;
          if (f())
          {
            i.a(c, paramBoolean);
            g.a(paramBoolean);
            localSnapTimerView = e;
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
                break label168;
              }
              j.b();
            }
          }
          else
          {
            return;
          }
          localSnapTimerView.a(b, a);
          b = Long.MAX_VALUE;
        }
        label168:
        j.a();
      }
    }
  }
  
  final boolean a(SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    label100:
    Object localObject5;
    Object localObject2;
    synchronized (k)
    {
      if (f())
      {
        A = false;
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: stopping %s with reason %s", new Object[] { c, paramSnapViewSessionStopReason });
        i.a(c, false);
        switch (arg.3.a[paramSnapViewSessionStopReason.ordinal()])
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
          Timber.c("SnapCountdownController", "removeListener %s", new Object[] { ((aje)localObject5).d() });
        }
      }
    }
    for (;;)
    {
      label309:
      label370:
      Object localObject6;
      boolean bool2;
      double d1;
      double d2;
      double d3;
      label512:
      label517:
      hy localhy;
      Object localObject7;
      String str1;
      String str2;
      Object localObject8;
      synchronized (a)
      {
        localObject5 = ((SnapCountdownController)???).b((aje)localObject5);
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
              ((aje)???).a(l1);
              if (!paramSnapViewSessionStopReason.isErrorReason()) {
                break label1187;
              }
              bool1 = c.ai();
              localObject2 = c.j();
              if (!bool1) {
                break label1456;
              }
              ??? = "video";
              EasyMetric.EasyMetricFactory.c("SNAP_VIEW_FAILED").a("sender", (String)localObject2).a("reason", paramSnapViewSessionStopReason.toString()).a("type", ???).b(false);
              if (SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY == paramSnapViewSessionStopReason) {
                EasyMetric.EasyMetricFactory.a("SNAP_STACK_LOADING").a("type", ???).b(false);
              }
              if (!d()) {
                break label1435;
              }
              localObject6 = (ajr)c;
              AnalyticsEvents.a(u instanceof ajg, (ajr)localObject6);
              localObject5 = w;
              bool2 = C;
              d1 = ((ajr)localObject6).F();
              d2 = Math.max(0.0D, Math.min(aop.a(avf.a(((ajr)localObject6).y())), d1));
              ??? = aop.c((ajr)localObject6);
              d3 = Math.max(0.0D, avf.a(System.currentTimeMillis() - ((ajr)localObject6).W()));
              if (d2 < d1 - 0.10000000149011612D) {
                break label1472;
              }
              bool1 = true;
            }
          }
          else
          {
            switch (aop.1.b[paramSnapViewSessionStopReason.ordinal()])
            {
            case 1: 
              ??? = hl.ERROR;
              localhy = aop.a(((ajr)localObject6).ak());
              if (!aop.a((ajr)localObject6)) {
                break label1478;
              }
              localObject2 = "LOCAL";
              localObject7 = b;
              b = Long.valueOf(b.longValue() + 1L);
              localObject7 = b;
              d += d2;
              b.f = ((lr)???);
              b.g = mUsername;
              b.h = aop.a((ajr)localObject6);
              if (!((ajr)localObject6).Y()) {
                break label1247;
              }
              localObject7 = mUsername;
              str1 = ((ajr)localObject6).d();
              str2 = ((ajr)localObject6).as();
              int i1 = ((ajr)localObject6).at();
              l1 = b.c.longValue();
              localObject8 = ((ajr)localObject6).ax();
              lg locallg = new lg();
              posterId = ((String)localObject7);
              storySnapId = str1;
              adsnapId = str2;
              storyType = ((lr)???);
              viewLocation = b.c;
              timeViewed = Double.valueOf(d2);
              fullView = Boolean.valueOf(bool1);
              exitEvent = ((hl)???);
              mediaType = localhy;
              snapTime = Double.valueOf(d1);
              viewLocation = Long.valueOf(l1);
              adIndexPos = Long.valueOf(i1);
              if (!TextUtils.isEmpty((CharSequence)localObject2)) {
                geoFence = ((String)localObject2);
              }
              if (!TextUtils.isEmpty((CharSequence)localObject8)) {
                sponsor = ((String)localObject8);
              }
              ScAnalyticsEventEngine.a(locallg);
              label826:
              if (!TextUtils.isEmpty(mStoryFilterId))
              {
                localObject7 = mUsername;
                localObject6 = mStoryFilterId;
                b.c.longValue();
                localObject5 = new ht();
                posterId = ((String)localObject7);
                encFilterGeofilterId = ((String)localObject6);
                viewTimeSec = Double.valueOf(d2);
                fullView = Boolean.valueOf(bool1);
                exitEvent = ((hl)???);
                snapTimeSec = Double.valueOf(d1);
                storyType = ((lr)???);
                mediaType = localhy;
                if (!TextUtils.isEmpty((CharSequence)localObject2)) {
                  geoFence = ((String)localObject2);
                }
                ScAnalyticsEventEngine.a((lt)localObject5);
              }
              u.a(c, paramSnapViewSessionStopReason, (int)c.y());
              label978:
              l.a(this, paramSnapViewSessionStopReason);
              return true;
              i.a(c);
              break label100;
              paramSnapViewSessionStopReason = finally;
              throw paramSnapViewSessionStopReason;
              localObject2 = i;
              ??? = c;
              Timber.c("SnapCountdownController", "skipCountdown %s", new Object[] { ??? });
              synchronized (a)
              {
                ??? = ((SnapCountdownController)localObject2).b((aje)???);
                if (??? != null) {
                  ((SnapCountdownController)localObject2).a((yx)???, SnapCountdownController.Action.SKIP);
                }
              }
              localObject2 = i;
              ??? = c;
              Timber.c("SnapCountdownController", "expireCountdown %s", new Object[] { ??? });
              synchronized (a)
              {
                ??? = ((SnapCountdownController)localObject2).b((aje)???);
                if (??? != null) {
                  ((SnapCountdownController)localObject2).a((yx)???, SnapCountdownController.Action.EXPIRE);
                }
              }
            }
          }
        }
      }
      long l1 = mAccumulatedTimeMillis;
      continue;
      label1187:
      if (c.ai()) {}
      for (??? = "video";; ??? = "image")
      {
        EasyMetric.EasyMetricFactory.a("SNAP_VIEW_SUCCESS").a("type", ???).b(false);
        break label370;
        ??? = hl.TAP;
        break label517;
        ??? = hl.SWIPE_DOWN;
        break label517;
        ??? = hl.AUTO_ADVANCE;
        break label517;
        label1247:
        localObject7 = mUsername;
        str1 = ((ajr)localObject6).d();
        l1 = b.c.longValue();
        str2 = ((ajr)localObject6).ax();
        localObject8 = new ln();
        posterId = ((String)localObject7);
        storySnapId = str1;
        storyType = ((lr)???);
        viewLocation = b.c;
        timeViewed = Double.valueOf(d2);
        fullView = Boolean.valueOf(bool1);
        exitEvent = ((hl)???);
        mediaType = localhy;
        snapTime = Double.valueOf(d1);
        ackTimeSec = Double.valueOf(d3);
        viewLocation = Long.valueOf(l1);
        swipeUp = Boolean.valueOf(bool2);
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          geoFence = ((String)localObject2);
        }
        if (!TextUtils.isEmpty(str2)) {
          sponsor = str2;
        }
        ScAnalyticsEventEngine.a((lt)localObject8);
        break label826;
        label1435:
        np.c(c);
        break label978;
        return false;
        break;
        break label512;
        label1456:
        ??? = "image";
        break label309;
      }
      label1472:
      boolean bool1 = false;
      continue;
      label1478:
      localObject2 = null;
    }
  }
  
  @cgb
  public final aio b()
  {
    return u;
  }
  
  @cgb
  public final SnapMediaRenderer c()
  {
    return g;
  }
  
  public final boolean d()
  {
    return (u.e()) || ((c instanceof ajr));
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
      Timber.c("MediaSnapViewSession", "SNAP-VIEW: starting %s (active=%b)", new Object[] { c, Boolean.valueOf(f()) });
      if (f())
      {
        if (n)
        {
          Timber.c("MediaSnapViewSession", "SNAP-VIEW: Starting %s and is prepared", new Object[] { c });
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
  
  public final void j()
  {
    C = true;
  }
  
  final boolean k()
  {
    return ((u instanceof aiq)) && (z);
  }
}

/* Location:
 * Qualified Name:     arg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */