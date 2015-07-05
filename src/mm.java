import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.Timer;
import java.util.TimerTask;

public abstract class mm<T>
  implements mn
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
  public final mj mAdManager;
  protected final mm.a mCallback;
  boolean mIsComplete;
  public EasyMetric mMetric;
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  final Object mMutex = new Object();
  public final ale mNetworkStatusManager;
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
  
  public mm(T paramT, mj parammj, EasyMetric.EasyMetricFactory paramEasyMetricFactory, ale paramale, Timer paramTimer, mm.a<T> parama)
  {
    mNetworkStatusManager = paramale;
    mMetricFactory = paramEasyMetricFactory;
    mAdContainer = paramT;
    mAdManager = parammj;
    mTimeoutTimer = paramTimer;
    mCallback = parama;
  }
  
  public abstract String a();
  
  public final void a(@cgb mo parammo)
  {
    synchronized (mMutex)
    {
      if (mIsComplete)
      {
        Timber.e("AdRequest", "Skipping transform handling from resolving ad for %s", new Object[] { mAdContainer });
        return;
      }
      b(parammo);
      return;
    }
  }
  
  protected final void b(mo parammo)
  {
    EasyMetric localEasyMetric = mMetric;
    String str;
    if (parammo == null) {
      str = "timeout";
    }
    for (;;)
    {
      localEasyMetric.a("result", str);
      mMetric.a(false);
      mCallback.a(mAdContainer, parammo);
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
    public abstract void a(@cgb S paramS, @cgc mo parammo);
  }
}

/* Location:
 * Qualified Name:     mm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */