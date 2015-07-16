package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

class zzu
  extends BroadcastReceiver
{
  static final String zzBO = zzu.class.getName();
  private final zzaj zzBP;
  
  zzu(zzaj paramzzaj)
  {
    zzBP = paramzzaj;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool1 = false;
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    paramContext = paramIntent.getAction();
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      bool2 = paramIntent.getBooleanExtra("noConnectivity", false);
      paramContext = zzBP;
      if (!bool2) {
        bool1 = true;
      }
      paramContext.zzE(bool1);
    }
    while ((!"com.google.analytics.RADIO_POWERED".equals(paramContext)) || (paramIntent.hasExtra(zzBO)))
    {
      boolean bool2;
      return;
    }
    zzBP.zzfJ();
  }
  
  public void zzD(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramContext.registerReceiver(this, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.google.analytics.RADIO_POWERED");
    localIntentFilter.addCategory(paramContext.getPackageName());
    paramContext.registerReceiver(this, localIntentFilter);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */