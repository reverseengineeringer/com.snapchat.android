package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzcb
  extends zzaj
{
  private static final String ID = zza.zzQ.toString();
  private static final String zzazF = zzb.zzdz.toString();
  private static final String zzazG = zzb.zzdy.toString();
  
  public zzcb()
  {
    super(ID, new String[0]);
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = (zzd.zza)paramMap.get(zzazF);
    paramMap = (zzd.zza)paramMap.get(zzazG);
    double d2;
    double d1;
    if ((localObject != null) && (localObject != zzde.zzuf()) && (paramMap != null) && (paramMap != zzde.zzuf()))
    {
      localObject = zzde.zzh((zzd.zza)localObject);
      paramMap = zzde.zzh(paramMap);
      if ((localObject != zzde.zzud()) && (paramMap != zzde.zzud()))
      {
        d2 = ((zzdd)localObject).doubleValue();
        d1 = paramMap.doubleValue();
        if (d2 > d1) {}
      }
    }
    for (;;)
    {
      return zzde.zzx(Long.valueOf(Math.round((d1 - d2) * Math.random() + d2)));
      d1 = 2.147483647E9D;
      d2 = 0.0D;
    }
  }
  
  public boolean zzsD()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */