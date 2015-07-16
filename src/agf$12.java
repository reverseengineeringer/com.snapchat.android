import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.squareup.otto.Bus;

final class agf$12
  implements View.OnClickListener
{
  agf$12(agf paramagf, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    b.M.a(new bdr(1));
    b.M.a(new bdz(a.l(), 11, false));
    ScAnalyticsEventEngine.a(new kc());
    ProfileEventAnalytics.a(kf.SNAP_BUTTON, b.H.getCount(), b.H.a(false), b.H.a(FriendAction.ADD, false), b.H.a(FriendAction.DELETE, false), b.H.a(FriendAction.BLOCK, false), b.H.a(FriendAction.SET_DISPLAY_NAME, false), b.H.a(true), b.H.a(FriendAction.ADD, true), b.H.a(FriendAction.DELETE, true), b.H.a(FriendAction.BLOCK, true), b.H.a(FriendAction.SET_DISPLAY_NAME, true));
  }
}

/* Location:
 * Qualified Name:     agf.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */