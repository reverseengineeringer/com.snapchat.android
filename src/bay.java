import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bay
  implements bba
{
  public static final String HORIZONTAL = "HORIZONTAL";
  protected static final String IS_VERTICAL_SCROLL = "is_vertical_scroll";
  protected static final int MAX_LATENCY_LIST_SIZE = 50;
  protected static final String METRIC_END_PAGE = "end_page";
  protected static final String METRIC_MAX = "max";
  protected static final String METRIC_MEAN = "mean";
  protected static final String METRIC_MEDIAN = "median";
  protected static final String METRIC_NAME_SWIPE_LATENCY = "SWIPE_LATENCY";
  protected static final String METRIC_SIZE = "size";
  protected static final String METRIC_START_PAGE = "start_page";
  private static final String TAG = "SwipeUiLatencyAggregator";
  public static final String VERTICAL = "VERTICAL";
  private final List<Long> mLatencyList = new ArrayList(50);
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  private String mStartPage;
  
  public bay()
  {
    this(new EasyMetric.EasyMetricFactory());
  }
  
  private bay(EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mMetricFactory = paramEasyMetricFactory;
  }
  
  public final EasyMetric a(EasyMetric paramEasyMetric)
  {
    return paramEasyMetric;
  }
  
  public final void a(long paramLong)
  {
    if ((paramLong != 0L) && (mLatencyList.size() < 50)) {
      mLatencyList.add(Long.valueOf(paramLong));
    }
  }
  
  public final void a(String... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool, "startPage");
      mLatencyList.clear();
      mStartPage = paramVarArgs[0];
      return;
    }
  }
  
  public final void b(final String... paramVarArgs)
  {
    if (paramVarArgs.length > 1) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool, "endPage, direction");
      final String str = paramVarArgs[0];
      paramVarArgs = paramVarArgs[1];
      final ArrayList localArrayList = new ArrayList(mLatencyList);
      bhp.b(new Runnable()
      {
        public final void run()
        {
          String str1 = val$startPage;
          String str2 = str;
          String str3 = paramVarArgs;
          List localList = localArrayList;
          bhp.b();
          boolean bool = TextUtils.equals(str3, "VERTICAL");
          if ((str1 != null) && (str2 != null) && (((!str1.equals(str2)) && (!bool)) || ((str1.equals(str2)) && (bool)))) {}
          for (int i = 1;; i = 0)
          {
            if ((i != 0) && (localList != null) && (!localList.isEmpty()))
            {
              Collections.sort(localList);
              long l1 = aux.b(localList);
              long l2 = aux.a(localList);
              long l3 = ((Long)localList.get(localList.size() - 1)).longValue();
              EasyMetric.EasyMetricFactory.b("SWIPE_LATENCY").a("start_page", str1).a("end_page", str2).a("mean", Long.valueOf(l1)).a("median", Long.valueOf(l2)).a("max", Long.valueOf(l3)).a("size", Integer.valueOf(localList.size())).a("is_vertical_scroll", Boolean.valueOf(bool)).b(false);
            }
            return;
          }
        }
      });
      mLatencyList.clear();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */