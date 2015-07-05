package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzd.zza;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class zzdi
{
  private static zzbv<zzd.zza> zza(zzbv<zzd.zza> paramzzbv)
  {
    try
    {
      zzbv localzzbv = new zzbv(zzde.zzx(zzdv(zzde.zzg((zzd.zza)paramzzbv.getObject()))), paramzzbv.zztu());
      return localzzbv;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      zzbf.zzb("Escape URI: unsupported encoding", localUnsupportedEncodingException);
    }
    return paramzzbv;
  }
  
  private static zzbv<zzd.zza> zza(zzbv<zzd.zza> paramzzbv, int paramInt)
  {
    if (!zzn((zzd.zza)paramzzbv.getObject()))
    {
      zzbf.zzZ("Escaping can only be applied to strings.");
      return paramzzbv;
    }
    switch (paramInt)
    {
    default: 
      zzbf.zzZ("Unsupported Value Escaping: " + paramInt);
      return paramzzbv;
    }
    return zza(paramzzbv);
  }
  
  static zzbv<zzd.zza> zza(zzbv<zzd.zza> paramzzbv, int... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramzzbv = zza(paramzzbv, paramVarArgs[i]);
      i += 1;
    }
    return paramzzbv;
  }
  
  static String zzdv(String paramString)
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
  }
  
  private static boolean zzn(zzd.zza paramzza)
  {
    return zzde.zzl(paramzza) instanceof String;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */