package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@zzgi
public final class zzgz
{
  private int mOrientation = -1;
  private String zzrm;
  private List<String> zzwY;
  private String zzxC;
  private String zzxD;
  private List<String> zzxE;
  private String zzxF;
  private String zzxG;
  private List<String> zzxH;
  private long zzxI = -1L;
  private boolean zzxJ = false;
  private final long zzxK = -1L;
  private long zzxL = -1L;
  private boolean zzxM = false;
  private boolean zzxN = false;
  private boolean zzxO = false;
  private boolean zzxP = true;
  
  static String zza(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      return (String)paramMap.get(0);
    }
    return null;
  }
  
  static long zzb(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      try
      {
        float f = Float.parseFloat(paramMap);
        return (f * 1000.0F);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        zzhx.zzac("Could not parse float from " + paramString + " header: " + paramMap);
      }
    }
    return -1L;
  }
  
  static List<String> zzc(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (paramMap != null) {
        return Arrays.asList(paramMap.trim().split("\\s+"));
      }
    }
    return null;
  }
  
  private boolean zzd(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    return (paramMap != null) && (!paramMap.isEmpty()) && (Boolean.valueOf((String)paramMap.get(0)).booleanValue());
  }
  
  private void zzi(Map<String, List<String>> paramMap)
  {
    zzxC = zza(paramMap, "X-Afma-Ad-Size");
  }
  
  private void zzj(Map<String, List<String>> paramMap)
  {
    paramMap = zzc(paramMap, "X-Afma-Click-Tracking-Urls");
    if (paramMap != null) {
      zzxE = paramMap;
    }
  }
  
  private void zzk(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Debug-Dialog");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      zzxF = ((String)paramMap.get(0));
    }
  }
  
  private void zzl(Map<String, List<String>> paramMap)
  {
    paramMap = zzc(paramMap, "X-Afma-Tracking-Urls");
    if (paramMap != null) {
      zzxH = paramMap;
    }
  }
  
  private void zzm(Map<String, List<String>> paramMap)
  {
    long l = zzb(paramMap, "X-Afma-Interstitial-Timeout");
    if (l != -1L) {
      zzxI = l;
    }
  }
  
  private void zzn(Map<String, List<String>> paramMap)
  {
    zzxG = zza(paramMap, "X-Afma-ActiveView");
  }
  
  private void zzo(Map<String, List<String>> paramMap)
  {
    zzxN |= zzd(paramMap, "X-Afma-Native");
  }
  
  private void zzp(Map<String, List<String>> paramMap)
  {
    zzxM |= zzd(paramMap, "X-Afma-Custom-Rendering-Allowed");
  }
  
  private void zzq(Map<String, List<String>> paramMap)
  {
    zzxJ |= zzd(paramMap, "X-Afma-Mediation");
  }
  
  private void zzr(Map<String, List<String>> paramMap)
  {
    paramMap = zzc(paramMap, "X-Afma-Manual-Tracking-Urls");
    if (paramMap != null) {
      zzwY = paramMap;
    }
  }
  
  private void zzs(Map<String, List<String>> paramMap)
  {
    long l = zzb(paramMap, "X-Afma-Refresh-Rate");
    if (l != -1L) {
      zzxL = l;
    }
  }
  
  private void zzt(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Orientation");
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (!"portrait".equalsIgnoreCase(paramMap)) {
        break label56;
      }
      mOrientation = zzab.zzaO().zzey();
    }
    label56:
    while (!"landscape".equalsIgnoreCase(paramMap)) {
      return;
    }
    mOrientation = zzab.zzaO().zzex();
  }
  
  private void zzu(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Use-HTTPS");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      zzxO = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  private void zzv(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Content-Url-Opted-Out");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      zzxP = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  public final void zza(String paramString1, Map<String, List<String>> paramMap, String paramString2)
  {
    zzxD = paramString1;
    zzrm = paramString2;
    zzh(paramMap);
  }
  
  public final void zzh(Map<String, List<String>> paramMap)
  {
    zzi(paramMap);
    zzj(paramMap);
    zzk(paramMap);
    zzl(paramMap);
    zzm(paramMap);
    zzq(paramMap);
    zzr(paramMap);
    zzs(paramMap);
    zzt(paramMap);
    zzn(paramMap);
    zzu(paramMap);
    zzp(paramMap);
    zzo(paramMap);
    zzv(paramMap);
  }
  
  public final zzgq zzi(long paramLong)
  {
    return new zzgq(zzxD, zzrm, zzxE, zzxH, zzxI, zzxJ, -1L, zzwY, zzxL, mOrientation, zzxC, paramLong, zzxF, zzxG, zzxM, zzxN, zzxO, zzxP, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */