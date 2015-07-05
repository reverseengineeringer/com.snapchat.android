import android.content.Context;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.AlertDialogUtils;

public final class aup$d
  implements Runnable
{
  private Context iActivityContext;
  private aio iProvider;
  private aje iSnapToReplay;
  
  public aup$d(aup paramaup, aje paramaje, aio paramaio, Context paramContext)
  {
    iSnapToReplay = paramaje;
    iActivityContext = paramContext;
    iProvider = paramaio;
  }
  
  public final void run()
  {
    if (ajv.g().t())
    {
      AlertDialogUtils.a(iActivityContext, iSnapToReplay, iProvider);
      AnalyticsEvents.b(iSnapToReplay);
    }
  }
}

/* Location:
 * Qualified Name:     aup.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */