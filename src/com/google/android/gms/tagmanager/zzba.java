package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Locale;
import java.util.Map;

public class zzba
  extends zzaj
{
  private static final String ID = zza.zzN.toString();
  
  public zzba()
  {
    super(ID, new String[0]);
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    paramMap = Locale.getDefault();
    if (paramMap == null) {
      return zzde.zzuf();
    }
    paramMap = paramMap.getLanguage();
    if (paramMap == null) {
      return zzde.zzuf();
    }
    return zzde.zzx(paramMap.toLowerCase());
  }
  
  public boolean zzsD()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */