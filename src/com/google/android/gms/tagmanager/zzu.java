package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzu
  extends zzaj
{
  private static final String ID = zza.zzC.toString();
  private static final String NAME = zzb.zzdB.toString();
  private static final String zzaym = zzb.zzcr.toString();
  private final DataLayer zzaxx;
  
  public zzu(DataLayer paramDataLayer)
  {
    super(ID, new String[] { NAME });
    zzaxx = paramDataLayer;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = zzaxx.get(zzde.zzg((zzd.zza)paramMap.get(NAME)));
    if (localObject == null)
    {
      paramMap = (zzd.zza)paramMap.get(zzaym);
      if (paramMap != null) {
        return paramMap;
      }
      return zzde.zzuf();
    }
    return zzde.zzx(localObject);
  }
  
  public boolean zzsD()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */