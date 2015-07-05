package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafetyNetApi;
import com.google.android.gms.safetynet.SafetyNetApi.AttestationResult;
import com.google.android.gms.safetynet.zza;

public class zzum
  implements SafetyNetApi
{
  public PendingResult<SafetyNetApi.AttestationResult> attest(GoogleApiClient paramGoogleApiClient, final byte[] paramArrayOfByte)
  {
    paramGoogleApiClient.zza(new zzb(paramGoogleApiClient)
    {
      protected void zza(zzun paramAnonymouszzun)
      {
        paramAnonymouszzun.zza(zzawK, paramArrayOfByte);
      }
    });
  }
  
  static class zza
    implements SafetyNetApi.AttestationResult
  {
    private final Status zzHb;
    private final zza zzawJ;
    
    public zza(Status paramStatus, zza paramzza)
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
  
  static abstract class zzb
    extends zzuj<SafetyNetApi.AttestationResult>
  {
    protected zzuk zzawK = new zzui()
    {
      public void zza(Status paramAnonymousStatus, zza paramAnonymouszza)
      {
        setResult(new zzum.zza(paramAnonymousStatus, paramAnonymouszza));
      }
    };
    
    public zzb(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    protected SafetyNetApi.AttestationResult zzaL(Status paramStatus)
    {
      return new zzum.zza(paramStatus, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */