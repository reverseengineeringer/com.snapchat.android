package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GeofencingRequest.Builder;
import com.google.android.gms.location.LocationServices.zza;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zza;
import com.google.android.gms.location.zzf.zzb;
import java.util.List;

public class zzpa
  implements GeofencingApi
{
  public PendingResult<Status> addGeofences(GoogleApiClient paramGoogleApiClient, final GeofencingRequest paramGeofencingRequest, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzb(new zza(paramGoogleApiClient)
    {
      protected void zza(zzpf paramAnonymouszzpf)
      {
        zzf.zza local1 = new zzf.zza()
        {
          public void zza(int paramAnonymous2Int, String[] paramAnonymous2ArrayOfString)
          {
            setResult(LocationStatusCodes.zzfr(paramAnonymous2Int));
          }
        };
        paramAnonymouszzpf.zza(paramGeofencingRequest, paramPendingIntent, local1);
      }
    });
  }
  
  @Deprecated
  public PendingResult<Status> addGeofences(GoogleApiClient paramGoogleApiClient, List<Geofence> paramList, PendingIntent paramPendingIntent)
  {
    GeofencingRequest.Builder localBuilder = new GeofencingRequest.Builder();
    localBuilder.addGeofences(paramList);
    localBuilder.setInitialTrigger(5);
    return addGeofences(paramGoogleApiClient, localBuilder.build(), paramPendingIntent);
  }
  
  public PendingResult<Status> removeGeofences(GoogleApiClient paramGoogleApiClient, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzb(new zza(paramGoogleApiClient)
    {
      protected void zza(zzpf paramAnonymouszzpf)
      {
        zzf.zzb local1 = new zzf.zzb()
        {
          public void zzb(int paramAnonymous2Int, PendingIntent paramAnonymous2PendingIntent)
          {
            setResult(LocationStatusCodes.zzfr(paramAnonymous2Int));
          }
          
          public void zzb(int paramAnonymous2Int, String[] paramAnonymous2ArrayOfString)
          {
            Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
          }
        };
        paramAnonymouszzpf.zza(paramPendingIntent, local1);
      }
    });
  }
  
  public PendingResult<Status> removeGeofences(GoogleApiClient paramGoogleApiClient, final List<String> paramList)
  {
    paramGoogleApiClient.zzb(new zza(paramGoogleApiClient)
    {
      protected void zza(zzpf paramAnonymouszzpf)
      {
        zzf.zzb local1 = new zzf.zzb()
        {
          public void zzb(int paramAnonymous2Int, PendingIntent paramAnonymous2PendingIntent)
          {
            Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
          }
          
          public void zzb(int paramAnonymous2Int, String[] paramAnonymous2ArrayOfString)
          {
            setResult(LocationStatusCodes.zzfr(paramAnonymous2Int));
          }
        };
        paramAnonymouszzpf.zza(paramList, local1);
      }
    });
  }
  
  static abstract class zza
    extends LocationServices.zza<Status>
  {
    public zza(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    public Status zzb(Status paramStatus)
    {
      return paramStatus;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */