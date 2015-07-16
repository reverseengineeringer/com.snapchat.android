import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.Timer;
import java.util.TimerTask;

public abstract class nd<T>
  implements ne
{
  public static final String METRIC_NAME = "AD_RESOLVE_TIME";
  public static final String METRIC_PARAM_NETWORK_TYPE = "reachability";
  public static final String METRIC_PARAM_RESULT = "result";
  public static final String METRIC_PARAM_TYPE = "type";
  public static final String METRIC_VALUE_SUCCESS = "success";
  public static final String METRIC_VALUE_TIMEOUT = "timeout";
  public static final String TAG = "AdRequest";
  public static final int TIMEOUT_MILLISECONDS = 10000;
  public final T mAdContainer;
  public final na mAdManager;
  protected final nd.a mCallback;
  boolean mIsComplete;
  public EasyMetric mMetric;
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  final Object mMutex = new Object();
  public final ama mNetworkStatusManager;
  public final TimerTask mTimeoutRunnable = new TimerTask()
  {
    public final void run()
    {
      synchronized (mMutex)
      {
        if (mIsComplete) {
          return;
        }
        b(null);
        return;
      }
    }
  };
  public final Timer mTimeoutTimer;
  
  public nd(T paramT, na paramna, EasyMetric.EasyMetricFactory paramEasyMetricFactory, ama paramama, Timer paramTimer, nd.a<T> parama)
  {
    mNetworkStatusManager = paramama;
    mMetricFactory = paramEasyMetricFactory;
    mAdContainer = paramT;
    mAdManager = paramna;
    mTimeoutTimer = paramTimer;
    mCallback = parama;
  }
  
  public abstract String a();
  
  public final void a(@chc nf paramnf)
  {
    synchronized (mMutex)
    {
      if (mIsComplete)
      {
        paramnf = mAdContainer;
        return;
      }
      b(paramnf);
      return;
    }
  }
  
  protected final void b(nf paramnf)
  {
    EasyMetric localEasyMetric = mMetric;
    String str;
    if (paramnf == null) {
      str = "timeout";
    }
    for (;;)
    {
      localEasyMetric.a("result", str);
      mMetric.a(false);
      mCallback.a(mAdContainer, paramnf);
      mIsComplete = true;
      mTimeoutRunnable.cancel();
      mTimeoutTimer.cancel();
      return;
      if (mAdRequestError != null) {
        str = mAdRequestError.mErrorCode.getMetricValue();
      } else {
        str = "success";
      }
    }
  }
  
  public static abstract interface a<S>
  {
    public abstract void a(@chc S paramS, @chd nf paramnf);
  }
}

/* Location:
 * Qualified Name:     nd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */