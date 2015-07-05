import com.snapchat.android.analytics.framework.EasyMetric;
import java.util.HashMap;

public final class nm
{
  public final HashMap<String, EasyMetric> mSendingChatTimers = new HashMap();
  
  public final void a(@cgb bhf parambhf)
  {
    EasyMetric localEasyMetric2 = (EasyMetric)mSendingChatTimers.remove(parambhf.c());
    EasyMetric localEasyMetric1 = localEasyMetric2;
    if (localEasyMetric2 == null) {
      localEasyMetric1 = new EasyMetric();
    }
    localEasyMetric1.a("CHAT_SENT").a("success", Boolean.valueOf(true)).d();
    localEasyMetric1.a("CHAT_SENT_SUCCESS").d();
    if (parambhf.b()) {
      localEasyMetric1.a("CHAT_" + parambhf.a().c() + "_SENT_SUCCESS").d();
    }
    new EasyMetric("CHAT_SEND_SUCCESS_AFTER_DURATION").a("time", Long.valueOf(System.currentTimeMillis() - parambhf.f().longValue())).a(false);
  }
  
  public final void b(@cgb bhf parambhf)
  {
    EasyMetric localEasyMetric2 = (EasyMetric)mSendingChatTimers.remove(parambhf.c());
    EasyMetric localEasyMetric1 = localEasyMetric2;
    if (localEasyMetric2 == null) {
      localEasyMetric1 = new EasyMetric();
    }
    localEasyMetric1.a("CHAT_SENT").a("success", Boolean.valueOf(false)).d();
    localEasyMetric1.a("CHAT_SENT_FAILED").d();
    if (parambhf.b()) {
      localEasyMetric1.a("CHAT_" + parambhf.a().c() + "_SENT_FAILED").d();
    }
    new EasyMetric("CHAT_SEND_FAILED_AFTER_DURATION").a("time", Long.valueOf(System.currentTimeMillis() - parambhf.f().longValue())).a(false);
  }
}

/* Location:
 * Qualified Name:     nm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */