package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.zzbf;

class zzvg$zzb
  extends zzvt
{
  private final zzvg.zza zzaBV;
  
  zzvg$zzb(zzvg paramzzvg, zzvj paramzzvj, zzvh paramzzvh, zzvg.zza paramzza)
  {
    super(paramzzvj, paramzzvh);
    zzaBV = paramzza;
  }
  
  protected zzvt.zzb zza(zzve paramzzve)
  {
    return null;
  }
  
  protected void zza(zzvk paramzzvk)
  {
    zzvk.zza localzza = paramzzvk.zzuo();
    zzaBU.zza(localzza);
    if ((localzza.getStatus() == Status.zzNo) && (localzza.zzup() == zzvk.zza.zza.zzaCf) && (localzza.zzuq() != null) && (localzza.zzuq().length > 0))
    {
      zzvg.zza(zzaBU).zzf(localzza.zzur().zzuj(), localzza.zzuq());
      zzbf.zzab("Resource successfully load from Network.");
      zzaBV.zza(paramzzvk);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder("Response status: ");
    if (localzza.getStatus().isSuccess()) {}
    for (paramzzvk = "SUCCESS";; paramzzvk = "FAILURE")
    {
      zzbf.zzab(paramzzvk);
      if (localzza.getStatus().isSuccess())
      {
        zzbf.zzab("Response source: " + localzza.zzup().toString());
        zzbf.zzab("Response size: " + localzza.zzuq().length);
      }
      zzaBU.zza(localzza.zzur(), zzaBV);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvg.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */