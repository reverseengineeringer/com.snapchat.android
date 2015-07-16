import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.fragments.stories.StoriesAdapter.b;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import java.util.Set;

final class ahz$2
  implements View.OnClickListener
{
  ahz$2(ahz paramahz, Friend paramFriend, Set paramSet, StoriesAdapter.b paramb) {}
  
  public final void onClick(View paramView)
  {
    d.I.setChecked(true);
    paramView = a.mPhoneNumber;
    String str = d.M.getString(2131493207, new Object[] { akr.l() });
    awc.a(d.M, paramView, str);
    if (!b.contains(paramView))
    {
      b.add(paramView);
      AnalyticsEvents.a(FriendAction.INVITE, c.i().name(), a, AnalyticsEvents.AddFriendSourceType.CONTACTS, c.j());
      if (RegistrationAnalytics.b()) {
        AnalyticsEvents.i(a.mPhoneNumber);
      }
    }
  }
}

/* Location:
 * Qualified Name:     ahz.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */