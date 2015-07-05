package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public class zzvl$zzb
{
  private zzd.zza zzaAo;
  private final Map<String, zzd.zza> zzaCj = new HashMap();
  
  public zzb zzb(String paramString, zzd.zza paramzza)
  {
    zzaCj.put(paramString, paramzza);
    return this;
  }
  
  public zzb zzq(zzd.zza paramzza)
  {
    zzaAo = paramzza;
    return this;
  }
  
  public zzvl.zza zzuw()
  {
    return new zzvl.zza(zzaCj, zzaAo, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvl.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */