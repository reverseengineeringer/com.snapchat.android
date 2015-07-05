package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zze
  extends zzaj
{
  private static final String ID = zza.zzY.toString();
  private static final String zzaxn = zzb.zzbW.toString();
  private static final String zzaxo = zzb.zzbZ.toString();
  private final Context zzlN;
  
  public zze(Context paramContext)
  {
    super(ID, new String[] { zzaxo });
    zzlN = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = (zzd.zza)paramMap.get(zzaxo);
    if (localObject == null) {
      return zzde.zzuf();
    }
    localObject = zzde.zzg((zzd.zza)localObject);
    paramMap = (zzd.zza)paramMap.get(zzaxn);
    if (paramMap != null) {}
    for (paramMap = zzde.zzg(paramMap);; paramMap = null)
    {
      paramMap = zzaw.zzf(zzlN, (String)localObject, paramMap);
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
 * Qualified Name:     com.google.android.gms.tagmanager.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */