package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zzb;

class zzpa$2
  extends zzpa.zza
{
  zzpa$2(zzpa paramzzpa, GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzpf paramzzpf)
  {
    zzf.zzb local1 = new zzf.zzb()
    {
      public void zzb(int paramAnonymousInt, PendingIntent paramAnonymousPendingIntent)
      {
        setResult(LocationStatusCodes.zzfr(paramAnonymousInt));
      }
      
      public void zzb(int paramAnonymousInt, String[] paramAnonymousArrayOfString)
      {
        Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
      }
    };
    paramzzpf.zza(zzaaA, local1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpa.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */