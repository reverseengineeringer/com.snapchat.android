package com.google.android.gms.internal;

import java.util.Map;
import java.util.Set;

class zzid$zzb
  implements zzcv
{
  private zzid$zzb(zzid paramzzid) {}
  
  public void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    if (paramMap.keySet().contains("start")) {
      zzid.zza(zzzZ);
    }
    do
    {
      return;
      if (paramMap.keySet().contains("stop"))
      {
        zzid.zzb(zzzZ);
        return;
      }
    } while (!paramMap.keySet().contains("cancel"));
    zzid.zzc(zzzZ);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzid.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */