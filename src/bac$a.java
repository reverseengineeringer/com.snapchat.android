import android.content.Context;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;

final class bac$a
  implements blb
{
  final Context mContext;
  
  private bac$a(@cgb Context paramContext)
  {
    mContext = paramContext;
  }
  
  public final void a(String paramString, bla parambla)
  {
    bgp.a(new Runnable()
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
 * Qualified Name:     bac.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */