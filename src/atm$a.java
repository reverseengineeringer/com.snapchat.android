import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

public final class atm$a
  implements View.OnClickListener
{
  int a;
  private final AnalyticsEvents.AnalyticsContext c;
  private final AnalyticsEvents.AddFriendSourceType d;
  private final String e;
  private final Friend f;
  
  public atm$a(atm paramatm, AnalyticsEvents.AnalyticsContext paramAnalyticsContext, AnalyticsEvents.AddFriendSourceType paramAddFriendSourceType, String paramString, Friend paramFriend)
  {
    c = paramAnalyticsContext;
    d = paramAddFriendSourceType;
    e = paramString;
    f = paramFriend;
    a = -1;
  }
  
  public final void onClick(View paramView)
  {
    if (b.R != null)
    {
      paramView = b.R.d();
      if ((paramView != null) && (!b.R.k))
      {
        b.a(b.R.b(), paramView.length(), b.R.c());
        b.R.k = true;
      }
    }
    boolean bool = b.S.isChecked();
    Object localObject;
    if (bool)
    {
      localObject = FriendAction.ADD;
      paramView = (View)localObject;
      if (RegistrationAnalytics.b())
      {
        AnalyticsEvents.g(f.l());
        paramView = (View)localObject;
      }
      localObject = b;
      if (bool) {
        break label248;
      }
    }
    label248:
    for (bool = true;; bool = false)
    {
      ((atm)localObject).a(true, bool);
      localObject = new qg(f, paramView);
      mAddSourceType = d;
      mAnalyticsContext = c;
      mFriendActionCompleteCallback = b;
      localObject = ((qg)localObject).a();
      mActionMethod = il.CHECKMARK;
      mFriendIndex = a;
      ((qg)localObject).execute();
      AnalyticsEvents.a(paramView, c.name(), f, d, e);
      return;
      localObject = FriendAction.DELETE;
      paramView = (View)localObject;
      if (!RegistrationAnalytics.b()) {
        break;
      }
      AnalyticsEvents.h(f.l());
      paramView = (View)localObject;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     atm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */