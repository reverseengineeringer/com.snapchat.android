package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class zzce
  extends zzcy
{
  private static final String ID = zza.zzap.toString();
  private static final String zzazJ = zzb.zzdc.toString();
  
  public zzce()
  {
    super(ID);
  }
  
  protected boolean zza(String paramString1, String paramString2, Map<String, zzd.zza> paramMap)
  {
    if (zzde.zzk((zzd.zza)paramMap.get(zzazJ)).booleanValue()) {}
    for (int i = 66;; i = 64) {
      try
      {
        boolean bool = Pattern.compile(paramString2, i).matcher(paramString1).find();
        return bool;
      }
      catch (PatternSyntaxException paramString1)
      {
        return false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */