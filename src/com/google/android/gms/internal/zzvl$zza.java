package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

public class zzvl$zza
{
  private final zzd.zza zzaAo;
  private final Map<String, zzd.zza> zzaCj;
  
  private zzvl$zza(Map<String, zzd.zza> paramMap, zzd.zza paramzza)
  {
    zzaCj = paramMap;
    zzaAo = paramzza;
  }
  
  public static zzvl.zzb zzuu()
  {
    return new zzvl.zzb(null);
  }
  
  public String toString()
  {
    return "Properties: " + zzuv() + " pushAfterEvaluate: " + zzaAo;
  }
  
  public void zza(String paramString, zzd.zza paramzza)
  {
    zzaCj.put(paramString, paramzza);
  }
  
  public zzd.zza zztK()
  {
    return zzaAo;
  }
  
  public Map<String, zzd.zza> zzuv()
  {
    return Collections.unmodifiableMap(zzaCj);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvl.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */