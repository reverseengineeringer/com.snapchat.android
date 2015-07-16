package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

class zzbk
  extends BroadcastReceiver
{
  static final String zzBO = zzbk.class.getName();
  private final zzcs zzazm;
  
  zzbk(zzcs paramzzcs)
  {
    zzazm = paramzzcs;
  }
  
  public static void zzan(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.analytics.RADIO_POWERED");
    localIntent.addCategory(paramContext.getPackageName());
    localIntent.putExtra(zzBO, true);
    paramContext.sendBroadcast(localIntent);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    paramContext = paramIntent.getAction();
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      localBundle = paramIntent.getExtras();
      paramContext = Boolean.FALSE;
      if (localBundle != null) {
        paramContext = Boolean.valueOf(paramIntent.getExtras().getBoolean("noConnectivity"));
      }
      paramIntent = zzazm;
      if (!paramContext.booleanValue())
      {
        bool = true;
        paramIntent.zzE(bool);
      }
    }
    while ((!"com.google.analytics.RADIO_POWERED".equals(paramContext)) || (paramIntent.hasExtra(zzBO))) {
      for (;;)
      {
        Bundle localBundle;
        return;
        boolean bool = false;
      }
    }
    zzazm.zzfJ();
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
 * Qualified Name:     com.google.android.gms.tagmanager.zzbk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */