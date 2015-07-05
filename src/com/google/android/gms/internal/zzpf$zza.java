package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzk.zzc;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zza;

final class zzpf$zza
  extends zzk<zzpc>.zzc<zzf.zza>
{
  private final int zzLs;
  private final String[] zzamZ;
  
  public zzpf$zza(zzpf paramzzpf, zzf.zza paramzza, int paramInt, String[] paramArrayOfString)
  {
    super(paramzzpf, paramzza);
    zzLs = LocationStatusCodes.zzfq(paramInt);
    zzamZ = paramArrayOfString;
  }
  
  protected final void zza(zzf.zza paramzza)
  {
    if (paramzza != null) {
      paramzza.zza(zzLs, zzamZ);
    }
  }
  
  protected final void zzjf() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpf.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */