import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;

final class ahi$1$1
  implements AlertDialogUtils.a
{
  ahi$1$1(ahi.1 param1) {}
  
  public final void a(AlertDialogUtils.YesNoOption paramYesNoOption)
  {
    if (paramYesNoOption == AlertDialogUtils.YesNoOption.YES)
    {
      paramYesNoOption = a.c;
      ahi.a locala = a.a;
      Friend localFriend = a.b;
      l.setVisibility(8);
      m.setVisibility(0);
      paramYesNoOption = new ahi.2(paramYesNoOption, localFriend, FriendAction.UNBLOCK, locala, localFriend);
      mAnalyticsContext = AnalyticsEvents.AnalyticsContext.SETTINGS;
      paramYesNoOption.execute();
    }
  }
}

/* Location:
 * Qualified Name:     ahi.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */