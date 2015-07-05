package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

abstract class zzbu
  extends zzbz
{
  public zzbu(String paramString)
  {
    super(paramString);
  }
  
  protected boolean zza(zzd.zza paramzza1, zzd.zza paramzza2, Map<String, zzd.zza> paramMap)
  {
    paramzza1 = zzde.zzh(paramzza1);
    paramzza2 = zzde.zzh(paramzza2);
    if ((paramzza1 == zzde.zzud()) || (paramzza2 == zzde.zzud())) {
      return false;
    }
    return zza(paramzza1, paramzza2, paramMap);
  }
  
  protected abstract boolean zza(zzdd paramzzdd1, zzdd paramzzdd2, Map<String, zzd.zza> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */