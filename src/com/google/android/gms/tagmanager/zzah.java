package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzah
  extends zzaj
{
  private static final String ID = zza.zzK.toString();
  private final zzco zzaxy;
  
  public zzah(zzco paramzzco)
  {
    super(ID, new String[0]);
    zzaxy = paramzzco;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    paramMap = zzaxy.zztH();
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
 * Qualified Name:     com.google.android.gms.tagmanager.zzah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */