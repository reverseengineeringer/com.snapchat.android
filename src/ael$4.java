import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;

final class ael$4
  implements acx.a
{
  ael$4(ael paramael) {}
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, int paramInt, bku parambku, bkw parambkw)
  {
    EasyMetric localEasyMetric = a.m.a("DISCOVER_SHARE_LINK_VALIDATION", paramString1);
    if (localEasyMetric != null) {
      localEasyMetric.a("link_status", paramLinkStatus.name()).b(false);
    }
    paramString2 = new DiscoverLinkStatusResult(paramString2, paramString3, paramString4, paramLinkStatus, paramLong, paramInt, parambku, parambkw);
    a.a(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     ael.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */