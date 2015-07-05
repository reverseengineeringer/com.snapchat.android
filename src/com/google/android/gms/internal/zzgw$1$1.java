package com.google.android.gms.internal;

class zzgw$1$1
  implements zzia.zzd<zzah>
{
  zzgw$1$1(zzgw.1 param1, zzce paramzzce) {}
  
  public void zzb(zzah paramzzah)
  {
    zzxp.zzxl.zza(zzxo, new String[] { "jsf" });
    paramzzah.zza("/invalidRequest", zzxp.zzxk.zzxz);
    paramzzah.zza("/loadAdURL", zzxp.zzxk.zzxA);
    try
    {
      paramzzah.zzb("AFMA_buildAdURL", zzxp.zzxn);
      return;
    }
    catch (Exception paramzzah)
    {
      zzhx.zzb("Error requesting an ad url", paramzzah);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgw.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */