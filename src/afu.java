import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.squareup.otto.Bus;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;

public class afu
  implements adl.a, afv, Observer
{
  private static String o = "ChatDiscoverViewingSession";
  protected final akh a;
  protected final adl b;
  protected final View c;
  protected final TextView d;
  protected final TextView e;
  protected final ImageView f;
  protected final ProgressBar g;
  protected final ImageView h;
  protected boolean i = false;
  protected DiscoverLinkStatusResult j;
  protected boolean k = false;
  protected afu.a l;
  protected final na m;
  protected final ChatPerformanceAnalytics n;
  private String p;
  private long q;
  
  public afu(@cgb afr.c paramc, adl paramadl)
  {
    this((akh)a, paramadl, L, M, N, O, P, Q, na.a(), ChatPerformanceAnalytics.a());
  }
  
  private afu(@cgb akh paramakh, @cgb adl paramadl, @cgb View paramView, @cgb TextView paramTextView1, @cgb TextView paramTextView2, @cgb ImageView paramImageView1, @cgb ProgressBar paramProgressBar, @cgb ImageView paramImageView2, @cgb na paramna, ChatPerformanceAnalytics paramChatPerformanceAnalytics)
  {
    a = paramakh;
    b = paramadl;
    c = paramView;
    d = paramTextView1;
    e = paramTextView2;
    f = paramImageView1;
    g = paramProgressBar;
    h = paramImageView2;
    m = paramna;
    n = paramChatPerformanceAnalytics;
    a.addObserver(this);
    i();
  }
  
  private void d()
  {
    if ((avh.d(f)) && (j()))
    {
      i = false;
      g.setVisibility(8);
      c.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          String str1 = null;
          if (l != null) {
            l.a(a);
          }
          adl localadl = b;
          DiscoverLinkStatusResult localDiscoverLinkStatusResult = j;
          boolean bool = a.mLinkToLongform;
          String str3 = afu.a(afu.this);
          paramAnonymousView = mLinkStatus;
          if (paramAnonymousView == DiscoverLinkStatusResult.LinkStatus.FAILED)
          {
            Timber.e("DiscoverDeepLinkController", "Trying to go back to Discover when linking failed!", new Object[0]);
            return;
          }
          String str2;
          if ((mAdType == 0) && ((paramAnonymousView == DiscoverLinkStatusResult.LinkStatus.ARCHIVED) || (paramAnonymousView == DiscoverLinkStatusResult.LinkStatus.LIVE)))
          {
            str2 = mDSnapId;
            str1 = mEditionId;
          }
          for (;;)
          {
            if (str2 == null) {
              bool = false;
            }
            Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: Going to Discover! Publisher: %s Edition: %s DSnap: %s", new Object[] { mPublisherInternationalName, str1, str2 });
            if (str2 != null) {
              if (bool) {
                paramAnonymousView = ib.LONG_FORM;
              }
            }
            for (;;)
            {
              String str4 = mEditionId;
              String str5 = mDSnapId;
              he localhe = new he();
              if (str3 != null) {
                publisherId = str3;
              }
              if (str5 != null) {
                dsnapId = str5;
              }
              editionId = str4;
              pageSection = paramAnonymousView;
              ScAnalyticsEventEngine.a(localhe);
              b.a(new aez(mPublisherInternationalName, str1, str2, bool));
              return;
              paramAnonymousView = ib.TOP_SNAP;
              continue;
              if (str3 != null) {
                paramAnonymousView = ib.SPLASH;
              } else {
                paramAnonymousView = ib.HOME;
              }
            }
            str2 = null;
          }
        }
      });
      d.setVisibility(0);
      e.setVisibility(0);
    }
  }
  
  private void g()
  {
    i = false;
    g.setVisibility(8);
    h.setVisibility(0);
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        i();
      }
    });
  }
  
  public void a()
  {
    Timber.a(o, "Entered viewing session for Discover snap " + a.d(), new Object[0]);
    c.setBackgroundColor(c.getResources().getColor(2131230786));
    q = SystemClock.elapsedRealtime();
  }
  
  public final void a(afu.a parama)
  {
    l = parama;
  }
  
  public final void a(DiscoverLinkStatusResult paramDiscoverLinkStatusResult, @cgc String paramString)
  {
    boolean bool1;
    if (paramString != null)
    {
      bool1 = true;
      Timber.a(o, "Link status determined for Discover snap " + a.d() + ": " + paramDiscoverLinkStatusResult + " isPublisherAvailable: " + bool1, new Object[0]);
      if (!j()) {
        break label81;
      }
      Timber.a(o, "Link status already successfully determined", new Object[0]);
    }
    label81:
    label257:
    label275:
    for (;;)
    {
      return;
      bool1 = false;
      break;
      j = paramDiscoverLinkStatusResult;
      p = paramString;
      paramString = mLinkStatus;
      boolean bool2;
      if (mAdType > 0)
      {
        bool2 = true;
        k = bool2;
        switch (afu.4.a[paramString.ordinal()])
        {
        }
      }
      for (;;)
      {
        if (paramString == DiscoverLinkStatusResult.LinkStatus.FAILED) {
          break label275;
        }
        d();
        return;
        bool2 = false;
        break;
        e();
        continue;
        f();
        continue;
        if (k) {
          d.setText(2131492865);
        }
        for (;;)
        {
          if (!bool1) {
            break label257;
          }
          paramDiscoverLinkStatusResult = e.getResources().getString(2131493529, new Object[] { a.mPublisherFormalName });
          e.setText(paramDiscoverLinkStatusResult);
          break;
          d.setText(2131493409);
        }
        e.setText(2131493532);
        continue;
        g();
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    Timber.a(o, "Brand icon loaded for for Discover snap " + a.d() + ": brandIconLoadSuccess: " + paramBoolean, new Object[0]);
    if (avh.d(f))
    {
      Timber.a(o, "Brand icon already loaded and showing", new Object[0]);
      return;
    }
    n.a(a.d(), paramBoolean, false);
    if (paramBoolean)
    {
      f.setVisibility(0);
      d();
      return;
    }
    g();
  }
  
  public void b()
  {
    Timber.a(o, "Exited viewing session for Discover snap " + a.d(), new Object[0]);
    c.setBackgroundColor(c.getResources().getColor(2131230789));
    DiscoverLinkStatusResult.LinkStatus localLinkStatus;
    Double localDouble;
    if (!a.V())
    {
      if (j != null) {
        break label122;
      }
      localLinkStatus = null;
      localDouble = Double.valueOf(avf.a(SystemClock.elapsedRealtime() - q));
      if ((!k) || (TextUtils.isEmpty(a.mAdId))) {
        break label133;
      }
      na.b(a, j(), localDouble, localLinkStatus, null);
    }
    label122:
    label133:
    while (TextUtils.isEmpty(a.mDSnapId))
    {
      return;
      localLinkStatus = j.mLinkStatus;
      break;
    }
    na.a(a, j(), localDouble, localLinkStatus, null);
  }
  
  public void c()
  {
    Timber.a(o, "Cleaning up viewing session for Discover snap " + a.d(), new Object[0]);
    if (!avh.d(f)) {
      n.a(a.d(), false, true);
    }
    c.setBackgroundColor(c.getResources().getColor(2131230789));
    d.setVisibility(8);
    e.setVisibility(8);
    f.setVisibility(8);
    a.deleteObserver(this);
    ??? = b;
    Object localObject2 = a.d();
    if (localObject2 != null) {}
    synchronized (i)
    {
      Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: Cancelling link status " + (String)localObject2, new Object[0]);
      j.remove(localObject2);
      localObject2 = (adm.a)k.remove(localObject2);
      adm localadm = c;
      if (localObject2 != null) {}
      synchronized (a)
      {
        b.remove(localObject2);
        c.remove(localObject2);
        i = false;
        j = null;
        c.setOnClickListener(null);
        l = null;
        p = null;
        return;
      }
    }
  }
  
  protected void e()
  {
    String str2;
    if (k) {
      str2 = d.getResources().getString(2131492865);
    }
    for (String str1 = e.getResources().getString(2131493529, new Object[] { a.mPublisherFormalName });; str1 = e.getResources().getString(2131493531))
    {
      d.setText(str2);
      e.setText(str1);
      return;
      str2 = d.getResources().getString(2131493409);
    }
  }
  
  protected void f()
  {
    String str2;
    if (k) {
      str2 = d.getResources().getString(2131492865);
    }
    for (String str1 = e.getResources().getString(2131493529, new Object[] { a.mPublisherFormalName });; str1 = e.getResources().getString(2131493531))
    {
      d.setText(str2);
      e.setText(str1);
      return;
      str2 = d.getResources().getString(2131493409);
    }
  }
  
  public final String h()
  {
    return a.d();
  }
  
  protected final void i()
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        if (i)
        {
          Timber.a(afu.k(), "Load link status already loading " + h(), new Object[0]);
          return;
        }
        if ((!avh.d(f)) || (avh.d(h)))
        {
          if (!avh.d(f))
          {
            localObject1 = n;
            ((ChatPerformanceAnalytics)localObject1).a("DISCOVER_SHARE_BAR_ICON_LOAD", a.d(), EasyMetric.EasyMetricFactory.a("DISCOVER_SHARE_BAR_ICON_LOAD").a("reachability", mNetworkStatusManager.f()).b());
          }
          g.setVisibility(0);
          h.setVisibility(8);
          ??? = a.mPublisherInternationalName;
          Object localObject1 = ???;
          if (??? == null) {
            localObject1 = a.mPublisherName;
          }
          if (localObject1 != null)
          {
            Timber.a(afu.k(), "Loading link status for Discover snap " + h() + " with publisher name " + (String)localObject1, new Object[0]);
            i = true;
            Object localObject3 = b;
            String str2 = a.d();
            Object localObject4 = f;
            String str3 = a.mPublisherName;
            String str4 = a.mEditionId;
            String str5 = a.mDSnapId;
            afu localafu = jdField_this;
            if ((str2 == null) || (localObject4 == null) || (localObject1 == null) || (str5 == null) || (str4 == null))
            {
              a.deleteObserver(jdField_this);
              return;
            }
            for (;;)
            {
              synchronized (i)
              {
                if (!n)
                {
                  b.a(new bbj());
                  n = true;
                }
                Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s start loading status and icon %s", new Object[] { str2, localObject1 });
                adl.c localc = new adl.c((adl)localObject3);
                e = localafu;
                j.put(str2, localc);
                localObject4 = new adl.1((adl)localObject3, str2, (String)localObject1, (ImageView)localObject4);
                k.put(str2, localObject4);
                c.a((adm.a)localObject4);
                d.a(d.b().a(str3));
                if (l.containsKey(str5))
                {
                  Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Using cached link status for %s - %s - %s", new Object[] { str2, localObject1, str4, str5 });
                  localObject1 = (adl.c)l.get(str5);
                  ((adl)localObject3).a(str2, d.mPublisherInternationalName, c);
                  ((adl)localObject3).a(str2, d);
                }
              }
              abx localabx = new abx(str2, str5, str4, str1, o);
              localObject3 = m;
              ((ChatPerformanceAnalytics)localObject3).a("DISCOVER_SHARE_LINK_VALIDATION", str2, EasyMetric.EasyMetricFactory.a("DISCOVER_SHARE_LINK_VALIDATION").a("reachability", mNetworkStatusManager.f()).b());
              localabx.f();
            }
          }
          Timber.a(afu.k(), "Loading link status for Discover snap " + h() + " but no publisher name yet", new Object[0]);
          return;
        }
        Timber.a(afu.k(), "Loading link status and icon for Discover snap " + h() + " but already loaded", new Object[0]);
      }
    });
  }
  
  protected final boolean j()
  {
    return (j != null) && (j.mLinkStatus != DiscoverLinkStatusResult.LinkStatus.FAILED);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObservable == a) {
      i();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(@cgb akh paramakh);
  }
}

/* Location:
 * Qualified Name:     afu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */