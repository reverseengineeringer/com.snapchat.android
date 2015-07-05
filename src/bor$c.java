import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Handler;

final class bor$c
  extends BroadcastReceiver
{
  final bor a;
  
  bor$c(bor parambor)
  {
    a = parambor;
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {}
    String str;
    do
    {
      do
      {
        return;
        str = paramIntent.getAction();
        if (!"android.intent.action.AIRPLANE_MODE".equals(str)) {
          break;
        }
      } while (!paramIntent.hasExtra("state"));
      paramContext = a;
      boolean bool = paramIntent.getBooleanExtra("state", false);
      paramIntent = i;
      paramContext = i;
      if (bool) {}
      for (int i = 1;; i = 0)
      {
        paramIntent.sendMessage(paramContext.obtainMessage(10, i, 0));
        return;
      }
    } while (!"android.net.conn.CONNECTIVITY_CHANGE".equals(str));
    paramIntent = (ConnectivityManager)bpo.a(paramContext, "connectivity");
    paramContext = a;
    paramIntent = paramIntent.getActiveNetworkInfo();
    i.sendMessage(i.obtainMessage(9, paramIntent));
  }
}

/* Location:
 * Qualified Name:     bor.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */