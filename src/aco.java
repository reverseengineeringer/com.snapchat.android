import android.os.Handler;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;

public final class aco
  implements mm.a<DSnapPage>
{
  private final adj a;
  private final add b;
  private final Map<String, ack> c = new ConcurrentHashMap();
  private final Object d = new Object();
  
  public aco()
  {
    this(adj.a(), add.a());
  }
  
  private aco(adj paramadj, add paramadd)
  {
    b = paramadd;
    a = paramadj;
  }
  
  private void a(DSnapPage paramDSnapPage, MediaState paramMediaState)
  {
    adj localadj = a;
    g.postAtFrontOfQueue(new adj.8(localadj, paramDSnapPage, paramMediaState));
  }
  
  @avl
  public final boolean a(DSnapPage paramDSnapPage)
  {
    synchronized (d)
    {
      if (c.containsKey(a))
      {
        Timber.e("DSnapAdResolver", "DISCOVER-MEDIA: Skipping resolve for ad %s since there is a pending request for it.", new Object[] { paramDSnapPage });
        return false;
      }
      Timber.c("DSnapAdResolver", "DISCOVER-MEDIA: Requesting resolve for ad %s", new Object[] { paramDSnapPage });
      ack localack = new ack(paramDSnapPage, this);
      c.put(a, localack);
      b.b(paramDSnapPage, MediaState.RESOLVING_AD);
      paramDSnapPage = new mp.a();
      mAdType = mAdContainer).k.intValue();
      mChannelName = mAdContainer).h;
      mEditionName = mAdContainer).g;
      mPosition = mAdContainer).e;
      mAdUnitId = mAdContainer).n;
      mTargetingParams = ((DSnapPage)mAdContainer).h();
      paramDSnapPage = paramDSnapPage.a();
      mMetric = EasyMetric.EasyMetricFactory.a("AD_RESOLVE_TIME");
      mMetric.a("type", localack.a());
      mMetric.a("reachability", mNetworkStatusManager.f());
      mMetric.b();
      mAdManager.a(paramDSnapPage, localack);
      mTimeoutTimer.schedule(mTimeoutRunnable, 10000L);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     aco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */