package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzbh
  extends zzaj
{
  private static final String ID = zza.zzai.toString();
  private static final String zzayC = zzb.zzbw.toString();
  
  public zzbh()
  {
    super(ID, new String[] { zzayC });
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    return zzde.zzx(zzde.zzg((zzd.zza)paramMap.get(zzayC)).toLowerCase());
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */