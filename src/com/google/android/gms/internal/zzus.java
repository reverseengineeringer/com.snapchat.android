package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks;
import com.google.android.gms.common.internal.zzx;

public final class zzus
  implements Api.ApiOptions.Optional
{
  public static final zzus zzawP = new zza().zzsy();
  private final boolean zzawQ;
  private final boolean zzawR;
  private final String zzawS;
  private final GoogleApiClient.ServerAuthCodeCallbacks zzawT;
  
  private zzus(boolean paramBoolean1, boolean paramBoolean2, String paramString, GoogleApiClient.ServerAuthCodeCallbacks paramServerAuthCodeCallbacks)
  {
    zzawQ = paramBoolean1;
    zzawR = paramBoolean2;
    zzawS = paramString;
    zzawT = paramServerAuthCodeCallbacks;
  }
  
  public final String zzrN()
  {
    return zzawS;
  }
  
  public final boolean zzsv()
  {
    return zzawQ;
  }
  
  public final boolean zzsw()
  {
    return zzawR;
  }
  
  public final GoogleApiClient.ServerAuthCodeCallbacks zzsx()
  {
    return zzawT;
  }
  
  public static final class zza
  {
    private String zzauh;
    private boolean zzawU;
    private boolean zzawV;
    private GoogleApiClient.ServerAuthCodeCallbacks zzawW;
    
    private String zzcH(String paramString)
    {
      zzx.zzl(paramString);
      if ((zzauh == null) || (zzauh.equals(paramString))) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zzb(bool, "two different server client ids provided");
        return paramString;
      }
    }
    
    public final zza zza(String paramString, GoogleApiClient.ServerAuthCodeCallbacks paramServerAuthCodeCallbacks)
    {
      zzawU = true;
      zzawV = true;
      zzauh = zzcH(paramString);
      zzawW = ((GoogleApiClient.ServerAuthCodeCallbacks)zzx.zzl(paramServerAuthCodeCallbacks));
      return this;
    }
    
    public final zzus zzsy()
    {
      return new zzus(zzawU, zzawV, zzauh, zzawW, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */