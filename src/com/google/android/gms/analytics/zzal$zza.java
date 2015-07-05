package com.google.android.gms.analytics;

import java.util.Map;

class zzal$zza
  implements zzn.zza<zzam>
{
  private final zzam zzFq = new zzam();
  
  public void zzc(String paramString, int paramInt)
  {
    if ("ga_sessionTimeout".equals(paramString))
    {
      zzFq.zzFt = paramInt;
      return;
    }
    zzae.zzac("int configuration name not recognized:  " + paramString);
  }
  
  public void zzd(String paramString, boolean paramBoolean)
  {
    int j = 1;
    int k = 1;
    int i = 1;
    if ("ga_autoActivityTracking".equals(paramString))
    {
      paramString = zzFq;
      if (paramBoolean) {}
      for (;;)
      {
        zzFu = i;
        return;
        i = 0;
      }
    }
    if ("ga_anonymizeIp".equals(paramString))
    {
      paramString = zzFq;
      if (paramBoolean) {}
      for (i = j;; i = 0)
      {
        zzFv = i;
        return;
      }
    }
    if ("ga_reportUncaughtExceptions".equals(paramString))
    {
      paramString = zzFq;
      if (paramBoolean) {}
      for (i = k;; i = 0)
      {
        zzFw = i;
        return;
      }
    }
    zzae.zzac("bool configuration name not recognized:  " + paramString);
  }
  
  public zzam zzgJ()
  {
    return zzFq;
  }
  
  public void zzi(String paramString1, String paramString2)
  {
    zzFq.zzFx.put(paramString1, paramString2);
  }
  
  public void zzj(String paramString1, String paramString2)
  {
    if ("ga_trackingId".equals(paramString1))
    {
      zzFq.zzFr = paramString2;
      return;
    }
    if ("ga_sampleFrequency".equals(paramString1)) {
      try
      {
        zzFq.zzFs = Double.parseDouble(paramString2);
        return;
      }
      catch (NumberFormatException paramString1)
      {
        zzae.zzZ("Error parsing ga_sampleFrequency value: " + paramString2);
        return;
      }
    }
    zzae.zzac("string configuration name not recognized:  " + paramString1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzal.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */