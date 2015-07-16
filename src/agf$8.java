import com.snapchat.android.analytics.ProfileEventAnalytics.ProfilePageMetrics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;

final class agf$8
  implements ajp.a
{
  agf$8(agf paramagf, Friend paramFriend) {}
  
  public final void a(@chd ajp paramajp)
  {
    if (paramajp != null)
    {
      ScAnalyticsEventEngine.a(new jz());
      new EasyMetric(ProfileEventAnalytics.ProfilePageMetrics.PROFILE_FRIEND_SCORE_DISPLAY.name()).e();
      b.d(a);
    }
  }
}

/* Location:
 * Qualified Name:     agf.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */