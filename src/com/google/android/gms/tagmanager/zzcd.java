package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class zzcd
  extends zzaj
{
  private static final String ID = zza.zzag.toString();
  private static final String zzazH = zzb.zzbw.toString();
  private static final String zzazI = zzb.zzbx.toString();
  private static final String zzazJ = zzb.zzdc.toString();
  private static final String zzazK = zzb.zzcW.toString();
  
  public zzcd()
  {
    super(ID, new String[] { zzazH, zzazI });
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = (zzd.zza)paramMap.get(zzazH);
    zzd.zza localzza = (zzd.zza)paramMap.get(zzazI);
    if ((localObject == null) || (localObject == zzde.zzuf()) || (localzza == null) || (localzza == zzde.zzuf())) {
      return zzde.zzuf();
    }
    int i = 64;
    if (zzde.zzk((zzd.zza)paramMap.get(zzazJ)).booleanValue()) {
      i = 66;
    }
    paramMap = (zzd.zza)paramMap.get(zzazK);
    int j;
    if (paramMap != null)
    {
      paramMap = zzde.zzi(paramMap);
      if (paramMap == zzde.zzua()) {
        return zzde.zzuf();
      }
      int k = paramMap.intValue();
      j = k;
      if (k < 0) {
        return zzde.zzuf();
      }
    }
    else
    {
      j = 1;
    }
    try
    {
      paramMap = zzde.zzg((zzd.zza)localObject);
      localObject = zzde.zzg(localzza);
      localzza = null;
      localObject = Pattern.compile((String)localObject, i).matcher(paramMap);
      paramMap = localzza;
      if (((Matcher)localObject).find())
      {
        paramMap = localzza;
        if (((Matcher)localObject).groupCount() >= j) {
          paramMap = ((Matcher)localObject).group(j);
        }
      }
      if (paramMap == null) {
        return zzde.zzuf();
      }
      paramMap = zzde.zzx(paramMap);
      return paramMap;
    }
    catch (PatternSyntaxException paramMap) {}
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */