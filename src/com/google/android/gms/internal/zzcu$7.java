package com.google.android.gms.internal;

import java.util.Map;

final class zzcu$7
  implements zzcv
{
  public final void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("u");
    if (paramMap == null)
    {
      zzhx.zzac("URL missing from httpTrack GMSG.");
      return;
    }
    new zzhu(paramzzic.getContext(), zzeJzzzH, paramMap).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcu.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */