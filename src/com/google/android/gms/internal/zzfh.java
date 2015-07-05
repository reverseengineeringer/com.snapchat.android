package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

@zzgi
public final class zzfh
  extends zzfr.zza
  implements ServiceConnection
{
  private Context mContext;
  zzfc zzuY;
  private String zzvf;
  private zzfg zzvj;
  private boolean zzvp = false;
  private int zzvq;
  private Intent zzvr;
  
  public zzfh(Context paramContext, String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, zzfg paramzzfg)
  {
    zzvf = paramString;
    zzvq = paramInt;
    zzvr = paramIntent;
    zzvp = paramBoolean;
    mContext = paramContext;
    zzvj = paramzzfg;
  }
  
  public final void finishPurchase()
  {
    int i = zzab.zzaU().zzd(zzvr);
    if ((zzvq != -1) || (i != 0)) {
      return;
    }
    zzuY = new zzfc(mContext);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    zzlo.zzka().zza(mContext, localIntent, this, 1);
  }
  
  public final String getProductId()
  {
    return zzvf;
  }
  
  public final Intent getPurchaseData()
  {
    return zzvr;
  }
  
  public final int getResultCode()
  {
    return zzvq;
  }
  
  public final boolean isVerified()
  {
    return zzvp;
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    zzhx.zzaa("In-app billing service connected.");
    zzuY.zzx(paramIBinder);
    paramComponentName = zzab.zzaU().zze(zzvr);
    paramComponentName = zzab.zzaU().zzM(paramComponentName);
    if (paramComponentName == null) {
      return;
    }
    if (zzuY.zzg(mContext.getPackageName(), paramComponentName) == 0) {
      zzfi.zzm(mContext).zza(zzvj);
    }
    zzlo.zzka().zza(mContext, this);
    zzuY.destroy();
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    zzhx.zzaa("In-app billing service disconnected.");
    zzuY.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */