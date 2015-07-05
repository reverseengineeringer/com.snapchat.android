package com.google.android.gms.internal;

import java.util.Map;

final class zzcu$5
  implements zzcv
{
  public final void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    paramzzic = paramzzic.zzeF();
    if (paramzzic == null)
    {
      zzhx.zzac("A GMSG tried to close something that wasn't an overlay.");
      return;
    }
    paramzzic.close();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcu.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */