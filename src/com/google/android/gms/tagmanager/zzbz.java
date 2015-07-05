package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public abstract class zzbz
  extends zzaj
{
  private static final String zzayC = zzb.zzbw.toString();
  private static final String zzazv = zzb.zzbx.toString();
  
  public zzbz(String paramString)
  {
    super(paramString, new String[] { zzayC, zzazv });
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = paramMap.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      if ((zzd.zza)((Iterator)localObject).next() == zzde.zzuf()) {
        return zzde.zzx(Boolean.valueOf(false));
      }
    }
    localObject = (zzd.zza)paramMap.get(zzayC);
    zzd.zza localzza = (zzd.zza)paramMap.get(zzazv);
    if ((localObject == null) || (localzza == null)) {}
    for (boolean bool = false;; bool = zza((zzd.zza)localObject, localzza, paramMap)) {
      return zzde.zzx(Boolean.valueOf(bool));
    }
  }
  
  protected abstract boolean zza(zzd.zza paramzza1, zzd.zza paramzza2, Map<String, zzd.zza> paramMap);
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzbz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */