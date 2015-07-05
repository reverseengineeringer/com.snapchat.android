package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zzb;
import java.util.List;

class zzpa$3
  extends zzpa.zza
{
  zzpa$3(zzpa paramzzpa, GoogleApiClient paramGoogleApiClient, List paramList)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzpf paramzzpf)
  {
    zzf.zzb local1 = new zzf.zzb()
    {
      public void zzb(int paramAnonymousInt, PendingIntent paramAnonymousPendingIntent)
      {
        Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
      }
      
      public void zzb(int paramAnonymousInt, String[] paramAnonymousArrayOfString)
      {
        setResult(LocationStatusCodes.zzfr(paramAnonymousInt));
      }
    };
    paramzzpf.zza(zzamQ, local1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpa.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */