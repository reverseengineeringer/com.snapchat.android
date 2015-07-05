package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzaa
  extends zzaj
{
  private static final String ID = zza.zzF.toString();
  
  public zzaa()
  {
    super(ID, new String[0]);
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    String str2 = Build.MANUFACTURER;
    String str1 = Build.MODEL;
    paramMap = str1;
    if (!str1.startsWith(str2))
    {
      paramMap = str1;
      if (!str2.equals("unknown")) {
        paramMap = str2 + " " + str1;
      }
    }
    return zzde.zzx(paramMap);
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzaa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */