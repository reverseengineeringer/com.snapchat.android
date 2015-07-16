import android.content.Context;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.AlertDialogUtils;

public final class avn$d
  implements Runnable
{
  private Context iActivityContext;
  private ajk iProvider;
  private aka iSnapToReplay;
  
  public avn$d(avn paramavn, aka paramaka, ajk paramajk, Context paramContext)
  {
    iSnapToReplay = paramaka;
    iActivityContext = paramContext;
    iProvider = paramajk;
  }
  
  public final void run()
  {
    if (akp.g().t())
    {
      AlertDialogUtils.a(iActivityContext, iSnapToReplay, iProvider);
      AnalyticsEvents.b(iSnapToReplay);
    }
  }
}

/* Location:
 * Qualified Name:     avn.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */