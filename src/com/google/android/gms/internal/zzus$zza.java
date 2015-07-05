package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks;
import com.google.android.gms.common.internal.zzx;

public final class zzus$zza
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzus.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */