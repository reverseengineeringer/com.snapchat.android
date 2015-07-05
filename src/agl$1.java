import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;

final class agl$1
  implements View.OnClickListener
{
  agl$1(agl paramagl, agl.a parama, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    AlertDialogUtils.a(c.c, null, c.e, new AlertDialogUtils.a()
    {
      public final void a(AlertDialogUtils.YesNoOption paramAnonymousYesNoOption)
      {
        if (paramAnonymousYesNoOption == AlertDialogUtils.YesNoOption.YES)
        {
          paramAnonymousYesNoOption = c;
          agl.a locala = a;
          Friend localFriend = b;
          l.setVisibility(8);
          m.setVisibility(0);
          paramAnonymousYesNoOption = new agl.2(paramAnonymousYesNoOption, localFriend, FriendAction.UNBLOCK, locala, localFriend);
          mAnalyticsContext = AnalyticsEvents.AnalyticsContext.SETTINGS;
          paramAnonymousYesNoOption.f();
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     agl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */