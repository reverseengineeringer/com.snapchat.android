package com.google.android.gms.internal;

import java.util.Map;

@zzgi
public final class zzcs
  implements zzcv
{
  private final zzct zzry;
  
  public zzcs(zzct paramzzct)
  {
    zzry = paramzzct;
  }
  
  public final void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    paramzzic = (String)paramMap.get("name");
    if (paramzzic == null)
    {
      zzhx.zzac("App event with no name parameter.");
      return;
    }
    zzry.onAppEvent(paramzzic, (String)paramMap.get("info"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */