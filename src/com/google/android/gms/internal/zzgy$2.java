package com.google.android.gms.internal;

import java.util.Map;

class zzgy$2
  implements zzcv
{
  zzgy$2(zzgy paramzzgy) {}
  
  public void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    zzha localzzha;
    synchronized (zzgy.zza(zzxB))
    {
      if (zzgy.zzb(zzxB).isDone()) {
        return;
      }
      localzzha = new zzha(-2, paramMap);
      if (!zzgy.zzc(zzxB).equals(localzzha.getRequestId()))
      {
        zzhx.zzac(localzzha.getRequestId() + " ==== " + zzgy.zzc(zzxB));
        return;
      }
    }
    String str = localzzha.getUrl();
    if (str == null)
    {
      zzhx.zzac("URL missing in loadAdUrl GMSG.");
      return;
    }
    if (str.contains("%40mediation_adapters%40"))
    {
      paramzzic = str.replaceAll("%40mediation_adapters%40", zzhk.zza(paramzzic.getContext(), (String)paramMap.get("check_adapters"), zzgy.zzd(zzxB)));
      localzzha.setUrl(paramzzic);
      zzhx.zzab("Ad request URL modified to " + paramzzic);
    }
    zzgy.zzb(zzxB).zzb(localzzha);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */