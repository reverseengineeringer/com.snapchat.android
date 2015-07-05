import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;

final class adl$4
  implements abx.a
{
  adl$4(adl paramadl) {}
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, int paramInt, bjt parambjt, bjv parambjv)
  {
    EasyMetric localEasyMetric = a.m.a("DISCOVER_SHARE_LINK_VALIDATION", paramString1);
    if (localEasyMetric != null) {
      localEasyMetric.a("link_status", paramLinkStatus.name()).b(false);
    }
    paramString2 = new DiscoverLinkStatusResult(paramString2, paramString3, paramString4, paramLinkStatus, paramLong, paramInt, parambjt, parambjv);
    a.a(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     adl.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */