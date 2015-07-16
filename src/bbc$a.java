import android.content.Context;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;

final class bbc$a
  implements bmc
{
  final Context mContext;
  
  private bbc$a(@chc Context paramContext)
  {
    mContext = paramContext;
  }
  
  public final void a(String paramString, bmb parambmb)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        AlertDialogUtils.a("ANR detected from Snapchat! See more details in notification", mContext, 1);
      }
    });
    AndroidNotificationManager.a();
    AndroidNotificationManager.c(mContext, paramString);
  }
}

/* Location:
 * Qualified Name:     bbc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */