import android.content.Intent;
import android.os.SystemClock;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Singleton;

@Singleton
public final class nw
{
  public static final String APP_STARTUP_TIMED_METRIC = "APP_STARTUP_TIMED";
  public static final String FIRST_MEDIA_OPENED_METRIC = "FIRST_MEDIA_OPENED";
  private static final nw INSTANCE = new nw();
  public static final String OLD_APP_STARTUP_TIMED_METRIC = "APP_STARTUP_TIMED_9_3";
  private static final String TAG = "LifecycleAnalytics";
  public static final String USER_LOAD_TIME_METRIC = "USER_LOAD_TIME";
  private final DictionaryEasyMetric mDictionaryEasyMetric;
  public boolean mDidLoadFromDatabase;
  private final ScAnalyticsEventEngine mEventEngine;
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  public EasyMetric mOldStartupMetric;
  private final avv mStartupContext;
  public EasyMetric mStartupMetric;
  public EasyMetric mUserLoadMetric;
  
  private nw()
  {
    this(DictionaryEasyMetric.a(), avv.a(), ScAnalyticsEventEngine.a(), new EasyMetric.EasyMetricFactory());
  }
  
  private nw(DictionaryEasyMetric paramDictionaryEasyMetric, avv paramavv, ScAnalyticsEventEngine paramScAnalyticsEventEngine, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mDictionaryEasyMetric = paramDictionaryEasyMetric;
    mStartupContext = paramavv;
    mEventEngine = paramScAnalyticsEventEngine;
    mMetricFactory = paramEasyMetricFactory;
  }
  
  public static nw a()
  {
    return INSTANCE;
  }
  
  public static void a(@chc Intent paramIntent)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("open_state", "NORMAL");
    localHashMap.put("intent_action", paramIntent.getAction());
    new EasyMetric("APP_OPEN").a(localHashMap).e();
    ScAnalyticsEventEngine.a(new ga());
  }
  
  public static void d()
  {
    if (ReleaseManager.f()) {
      baz.a(baz.b());
    }
  }
  
  public static void e()
  {
    if (ReleaseManager.f())
    {
      String str = baz.b();
      long l = baz.b(str);
      Object localObject = INSTANCE;
      if (mStartupMetric != null)
      {
        localObject = mStartupMetric;
        if (((EasyMetric)localObject).c())
        {
          ((EasyMetric)localObject).a(str, Long.valueOf(l));
          new StringBuilder().append(SystemClock.elapsedRealtime() - b).append(", ").append(str).append(" ELAPSED_TIME ").append(l);
        }
      }
    }
  }
  
  public final void b()
  {
    mStartupMetric = null;
    mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED");
  }
  
  public final void c()
  {
    mStartupMetric = EasyMetric.EasyMetricFactory.b("APP_STARTUP_TIMED").b();
    mOldStartupMetric = EasyMetric.EasyMetricFactory.b("APP_STARTUP_TIMED_9_3").b();
    mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED", true);
  }
}

/* Location:
 * Qualified Name:     nw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */