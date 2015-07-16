import android.widget.ImageView;
import android.widget.ProgressBar;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.squareup.otto.Bus;
import java.util.Map;

final class agu$1
  implements Runnable
{
  agu$1(agu paramagu1, agu paramagu2) {}
  
  public final void run()
  {
    if (b.i)
    {
      new StringBuilder("Load link status already loading ").append(b.h());
      return;
    }
    if ((!awf.d(b.f)) || (awf.d(b.h)))
    {
      if (!awf.d(b.f))
      {
        localObject1 = b.n;
        ((ChatPerformanceAnalytics)localObject1).a("DISCOVER_SHARE_BAR_ICON_LOAD", b.a.d(), EasyMetric.EasyMetricFactory.a("DISCOVER_SHARE_BAR_ICON_LOAD").a("reachability", mNetworkStatusManager.f()).b());
      }
      b.g.setVisibility(0);
      b.h.setVisibility(8);
      ??? = b.a.mPublisherInternationalName;
      Object localObject1 = ???;
      if (??? == null) {
        localObject1 = b.a.mPublisherName;
      }
      if (localObject1 != null)
      {
        new StringBuilder("Loading link status for Discover snap ").append(b.h()).append(" with publisher name ").append((String)localObject1);
        b.i = true;
        Object localObject3 = b.b;
        String str2 = b.a.d();
        Object localObject4 = b.f;
        String str3 = b.a.mPublisherName;
        String str4 = b.a.mEditionId;
        String str5 = b.a.mDSnapId;
        agu localagu = a;
        if ((str2 == null) || (localObject4 == null) || (localObject1 == null) || (str5 == null) || (str4 == null))
        {
          b.a.deleteObserver(a);
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
      new StringBuilder("Loading link status for Discover snap ").append(b.h()).append(" but no publisher name yet");
      return;
    }
    new StringBuilder("Loading link status and icon for Discover snap ").append(b.h()).append(" but already loaded");
  }
}

/* Location:
 * Qualified Name:     agu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */