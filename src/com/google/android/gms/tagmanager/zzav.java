package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzav
  extends zzaj
{
  private static final String ID = zza.zzad.toString();
  private static final String zzaxn = zzb.zzbW.toString();
  private final Context zzlN;
  
  public zzav(Context paramContext)
  {
    super(ID, new String[0]);
    zzlN = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    if ((zzd.zza)paramMap.get(zzaxn) != null) {}
    for (paramMap = zzde.zzg((zzd.zza)paramMap.get(zzaxn));; paramMap = null)
    {
      paramMap = zzaw.zzi(zzlN, paramMap);
      if (paramMap == null) {
        break;
      }
      return zzde.zzx(paramMap);
    }
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */