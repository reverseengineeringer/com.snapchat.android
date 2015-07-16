import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
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

public class agu
  implements ael.a, agv, Observer
{
  private static String o = "ChatDiscoverViewingSession";
  protected final alc a;
  protected final ael b;
  protected final View c;
  protected final TextView d;
  protected final TextView e;
  protected final ImageView f;
  protected final ProgressBar g;
  protected final ImageView h;
  protected boolean i = false;
  protected DiscoverLinkStatusResult j;
  protected boolean k = false;
  protected agu.a l;
  protected final nr m;
  protected final ChatPerformanceAnalytics n;
  private String p;
  private long q;
  
  public agu(@chc agr.c paramc, ael paramael)
  {
    this((alc)a, paramael, L, M, N, O, P, Q, nr.a(), ChatPerformanceAnalytics.a());
  }
  
  private agu(@chc alc paramalc, @chc ael paramael, @chc View paramView, @chc TextView paramTextView1, @chc TextView paramTextView2, @chc ImageView paramImageView1, @chc ProgressBar paramProgressBar, @chc ImageView paramImageView2, @chc nr paramnr, ChatPerformanceAnalytics paramChatPerformanceAnalytics)
  {
    a = paramalc;
    b = paramael;
    c = paramView;
    d = paramTextView1;
    e = paramTextView2;
    f = paramImageView1;
    g = paramProgressBar;
    h = paramImageView2;
    m = paramnr;
    n = paramChatPerformanceAnalytics;
    a.addObserver(this);
    i();
  }
  
  private void d()
  {
    if ((awf.d(f)) && (j()))
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
          ael localael = b;
          DiscoverLinkStatusResult localDiscoverLinkStatusResult = j;
          boolean bool = a.mLinkToLongform;
          String str3 = agu.a(agu.this);
          paramAnonymousView = mLinkStatus;
          String str2;
          if (paramAnonymousView != DiscoverLinkStatusResult.LinkStatus.FAILED)
          {
            if ((mAdType != 0) || ((paramAnonymousView != DiscoverLinkStatusResult.LinkStatus.ARCHIVED) && (paramAnonymousView != DiscoverLinkStatusResult.LinkStatus.LIVE))) {
              break label259;
            }
            str2 = mDSnapId;
            str1 = mEditionId;
          }
          for (;;)
          {
            if (str2 == null) {
              bool = false;
            }
            paramAnonymousView = mPublisherInternationalName;
            if (str2 != null) {
              if (bool) {
                paramAnonymousView = ik.LONG_FORM;
              }
            }
            for (;;)
            {
              String str4 = mEditionId;
              String str5 = mDSnapId;
              hn localhn = new hn();
              if (str3 != null) {
                publisherId = str3;
              }
              if (str5 != null) {
                dsnapId = str5;
              }
              editionId = str4;
              pageSection = paramAnonymousView;
              ScAnalyticsEventEngine.a(localhn);
              b.a(new afz(mPublisherInternationalName, str1, str2, bool));
              return;
              paramAnonymousView = ik.TOP_SNAP;
              continue;
              if (str3 != null) {
                paramAnonymousView = ik.SPLASH;
              } else {
                paramAnonymousView = ik.HOME;
              }
            }
            label259:
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
    new StringBuilder("Entered viewing session for Discover snap ").append(a.d());
    c.setBackgroundColor(c.getResources().getColor(2131230787));
    q = SystemClock.elapsedRealtime();
  }
  
  public final void a(agu.a parama)
  {
    l = parama;
  }
  
  public final void a(DiscoverLinkStatusResult paramDiscoverLinkStatusResult, @chd String paramString)
  {
    boolean bool1;
    if (paramString != null)
    {
      bool1 = true;
      new StringBuilder("Link status determined for Discover snap ").append(a.d()).append(": ").append(paramDiscoverLinkStatusResult).append(" isPublisherAvailable: ").append(bool1);
      if (!j()) {
        break label57;
      }
    }
    label57:
    label231:
    label249:
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
        switch (agu.4.a[paramString.ordinal()])
        {
        }
      }
      for (;;)
      {
        if (paramString == DiscoverLinkStatusResult.LinkStatus.FAILED) {
          break label249;
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
            break label231;
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
    new StringBuilder("Brand icon loaded for for Discover snap ").append(a.d()).append(": brandIconLoadSuccess: ").append(paramBoolean);
    if (awf.d(f)) {
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
    new StringBuilder("Exited viewing session for Discover snap ").append(a.d());
    c.setBackgroundColor(c.getResources().getColor(2131230790));
    DiscoverLinkStatusResult.LinkStatus localLinkStatus;
    Double localDouble;
    if (!a.X())
    {
      if (j != null) {
        break label110;
      }
      localLinkStatus = null;
      localDouble = Double.valueOf(awd.a(SystemClock.elapsedRealtime() - q));
      if ((!k) || (TextUtils.isEmpty(a.mAdId))) {
        break label121;
      }
      nr.b(a, j(), localDouble, localLinkStatus, null);
    }
    label110:
    label121:
    while (TextUtils.isEmpty(a.mDSnapId))
    {
      return;
      localLinkStatus = j.mLinkStatus;
      break;
    }
    nr.a(a, j(), localDouble, localLinkStatus, null);
  }
  
  public void c()
  {
    new StringBuilder("Cleaning up viewing session for Discover snap ").append(a.d());
    if (!awf.d(f)) {
      n.a(a.d(), false, true);
    }
    c.setBackgroundColor(c.getResources().getColor(2131230790));
    d.setVisibility(8);
    e.setVisibility(8);
    f.setVisibility(8);
    a.deleteObserver(this);
    ??? = b;
    Object localObject2 = a.d();
    if (localObject2 != null) {}
    synchronized (i)
    {
      j.remove(localObject2);
      localObject2 = (aem.a)k.remove(localObject2);
      aem localaem = c;
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
    bhp.a(new Runnable()
    {
      public final void run()
      {
        if (i)
        {
          new StringBuilder("Load link status already loading ").append(h());
          return;
        }
        if ((!awf.d(f)) || (awf.d(h)))
        {
          if (!awf.d(f))
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
            new StringBuilder("Loading link status for Discover snap ").append(h()).append(" with publisher name ").append((String)localObject1);
            i = true;
            Object localObject3 = b;
            String str2 = a.d();
            Object localObject4 = f;
            String str3 = a.mPublisherName;
            String str4 = a.mEditionId;
            String str5 = a.mDSnapId;
            agu localagu = jdField_this;
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
                  b.a(new bcj());
                  n = true;
                }
                ael.c localc = new ael.c((ael)localObject3);
                e = localagu;
                j.put(str2, localc);
                localObject4 = new ael.1((ael)localObject3, str2, (String)localObject1, (ImageView)localObject4);
                k.put(str2, localObject4);
                c.a((aem.a)localObject4);
                d.a(d.b().a(str3));
                if (l.containsKey(str5))
                {
                  localObject1 = (ael.c)l.get(str5);
                  ((ael)localObject3).a(str2, d.mPublisherInternationalName, c);
                  ((ael)localObject3).a(str2, d);
                }
              }
              acx localacx = new acx(str2, str5, str4, str1, o);
              localObject3 = m;
              ((ChatPerformanceAnalytics)localObject3).a("DISCOVER_SHARE_LINK_VALIDATION", str2, EasyMetric.EasyMetricFactory.a("DISCOVER_SHARE_LINK_VALIDATION").a("reachability", mNetworkStatusManager.f()).b());
              localacx.execute();
            }
          }
          new StringBuilder("Loading link status for Discover snap ").append(h()).append(" but no publisher name yet");
          return;
        }
        new StringBuilder("Loading link status and icon for Discover snap ").append(h()).append(" but already loaded");
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
    public abstract void a(@chc alc paramalc);
  }
}

/* Location:
 * Qualified Name:     agu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */