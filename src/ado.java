import android.os.Handler;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;

public final class ado
  implements nd.a<DSnapPage>
{
  private final aej a;
  private final aed b;
  private final Map<String, adk> c = new ConcurrentHashMap();
  private final Object d = new Object();
  
  public ado()
  {
    this(aej.a(), aed.a());
  }
  
  private ado(aej paramaej, aed paramaed)
  {
    b = paramaed;
    a = paramaej;
  }
  
  private void a(DSnapPage paramDSnapPage, MediaState paramMediaState)
  {
    aej localaej = a;
    h.postAtFrontOfQueue(new aej.9(localaej, paramDSnapPage, paramMediaState));
  }
  
  @awj
  public final boolean a(DSnapPage paramDSnapPage)
  {
    synchronized (d)
    {
      if (c.containsKey(a)) {
        return false;
      }
      adk localadk = new adk(paramDSnapPage, this);
      c.put(a, localadk);
      b.b(paramDSnapPage, MediaState.RESOLVING_AD);
      paramDSnapPage = new ng.a();
      mAdType = mAdContainer).k.intValue();
      mChannelName = mAdContainer).h;
      mEditionName = mAdContainer).g;
      mPosition = mAdContainer).e;
      mAdUnitId = mAdContainer).n;
      mTargetingParams = ((DSnapPage)mAdContainer).h();
      paramDSnapPage = paramDSnapPage.a();
      mMetric = EasyMetric.EasyMetricFactory.a("AD_RESOLVE_TIME");
      mMetric.a("type", localadk.a());
      mMetric.a("reachability", mNetworkStatusManager.f());
      mMetric.b();
      mAdManager.a(paramDSnapPage, localadk);
      mTimeoutTimer.schedule(mTimeoutRunnable, 10000L);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     ado
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */