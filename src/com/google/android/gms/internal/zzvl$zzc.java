package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class zzvl$zzc
{
  private final String zzYw;
  private final List<zzvl.zze> zzaCk;
  private final Map<String, List<zzvl.zza>> zzaCl;
  private final int zzaCm;
  
  private zzvl$zzc(List<zzvl.zze> paramList, Map<String, List<zzvl.zza>> paramMap, String paramString, int paramInt)
  {
    zzaCk = Collections.unmodifiableList(paramList);
    zzaCl = Collections.unmodifiableMap(paramMap);
    zzYw = paramString;
    zzaCm = paramInt;
  }
  
  public static zzvl.zzd zzux()
  {
    return new zzvl.zzd(null);
  }
  
  public String getVersion()
  {
    return zzYw;
  }
  
  public String toString()
  {
    return "Rules: " + zzuy() + "  Macros: " + zzaCl;
  }
  
  public List<zzvl.zze> zzuy()
  {
    return zzaCk;
  }
  
  public Map<String, List<zzvl.zza>> zzuz()
  {
    return zzaCl;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvl.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */