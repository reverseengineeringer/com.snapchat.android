package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zza;

class zzpa$1
  extends zzpa.zza
{
  zzpa$1(zzpa paramzzpa, GoogleApiClient paramGoogleApiClient, GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzpf paramzzpf)
  {
    zzf.zza local1 = new zzf.zza()
    {
      public void zza(int paramAnonymousInt, String[] paramAnonymousArrayOfString)
      {
        setResult(LocationStatusCodes.zzfr(paramAnonymousInt));
      }
    };
    paramzzpf.zza(zzamM, zzaaA, local1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpa.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */