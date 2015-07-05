package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class zzi$zzd<A extends Api.zza>
  extends zzi.zzb<PlaceLikelihoodBuffer, A>
{
  public zzi$zzd(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
  {
    super(paramzzc, paramGoogleApiClient);
  }
  
  protected PlaceLikelihoodBuffer zzaB(Status paramStatus)
  {
    return new PlaceLikelihoodBuffer(DataHolder.zzay(paramStatus.getStatusCode()), 100, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzi.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */