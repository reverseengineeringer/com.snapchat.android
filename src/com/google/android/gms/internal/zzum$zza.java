package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafetyNetApi.AttestationResult;
import com.google.android.gms.safetynet.zza;

class zzum$zza
  implements SafetyNetApi.AttestationResult
{
  private final Status zzHb;
  private final zza zzawJ;
  
  public zzum$zza(Status paramStatus, zza paramzza)
  {
    zzHb = paramStatus;
    zzawJ = paramzza;
  }
  
  public String getJwsResult()
  {
    if (zzawJ == null) {
      return null;
    }
    return zzawJ.getJwsResult();
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzum.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */