import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class oe
{
  private static final oe INSTANCE = new oe();
  private EasyMetric.EasyMetricFactory mMetricFactory;
  public AtomicInteger mSnapEngagement;
  public AtomicInteger mSnapSends;
  public AtomicInteger mSnapViews;
  
  private oe()
  {
    this(new EasyMetric.EasyMetricFactory());
  }
  
  private oe(EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mMetricFactory = paramEasyMetricFactory;
    mSnapViews = new AtomicInteger();
    mSnapSends = new AtomicInteger();
    mSnapEngagement = new AtomicInteger();
  }
  
  public static oe a()
  {
    return INSTANCE;
  }
  
  public final void b()
  {
    try
    {
      EasyMetric.EasyMetricFactory.a("SNAP_VIEWS_IN_SESSION").a("count", Integer.valueOf(mSnapViews.get())).b(false);
      EasyMetric.EasyMetricFactory.a("SNAP_SENDS_IN_SESSION").a("count", Integer.valueOf(mSnapSends.get())).b(false);
      EasyMetric.EasyMetricFactory.a("SNAP_ENGAGEMENT_IN_SESSION").a("count", Integer.valueOf(mSnapEngagement.get())).b(false);
      mSnapViews.set(0);
      mSnapSends.set(0);
      mSnapEngagement.set(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     oe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */