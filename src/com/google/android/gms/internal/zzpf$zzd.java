package com.google.android.gms.internal;

import com.google.android.gms.common.api.zza.zzb;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.LocationSettingsResult;

final class zzpf$zzd
  extends zzpd.zza
{
  private zza.zzb<LocationSettingsResult> zzanf;
  
  public zzpf$zzd(zza.zzb<LocationSettingsResult> paramzzb)
  {
    if (paramzzb != null) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "listener can't be null.");
      zzanf = paramzzb;
      return;
    }
  }
  
  public final void zza(LocationSettingsResult paramLocationSettingsResult)
  {
    zzanf.zzd(paramLocationSettingsResult);
    zzanf = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpf.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */