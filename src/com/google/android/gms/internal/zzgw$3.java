package com.google.android.gms.internal;

final class zzgw$3
  implements Runnable
{
  zzgw$3(zzgy paramzzgy, zzdf paramzzdf) {}
  
  public final void run()
  {
    zzxk.zzdT();
    if (zzxk.zzdR() != null)
    {
      zzxk.zzdR().zza(new zzia.zzd()new zzia.zzb
      {
        public void zzb(zzah paramAnonymouszzah)
        {
          paramAnonymouszzah.zzb("/invalidRequest", zzxk.zzxz);
          paramAnonymouszzah.zzb("/loadAdURL", zzxk.zzxA);
        }
      }, new zzia.zzb());
      zzxj.zzb(zzxk.zzdR());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgw.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */