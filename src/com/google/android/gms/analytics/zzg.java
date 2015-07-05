package com.google.android.gms.analytics;

import com.google.android.gms.internal.zzra;
import com.google.android.gms.internal.zzrf;

class zzg
  implements zzq
{
  protected String zzBa;
  protected String zzBb;
  protected String zzBc;
  protected String zzBd;
  
  zzg(zzra paramzzra)
  {
    paramzzra = paramzzra.zzqU();
    zzBc = paramzzra.zznE();
    zzBd = paramzzra.zzra();
    zzBa = paramzzra.zzga();
    zzBb = paramzzra.zzgc();
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      if (paramString.equals("&an")) {
        return zzBa;
      }
      if (paramString.equals("&av")) {
        return zzBb;
      }
      if (paramString.equals("&aid")) {
        return zzBc;
      }
    } while (!paramString.equals("&aiid"));
    return zzBd;
  }
  
  public boolean zzaj(String paramString)
  {
    return ("&an".equals(paramString)) || ("&av".equals(paramString)) || ("&aid".equals(paramString)) || ("&aiid".equals(paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */