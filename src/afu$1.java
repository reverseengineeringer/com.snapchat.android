import android.widget.ImageView;
import android.widget.ProgressBar;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.squareup.otto.Bus;
import java.util.Map;

final class afu$1
  implements Runnable
{
  afu$1(afu paramafu1, afu paramafu2) {}
  
  public final void run()
  {
    if (b.i)
    {
      Timber.a(afu.k(), "Load link status already loading " + b.h(), new Object[0]);
      return;
    }
    if ((!avh.d(b.f)) || (avh.d(b.h)))
    {
      if (!avh.d(b.f))
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
        Timber.a(afu.k(), "Loading link status for Discover snap " + b.h() + " with publisher name " + (String)localObject1, new Object[0]);
        b.i = true;
        Object localObject3 = b.b;
        String str2 = b.a.d();
        Object localObject4 = b.f;
        String str3 = b.a.mPublisherName;
        String str4 = b.a.mEditionId;
        String str5 = b.a.mDSnapId;
        afu localafu = a;
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
      Timber.a(afu.k(), "Loading link status for Discover snap " + b.h() + " but no publisher name yet", new Object[0]);
      return;
    }
    Timber.a(afu.k(), "Loading link status and icon for Discover snap " + b.h() + " but already loaded", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     afu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */