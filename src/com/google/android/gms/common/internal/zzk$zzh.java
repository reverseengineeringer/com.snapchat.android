package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient.zza;

public final class zzk$zzh
  extends zzk<T>.zza
{
  public zzk$zzh(zzk paramzzk, int paramInt, Bundle paramBundle)
  {
    super(paramzzk, paramInt, paramBundle);
  }
  
  protected final boolean zzje()
  {
    if ((zzk.zzc(zzPT)) && (zzk.zzd(zzPT) != null)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "PostValidationCallback should not happen when mReportProgress is false ormConnectionProgressReportCallbacks is null");
      zzk.zzd(zzPT).zzib();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */