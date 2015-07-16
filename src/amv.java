import android.content.Context;
import android.content.Intent;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.notification.AndroidNotificationManager.Destination;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.notification.AndroidNotificationManager.a;
import com.snapchat.android.notification.AndroidNotificationManager.b;

public final class amv
{
  public static Intent a(Context paramContext, AndroidNotificationManager.Type paramType, @chd AndroidNotificationManager.a parama, @chd AndroidNotificationManager.b paramb, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, LandingPageActivity.class);
    paramContext.putExtra("fromNotification", true);
    switch (amv.1.a[paramType.ordinal()])
    {
    default: 
      if (parama != null)
      {
        paramContext.putExtra("goToFragmentNum", 0);
        paramContext.putExtra("friendUsername", a);
        paramContext.putExtra("seq_num", c);
        if (paramBoolean) {
          paramContext.putExtra("makeSyncRequest", true);
        }
        switch (amv.1.a[paramType.ordinal()])
        {
        }
      }
      break;
    }
    for (;;)
    {
      if ((AndroidNotificationManager.Type.CHAT.equals(paramType)) || (AndroidNotificationManager.Type.CASH.equals(paramType)) || (AndroidNotificationManager.Type.CASH_MESSAGE.equals(paramType))) {
        paramContext.putExtra("chatOrCashFromServerNotification", true);
      }
      if (paramType != null) {
        paramContext.setAction(paramType.getTypeNotificationAction());
      }
      paramContext.setFlags(603979776);
      return paramContext;
      paramContext.putExtra("goToFragmentNum", 1);
      break;
      paramContext.putExtra("goToFragmentNum", 2);
      paramContext.putExtra("destinationPage", AndroidNotificationManager.Destination.ADD_FRIENDS);
      break;
      paramContext.putExtra("goToFragmentNum", 3);
      break;
      if (paramb != null)
      {
        paramContext.putExtra("friendUsername", a);
        paramContext.putExtra("snap_id", b);
      }
      paramContext.putExtra("goToFragmentNum", 1);
      break;
      paramContext.putExtra("fromServerNotification", true);
      paramContext.putExtra("type", paramType.name());
    }
  }
}

/* Location:
 * Qualified Name:     amv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */