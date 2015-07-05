package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;

public final class zzk$zzd
  extends zzr.zza
{
  private zzk zzPV;
  
  public zzk$zzd(zzk paramzzk)
  {
    zzPV = paramzzk;
  }
  
  private void zzji()
  {
    zzPV = null;
  }
  
  public final void zzb(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    zzx.zzb(zzPV, "onPostInitComplete can be called only once per call to getRemoteService");
    zzPV.zza(paramInt, paramIBinder, paramBundle);
    zzji();
  }
  
  public final void zzc(int paramInt, Bundle paramBundle)
  {
    zzx.zzb(zzPV, "onAccountValidationComplete can be called only once per call to validateAccount");
    zzPV.zzb(paramInt, paramBundle);
    zzji();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */