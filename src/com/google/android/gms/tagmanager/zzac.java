package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzac
  extends zzaj
{
  private static final String ID = zza.zzaa.toString();
  private static final String zzayC = zzb.zzbw.toString();
  private static final String zzayD = zzb.zzdH.toString();
  private static final String zzayE = zzb.zzde.toString();
  private static final String zzayF = zzb.zzdP.toString();
  
  public zzac()
  {
    super(ID, new String[] { zzayC });
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = (zzd.zza)paramMap.get(zzayC);
    if ((localObject == null) || (localObject == zzde.zzuf())) {
      return zzde.zzuf();
    }
    String str2 = zzde.zzg((zzd.zza)localObject);
    localObject = (zzd.zza)paramMap.get(zzayE);
    String str1;
    label84:
    int i;
    if (localObject == null)
    {
      str1 = "text";
      localObject = (zzd.zza)paramMap.get(zzayF);
      if (localObject != null) {
        break label165;
      }
      localObject = "base16";
      int j = 2;
      paramMap = (zzd.zza)paramMap.get(zzayD);
      i = j;
      if (paramMap != null)
      {
        i = j;
        if (zzde.zzk(paramMap).booleanValue()) {
          i = 3;
        }
      }
    }
    for (;;)
    {
      try
      {
        if ("text".equals(str1))
        {
          paramMap = str2.getBytes();
          if (!"base16".equals(localObject)) {
            break label273;
          }
          paramMap = zzj.zze(paramMap);
          return zzde.zzx(paramMap);
          str1 = zzde.zzg((zzd.zza)localObject);
          break;
          label165:
          localObject = zzde.zzg((zzd.zza)localObject);
          break label84;
        }
        if ("base16".equals(str1))
        {
          paramMap = zzj.zzcL(str2);
          continue;
        }
        if ("base64".equals(str1))
        {
          paramMap = Base64.decode(str2, i);
          continue;
        }
        if ("base64url".equals(str1))
        {
          paramMap = Base64.decode(str2, i | 0x8);
          continue;
        }
        zzbf.zzZ("Encode: unknown input format: " + str1);
        paramMap = zzde.zzuf();
        return paramMap;
      }
      catch (IllegalArgumentException paramMap)
      {
        zzbf.zzZ("Encode: invalid input:");
        return zzde.zzuf();
      }
      label273:
      if ("base64".equals(localObject))
      {
        paramMap = Base64.encodeToString(paramMap, i);
      }
      else
      {
        if (!"base64url".equals(localObject)) {
          break label314;
        }
        paramMap = Base64.encodeToString(paramMap, i | 0x8);
      }
    }
    label314:
    zzbf.zzZ("Encode: unknown output format: " + (String)localObject);
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */