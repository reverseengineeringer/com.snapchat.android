package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

abstract class zzk$zza
  extends zzk<T>.zzc<Boolean>
{
  public final int statusCode;
  public final Bundle zzPS;
  
  protected zzk$zza(zzk paramzzk, int paramInt, Bundle paramBundle)
  {
    super(paramzzk, Boolean.valueOf(true));
    statusCode = paramInt;
    zzPS = paramBundle;
  }
  
  protected void zzc(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      zzk.zza(zzPT, 1, null);
      return;
    }
    switch (statusCode)
    {
    default: 
      if (zzPS == null) {
        break;
      }
    }
    for (paramBoolean = (PendingIntent)zzPS.getParcelable("pendingIntent");; paramBoolean = null)
    {
      if (zzk.zzf(zzPT) != null)
      {
        zzk.zzg(zzPT).zzb(zzPT.zzcF(), zzk.zzf(zzPT), zzPT.zziZ());
        zzk.zza(zzPT, null);
      }
      zzk.zza(zzPT, 1, null);
      zzf(new ConnectionResult(statusCode, paramBoolean));
      return;
      if (zzje()) {
        break;
      }
      if (zzk.zzf(zzPT) != null)
      {
        zzk.zzg(zzPT).zzb(zzPT.zzcF(), zzk.zzf(zzPT), zzPT.zziZ());
        zzk.zza(zzPT, null);
      }
      zzk.zza(zzPT, 1, null);
      zzf(new ConnectionResult(8, null));
      return;
      zzk.zza(zzPT, 1, null);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
  }
  
  protected void zzf(ConnectionResult paramConnectionResult)
  {
    zzk.zza(zzPT).zzg(paramConnectionResult);
  }
  
  protected abstract boolean zzje();
  
  protected void zzjf() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */