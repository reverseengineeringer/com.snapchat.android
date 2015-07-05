import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

public final class asn$a
  implements View.OnClickListener
{
  int a;
  private final AnalyticsEvents.AnalyticsContext c;
  private final AnalyticsEvents.AddFriendSourceType d;
  private final String e;
  private final Friend f;
  
  public asn$a(asn paramasn, AnalyticsEvents.AnalyticsContext paramAnalyticsContext, AnalyticsEvents.AddFriendSourceType paramAddFriendSourceType, String paramString, Friend paramFriend)
  {
    c = paramAnalyticsContext;
    d = paramAddFriendSourceType;
    e = paramString;
    f = paramFriend;
    a = -1;
  }
  
  public final void onClick(View paramView)
  {
    if (b.S != null)
    {
      paramView = b.S.c();
      if ((paramView != null) && (!b.S.j))
      {
        ProfileEventAnalytics.a(b.S.a(), paramView.length(), b.S.b());
        b.S.j = true;
      }
    }
    boolean bool = b.T.isChecked();
    Object localObject;
    if (bool)
    {
      localObject = FriendAction.ADD;
      paramView = (View)localObject;
      if (RegistrationAnalytics.b())
      {
        AnalyticsEvents.h(f.h());
        paramView = (View)localObject;
      }
      localObject = b;
      if (bool) {
        break label244;
      }
    }
    label244:
    for (bool = true;; bool = false)
    {
      ((asn)localObject).a(true, bool);
      localObject = new pp(f, paramView);
      mAddSourceType = d;
      mAnalyticsContext = c;
      mFriendActionCompleteCallback = b;
      localObject = ((pp)localObject).e();
      mActionMethod = ic.CHECKMARK;
      mFriendIndex = a;
      ((pp)localObject).f();
      AnalyticsEvents.a(paramView, c.name(), f, d, e);
      return;
      localObject = FriendAction.DELETE;
      paramView = (View)localObject;
      if (!RegistrationAnalytics.b()) {
        break;
      }
      AnalyticsEvents.i(f.h());
      paramView = (View)localObject;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     asn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */