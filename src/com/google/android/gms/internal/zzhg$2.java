package com.google.android.gms.internal;

class zzhg$2
  implements Runnable
{
  zzhg$2(zzhg paramzzhg) {}
  
  public void run()
  {
    zzcb localzzcb = new zzcb();
    localzzcb.zzb(zzhg.zza(zzyY), zzbzzyY).zzzH);
    try
    {
      zzhg.zza(zzyY, zzab.zzaR().zza(localzzcb));
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      zzhx.zzac("Cannot initialize CSI reporter." + localIllegalArgumentException.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */