package com.google.android.gms.analytics;

class zzz$zza
  implements zzn.zza<zzaa>
{
  private final zzaa zzEh = new zzaa();
  
  public void zzc(String paramString, int paramInt)
  {
    if ("ga_dispatchPeriod".equals(paramString))
    {
      zzEh.zzEj = paramInt;
      return;
    }
    zzae.zzac("int configuration name not recognized:  " + paramString);
  }
  
  public void zzd(String paramString, boolean paramBoolean)
  {
    if ("ga_dryRun".equals(paramString))
    {
      paramString = zzEh;
      if (paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        zzEk = i;
        return;
      }
    }
    zzae.zzac("bool configuration name not recognized:  " + paramString);
  }
  
  public zzaa zzfY()
  {
    return zzEh;
  }
  
  public void zzi(String paramString1, String paramString2) {}
  
  public void zzj(String paramString1, String paramString2)
  {
    if ("ga_appName".equals(paramString1))
    {
      zzEh.zzBa = paramString2;
      return;
    }
    if ("ga_appVersion".equals(paramString1))
    {
      zzEh.zzBb = paramString2;
      return;
    }
    if ("ga_logLevel".equals(paramString1))
    {
      zzEh.zzEi = paramString2;
      return;
    }
    zzae.zzac("string configuration name not recognized:  " + paramString1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzz.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */