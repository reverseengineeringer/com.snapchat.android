package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class zzax
  extends zzaj
{
  private static final String ID = zza.zzae.toString();
  private static final String zzayC = zzb.zzbw.toString();
  private static final String zzayU = zzb.zzdi.toString();
  private static final String zzayV = zzb.zzdm.toString();
  private static final String zzayW = zzb.zzcH.toString();
  
  public zzax()
  {
    super(ID, new String[] { zzayC });
  }
  
  private String zza(String paramString, zza paramzza, Set<Character> paramSet)
  {
    switch (1.zzayX[paramzza.ordinal()])
    {
    default: 
      return paramString;
    case 1: 
      try
      {
        paramzza = zzdi.zzdv(paramString);
        return paramzza;
      }
      catch (UnsupportedEncodingException paramzza)
      {
        zzbf.zzb("Joiner: unsupported encoding", paramzza);
        return paramString;
      }
    }
    paramString = paramString.replace("\\", "\\\\");
    paramzza = paramSet.iterator();
    while (paramzza.hasNext())
    {
      paramSet = ((Character)paramzza.next()).toString();
      paramString = paramString.replace(paramSet, "\\" + paramSet);
    }
    return paramString;
  }
  
  private void zza(StringBuilder paramStringBuilder, String paramString, zza paramzza, Set<Character> paramSet)
  {
    paramStringBuilder.append(zza(paramString, paramzza, paramSet));
  }
  
  private void zza(Set<Character> paramSet, String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      paramSet.add(Character.valueOf(paramString.charAt(i)));
      i += 1;
    }
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    zzd.zza localzza = (zzd.zza)paramMap.get(zzayC);
    if (localzza == null) {
      return zzde.zzuf();
    }
    Object localObject1 = (zzd.zza)paramMap.get(zzayU);
    String str1;
    Object localObject2;
    if (localObject1 != null)
    {
      str1 = zzde.zzg((zzd.zza)localObject1);
      localObject1 = (zzd.zza)paramMap.get(zzayV);
      if (localObject1 == null) {
        break label186;
      }
      localObject2 = zzde.zzg((zzd.zza)localObject1);
      label75:
      localObject1 = zza.zzayY;
      paramMap = (zzd.zza)paramMap.get(zzayW);
      if (paramMap == null) {
        break label415;
      }
      paramMap = zzde.zzg(paramMap);
      if (!"url".equals(paramMap)) {
        break label193;
      }
      localObject1 = zza.zzayZ;
      paramMap = null;
    }
    for (;;)
    {
      label118:
      StringBuilder localStringBuilder = new StringBuilder();
      switch (type)
      {
      default: 
        zza(localStringBuilder, zzde.zzg(localzza), (zza)localObject1, paramMap);
      }
      for (;;)
      {
        return zzde.zzx(localStringBuilder.toString());
        str1 = "";
        break;
        label186:
        localObject2 = "=";
        break label75;
        label193:
        if ("backslash".equals(paramMap))
        {
          localObject1 = zza.zzaza;
          paramMap = new HashSet();
          zza(paramMap, str1);
          zza(paramMap, (String)localObject2);
          paramMap.remove(Character.valueOf('\\'));
          break label118;
        }
        zzbf.zzZ("Joiner: unsupported escape type: " + paramMap);
        return zzde.zzuf();
        int j = 1;
        localObject2 = zzgw;
        int k = localObject2.length;
        int i = 0;
        while (i < k)
        {
          localzza = localObject2[i];
          if (j == 0) {
            localStringBuilder.append(str1);
          }
          zza(localStringBuilder, zzde.zzg(localzza), (zza)localObject1, paramMap);
          i += 1;
          j = 0;
        }
        i = 0;
        while (i < zzgx.length)
        {
          if (i > 0) {
            localStringBuilder.append(str1);
          }
          String str2 = zzde.zzg(zzgx[i]);
          String str3 = zzde.zzg(zzgy[i]);
          zza(localStringBuilder, str2, (zza)localObject1, paramMap);
          localStringBuilder.append((String)localObject2);
          zza(localStringBuilder, str3, (zza)localObject1, paramMap);
          i += 1;
        }
      }
      label415:
      paramMap = null;
    }
  }
  
  public boolean zzsD()
  {
    return true;
  }
  
  static enum zza
  {
    private zza() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */