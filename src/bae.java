import com.snapchat.android.analytics.framework.EasyMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;

public final class bae
  implements bba
{
  public static final String AVG_PARAM = "avg";
  private static final int MAX_LATENCY_LIST_SIZE = 10;
  private static final int MAX_LATENCY_SUMMARY_QUEUE_SIZE = 5;
  public static final String MAX_PARAM = "max";
  public static final String UI_DELAYS_PARAM = "ui_delays";
  private final List<Long> mLatencyList = new ArrayList(10);
  private final Queue<Map<String, Long>> mLatencySummaryQueue = dc.a();
  private final Object mMutex = new Object();
  
  private void a()
  {
    synchronized (mMutex)
    {
      mLatencyList.clear();
      mLatencySummaryQueue.clear();
      return;
    }
  }
  
  public final EasyMetric a(EasyMetric paramEasyMetric)
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (mMutex)
    {
      if (!mLatencySummaryQueue.isEmpty())
      {
        Iterator localIterator = mLatencySummaryQueue.iterator();
        if (localIterator.hasNext()) {
          localArrayList.add((Map)localIterator.next());
        }
      }
    }
    if (!localArrayList.isEmpty()) {
      paramEasyMetric.a("ui_delays", localArrayList);
    }
    return paramEasyMetric;
  }
  
  public final void a(long paramLong)
  {
    for (;;)
    {
      synchronized (mMutex)
      {
        mLatencyList.add(Long.valueOf(paramLong));
        if (mLatencyList.size() >= 10)
        {
          Object localObject1 = mLatencyList;
          if (!((List)localObject1).isEmpty())
          {
            Iterator localIterator = ((List)localObject1).iterator();
            long l = -1L;
            paramLong = 0L;
            if (localIterator.hasNext())
            {
              Long localLong = (Long)localIterator.next();
              l = Math.max(l, localLong.longValue());
              paramLong = localLong.longValue() + paramLong;
              continue;
            }
            localObject1 = dm.a("avg", Long.valueOf(paramLong / ((List)localObject1).size()), "max", Long.valueOf(l));
            if (localObject1 != null) {
              mLatencySummaryQueue.add(localObject1);
            }
            mLatencyList.clear();
          }
        }
        else
        {
          return;
        }
      }
      Object localObject3 = null;
    }
  }
  
  public final void a(String... paramVarArgs)
  {
    a();
  }
  
  public final void b(String... paramVarArgs)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     bae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */