import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bab
  extends Handler
{
  protected static final int MAX_LIST_SIZE = 50;
  protected static final String METRIC_END_PAGE = "end_page";
  protected static final String METRIC_MAX = "max";
  protected static final String METRIC_MEAN = "mean";
  protected static final String METRIC_MEDIAN = "median";
  protected static final String METRIC_NAME_SWIPE_LATENCY = "SWIPE_LATENCY";
  protected static final String METRIC_SIZE = "size";
  protected static final String METRIC_START_PAGE = "start_page";
  private static final String TAG = "UIThreadLatencyHandler";
  private static final List<Long> ZERO_LIST = Collections.singletonList(Long.valueOf(0L));
  private final bgk mClock;
  private long mLastLatency;
  protected List<Long> mLatencyList = new ArrayList();
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  
  public bab()
  {
    this(new bgk(), new EasyMetric.EasyMetricFactory());
  }
  
  private bab(bgk parambgk, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mClock = parambgk;
    mMetricFactory = paramEasyMetricFactory;
  }
  
  public final void a()
  {
    if (!mLatencyList.isEmpty()) {
      mLatencyList = new ArrayList();
    }
  }
  
  public final void a(final String paramString1, final String paramString2, final boolean paramBoolean)
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        bab.a(bab.this, paramString1, paramString2, paramBoolean, val$latencyList);
      }
    });
    mLatencyList = new ArrayList();
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (what == 0)
    {
      long l = paramMessage.getData().getLong("CURRENT_TIME");
      mLastLatency = (System.currentTimeMillis() - l);
      l = mLastLatency;
      if (mLatencyList.size() < 50) {
        mLatencyList.add(Long.valueOf(l));
      }
    }
  }
}

/* Location:
 * Qualified Name:     bab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */