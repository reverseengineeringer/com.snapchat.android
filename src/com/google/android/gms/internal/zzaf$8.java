package com.google.android.gms.internal;

import java.util.Map;

class zzaf$8
  implements zzcv
{
  zzaf$8(zzaf paramzzaf) {}
  
  public void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    if (!zznI.zza(paramMap)) {
      return;
    }
    zzhx.zzY("Received request to untrack: " + zzaf.zzb(zznI).zzaZ());
    zznI.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaf.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */