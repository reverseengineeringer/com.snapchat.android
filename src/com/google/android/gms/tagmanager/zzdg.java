package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzdg
  extends zzaj
{
  private static final String ID = zza.zzaj.toString();
  private static final String zzayC = zzb.zzbw.toString();
  
  public zzdg()
  {
    super(ID, new String[] { zzayC });
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    return zzde.zzx(zzde.zzg((zzd.zza)paramMap.get(zzayC)).toUpperCase());
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzdg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */