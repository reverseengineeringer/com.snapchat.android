package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

class zzvg$1
  implements zzvm
{
  zzvg$1(zzvg paramzzvg, zzve paramzzve, zzvg.zza paramzza) {}
  
  public void zza(Status paramStatus, Object paramObject, Integer paramInteger, long paramLong)
  {
    if (paramStatus.isSuccess()) {
      if (paramInteger == zzvn.zzaCx) {
        paramStatus = zzvk.zza.zza.zzaCh;
      }
    }
    for (paramStatus = new zzvk.zza(Status.zzNo, zzaBS, null, (zzvl.zzc)paramObject, paramStatus, paramLong);; paramStatus = new zzvk.zza(new Status(16, "There is no valid resource for the container: " + zzaBS.getContainerId()), null, zzvk.zza.zza.zzaCg))
    {
      zzaBT.zza(new zzvk(paramStatus));
      return;
      paramStatus = zzvk.zza.zza.zzaCg;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */