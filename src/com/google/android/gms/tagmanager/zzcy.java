package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

abstract class zzcy
  extends zzbz
{
  public zzcy(String paramString)
  {
    super(paramString);
  }
  
  protected boolean zza(zzd.zza paramzza1, zzd.zza paramzza2, Map<String, zzd.zza> paramMap)
  {
    paramzza1 = zzde.zzg(paramzza1);
    paramzza2 = zzde.zzg(paramzza2);
    if ((paramzza1 == zzde.zzue()) || (paramzza2 == zzde.zzue())) {
      return false;
    }
    return zza(paramzza1, paramzza2, paramMap);
  }
  
  protected abstract boolean zza(String paramString1, String paramString2, Map<String, zzd.zza> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */