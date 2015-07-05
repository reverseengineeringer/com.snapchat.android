package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzb
  extends zzaj
{
  private static final String ID = com.google.android.gms.internal.zza.zzu.toString();
  private final zza zzaxm;
  
  public zzb(Context paramContext)
  {
    this(zza.zzaj(paramContext));
  }
  
  zzb(zza paramzza)
  {
    super(ID, new String[0]);
    zzaxm = paramzza;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    paramMap = zzaxm.zzsz();
    if (paramMap == null) {
      return zzde.zzuf();
    }
    return zzde.zzx(paramMap);
  }
  
  public boolean zzsD()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */