package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.GoogleApiClient.zza;

public final class zzk$zzg
  extends zzk<T>.zza
{
  public zzk$zzg(zzk paramzzk)
  {
    super(paramzzk, 0, null);
  }
  
  protected final boolean zzje()
  {
    if (zzk.zzc(zzPT))
    {
      if (zzk.zzd(zzPT) != null) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zza(bool, "mConnectionProgressReportCallbacks should not be null if mReportProgress");
        zzk.zzd(zzPT).zzia();
        return true;
      }
    }
    zzPT.zzb(null);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */