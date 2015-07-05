package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzra;
import com.google.android.gms.internal.zzrg;

class zzai
  implements zzq
{
  private final zzra zzAM;
  
  zzai(zzra paramzzra)
  {
    zzx.zzl(paramzzra);
    zzAM = paramzzra;
  }
  
  public String getValue(String paramString)
  {
    if ("&sr".equals(paramString)) {
      return zzgC();
    }
    return null;
  }
  
  public boolean zzaj(String paramString)
  {
    return "&sr".equals(paramString);
  }
  
  protected String zzgC()
  {
    zzrg localzzrg = zzAM.zzqV();
    return localzzrg.zzrb() + "x" + localzzrg.zzrc();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */