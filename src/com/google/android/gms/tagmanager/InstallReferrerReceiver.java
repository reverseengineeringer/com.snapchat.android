package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public final class InstallReferrerReceiver
  extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    String str = paramIntent.getStringExtra("referrer");
    if ((!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())) || (str == null)) {
      return;
    }
    zzaw.zzdc(str);
    paramIntent = new Intent(paramContext, InstallReferrerService.class);
    paramIntent.putExtra("referrer", str);
    paramContext.startService(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.InstallReferrerReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */