package com.google.android.gms.internal;

final class zzgw$1
  implements Runnable
{
  zzgw$1(zzdf paramzzdf, zzgy paramzzgy, zzcf paramzzcf, zzce paramzzce, String paramString) {}
  
  public final void run()
  {
    zzia localzzia = zzxj.zzcJ();
    zzxk.zze(localzzia);
    zzxl.zza(zzxm, new String[] { "rwc" });
    localzzia.zza(new zzia.zzd()new zzia.zza
    {
      public void zzb(zzah paramAnonymouszzah)
      {
        zzxl.zza(zzxo, new String[] { "jsf" });
        paramAnonymouszzah.zza("/invalidRequest", zzxk.zzxz);
        paramAnonymouszzah.zza("/loadAdURL", zzxk.zzxA);
        try
        {
          paramAnonymouszzah.zzb("AFMA_buildAdURL", zzxn);
          return;
        }
        catch (Exception paramAnonymouszzah)
        {
          zzhx.zzb("Error requesting an ad url", paramAnonymouszzah);
        }
      }
    }, new zzia.zza()
    {
      public void run() {}
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */