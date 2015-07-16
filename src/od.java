import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class od
{
  private final EasyMetric.EasyMetricFactory mMetricFactory = new EasyMetric.EasyMetricFactory();
  public final Map<String, EasyMetric> mSendingChatTimers = Collections.synchronizedMap(new HashMap());
  
  public final void a(@chc bif parambif)
  {
    EasyMetric localEasyMetric2 = (EasyMetric)mSendingChatTimers.remove(parambif.c());
    long l = System.currentTimeMillis() - parambif.f().longValue();
    EasyMetric localEasyMetric1 = localEasyMetric2;
    if (localEasyMetric2 == null) {
      localEasyMetric1 = EasyMetric.EasyMetricFactory.b("CHAT_SENT").a(l);
    }
    localEasyMetric1.a("success", Boolean.valueOf(true)).e();
    EasyMetric.EasyMetricFactory.a("CHAT_SENT_SUCCESS").e();
    if (parambif.b()) {
      EasyMetric.EasyMetricFactory.a("CHAT_" + parambif.a().c() + "_SENT_SUCCESS").e();
    }
    new EasyMetric("CHAT_SEND_SUCCESS_AFTER_DURATION").a(l).a(false);
  }
  
  public final void b(@chc bif parambif)
  {
    EasyMetric localEasyMetric2 = (EasyMetric)mSendingChatTimers.remove(parambif.c());
    long l = System.currentTimeMillis() - parambif.f().longValue();
    EasyMetric localEasyMetric1 = localEasyMetric2;
    if (localEasyMetric2 == null) {
      localEasyMetric1 = EasyMetric.EasyMetricFactory.b("CHAT_SENT").a(l);
    }
    localEasyMetric1.a("success", Boolean.valueOf(false)).e();
    EasyMetric.EasyMetricFactory.a("CHAT_SENT_FAILED").e();
    if (parambif.b()) {
      EasyMetric.EasyMetricFactory.a("CHAT_" + parambif.a().c() + "_SENT_FAILED").e();
    }
    new EasyMetric("CHAT_SEND_FAILED_AFTER_DURATION").a(l).a(false);
  }
}

/* Location:
 * Qualified Name:     od
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */