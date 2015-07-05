package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafetyNetApi.AttestationResult;
import com.google.android.gms.safetynet.zza;

abstract class zzum$zzb
  extends zzuj<SafetyNetApi.AttestationResult>
{
  protected zzuk zzawK = new zzui()
  {
    public void zza(Status paramAnonymousStatus, zza paramAnonymouszza)
    {
      setResult(new zzum.zza(paramAnonymousStatus, paramAnonymouszza));
    }
  };
  
  public zzum$zzb(GoogleApiClient paramGoogleApiClient)
  {
    super(paramGoogleApiClient);
  }
  
  protected SafetyNetApi.AttestationResult zzaL(Status paramStatus)
  {
    return new zzum.zza(paramStatus, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzum.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */