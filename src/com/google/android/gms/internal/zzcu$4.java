package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

final class zzcu$4
  implements zzcv
{
  public final void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    str = (String)paramMap.get("u");
    if (str == null)
    {
      zzhx.zzac("URL missing from click GMSG.");
      return;
    }
    paramMap = Uri.parse(str);
    try
    {
      Object localObject = paramzzic.zzeI();
      if ((localObject == null) || (!((zzk)localObject).zzb(paramMap))) {
        break label116;
      }
      localObject = ((zzk)localObject).zza(paramMap, paramzzic.getContext());
      paramMap = (Map<String, String>)localObject;
    }
    catch (zzl localzzl)
    {
      for (;;)
      {
        zzhx.zzac("Unable to append parameter to URL: " + str);
      }
    }
    paramMap = paramMap.toString();
    new zzhu(paramzzic.getContext(), zzeJzzzH, paramMap).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcu.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */