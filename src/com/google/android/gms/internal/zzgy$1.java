package com.google.android.gms.internal;

import java.util.Map;

class zzgy$1
  implements zzcv
{
  zzgy$1(zzgy paramzzgy) {}
  
  public void zza(zzic arg1, Map<String, String> paramMap)
  {
    synchronized (zzgy.zza(zzxB))
    {
      if (zzgy.zzb(zzxB).isDone()) {
        return;
      }
      if (!zzgy.zzc(zzxB).equals(paramMap.get("request_id"))) {
        return;
      }
    }
    paramMap = new zzha(1, paramMap);
    zzhx.zzac("Invalid " + paramMap.getType() + " request error: " + paramMap.zzdU());
    zzgy.zzb(zzxB).zzb(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */