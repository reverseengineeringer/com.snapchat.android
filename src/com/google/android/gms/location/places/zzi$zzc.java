package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class zzi$zzc<A extends Api.zza>
  extends zzi.zzb<PlaceBuffer, A>
{
  public zzi$zzc(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
  {
    super(paramzzc, paramGoogleApiClient);
  }
  
  protected PlaceBuffer zzaA(Status paramStatus)
  {
    return new PlaceBuffer(DataHolder.zzay(paramStatus.getStatusCode()), null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzi.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */