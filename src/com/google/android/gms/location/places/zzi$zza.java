package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class zzi$zza<A extends Api.zza>
  extends zzi.zzb<AutocompletePredictionBuffer, A>
{
  public zzi$zza(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
  {
    super(paramzzc, paramGoogleApiClient);
  }
  
  protected AutocompletePredictionBuffer zzaz(Status paramStatus)
  {
    return new AutocompletePredictionBuffer(DataHolder.zzay(paramStatus.getStatusCode()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzi.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */