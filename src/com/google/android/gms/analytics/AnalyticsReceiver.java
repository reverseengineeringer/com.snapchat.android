package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public final class AnalyticsReceiver
  extends BroadcastReceiver
{
  static PowerManager.WakeLock zzAY;
  static Object zzmz = new Object();
  
  public final void onReceive(Context paramContext, Intent arg2)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    Intent localIntent = new Intent(paramContext, AnalyticsService.class);
    synchronized (zzmz)
    {
      paramContext.startService(localIntent);
      try
      {
        paramContext = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "Analytics WakeLock");
        zzAY = paramContext;
        paramContext.acquire(1000L);
        return;
      }
      catch (SecurityException paramContext)
      {
        for (;;)
        {
          zzae.zzac("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.AnalyticsReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */