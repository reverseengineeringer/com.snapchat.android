package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzc
  extends zzaj
{
  private static final String ID = com.google.android.gms.internal.zza.zzv.toString();
  private final zza zzaxm;
  
  public zzc(Context paramContext)
  {
    this(zza.zzaj(paramContext));
  }
  
  zzc(zza paramzza)
  {
    super(ID, new String[0]);
    zzaxm = paramzza;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    if (!zzaxm.isLimitAdTrackingEnabled()) {}
    for (boolean bool = true;; bool = false) {
      return zzde.zzx(Boolean.valueOf(bool));
    }
  }
  
  public boolean zzsD()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */