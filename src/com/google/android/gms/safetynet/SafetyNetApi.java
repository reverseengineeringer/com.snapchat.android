package com.google.android.gms.safetynet;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;

public abstract interface SafetyNetApi
{
  public abstract PendingResult<AttestationResult> attest(GoogleApiClient paramGoogleApiClient, byte[] paramArrayOfByte);
  
  public static abstract interface AttestationResult
    extends Result
  {
    public abstract String getJwsResult();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.safetynet.SafetyNetApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */