package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

class zzao
  extends zzaj
{
  private static final String ID = zza.zzac.toString();
  private static final String zzayC = zzb.zzbw.toString();
  private static final String zzayE = zzb.zzde.toString();
  private static final String zzayI = zzb.zzbn.toString();
  
  public zzao()
  {
    super(ID, new String[] { zzayC });
  }
  
  private byte[] zze(String paramString, byte[] paramArrayOfByte)
  {
    paramString = MessageDigest.getInstance(paramString);
    paramString.update(paramArrayOfByte);
    return paramString.digest();
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    Object localObject = (zzd.zza)paramMap.get(zzayC);
    if ((localObject == null) || (localObject == zzde.zzuf())) {
      return zzde.zzuf();
    }
    String str = zzde.zzg((zzd.zza)localObject);
    localObject = (zzd.zza)paramMap.get(zzayI);
    if (localObject == null)
    {
      localObject = "MD5";
      paramMap = (zzd.zza)paramMap.get(zzayE);
      if (paramMap != null) {
        break label110;
      }
      paramMap = "text";
      label73:
      if (!"text".equals(paramMap)) {
        break label118;
      }
      paramMap = str.getBytes();
    }
    for (;;)
    {
      try
      {
        paramMap = zzde.zzx(zzj.zze(zze((String)localObject, paramMap)));
        return paramMap;
      }
      catch (NoSuchAlgorithmException paramMap)
      {
        label110:
        label118:
        zzbf.zzZ("Hash: unknown algorithm: " + (String)localObject);
      }
      localObject = zzde.zzg((zzd.zza)localObject);
      break;
      paramMap = zzde.zzg(paramMap);
      break label73;
      if ("base16".equals(paramMap))
      {
        paramMap = zzj.zzcL(str);
      }
      else
      {
        zzbf.zzZ("Hash: unknown input format: " + paramMap);
        return zzde.zzuf();
      }
    }
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */