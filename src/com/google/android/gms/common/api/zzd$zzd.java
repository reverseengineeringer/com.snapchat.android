package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

class zzd$zzd
  extends BroadcastReceiver
{
  private WeakReference<zzd> zzNj;
  
  zzd$zzd(zzd paramzzd)
  {
    zzNj = new WeakReference(paramzzd);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    paramIntent = paramIntent.getData();
    paramContext = null;
    if (paramIntent != null) {
      paramContext = paramIntent.getSchemeSpecificPart();
    }
    if ((paramContext == null) || (!paramContext.equals("com.google.android.gms"))) {}
    do
    {
      return;
      paramContext = (zzd)zzNj.get();
    } while (paramContext == null);
    zzd.zzk(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */