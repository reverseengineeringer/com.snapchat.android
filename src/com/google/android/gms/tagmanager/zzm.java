package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzm
  extends zzaj
{
  private static final String ID = zza.zzA.toString();
  private static final String VALUE = zzb.zzff.toString();
  
  public zzm()
  {
    super(ID, new String[] { VALUE });
  }
  
  public static String zzsG()
  {
    return ID;
  }
  
  public static String zzsH()
  {
    return VALUE;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    return (zzd.zza)paramMap.get(VALUE);
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */