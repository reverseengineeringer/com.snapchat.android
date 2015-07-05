package com.google.android.gms.internal;

import java.util.Map;

class zzdf$3
  implements zzcv
{
  zzdf$3(zzdf paramzzdf, zzhv paramzzhv) {}
  
  public void zza(zzic arg1, Map<String, String> paramMap)
  {
    synchronized (zzdf.zza(zzrZ))
    {
      zzdf.zza(zzrZ, 1);
      zzhx.zzaa("Javascript is requesting an update");
      zzdf.zzb(zzrZ).zzb("/requestReload", (zzcv)zzsb.get());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdf.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */