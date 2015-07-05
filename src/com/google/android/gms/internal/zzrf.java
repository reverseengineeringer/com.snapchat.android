package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import java.util.Map;

public final class zzrf
  extends zzqy<zzrf>
{
  private String zzBa;
  private String zzBb;
  private String zzBc;
  private String zzBd;
  
  public final void setAppId(String paramString)
  {
    zzBc = paramString;
  }
  
  public final void setAppInstallerId(String paramString)
  {
    zzBd = paramString;
  }
  
  public final void setAppName(String paramString)
  {
    zzBa = paramString;
  }
  
  public final void setAppVersion(String paramString)
  {
    zzBb = paramString;
  }
  
  public final String toString()
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("appName", zzBa);
    localArrayMap.put("appVersion", zzBb);
    localArrayMap.put("appId", zzBc);
    localArrayMap.put("appInstallerId", zzBd);
    return zzG(localArrayMap);
  }
  
  public final String zzga()
  {
    return zzBa;
  }
  
  public final String zzgc()
  {
    return zzBb;
  }
  
  public final String zznE()
  {
    return zzBc;
  }
  
  public final String zzra()
  {
    return zzBd;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzrf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */