import com.snapchat.android.analytics.ProfileEventAnalytics.ProfilePageMetrics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;

final class aff$8
  implements ait.a
{
  aff$8(aff paramaff, Friend paramFriend) {}
  
  public final void a(@cgc ait paramait)
  {
    if (paramait != null)
    {
      ScAnalyticsEventEngine.a(new jl());
      new EasyMetric(ProfileEventAnalytics.ProfilePageMetrics.PROFILE_FRIEND_SCORE_DISPLAY.name()).d();
      b.d(a);
    }
  }
}

/* Location:
 * Qualified Name:     aff.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */