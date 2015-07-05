package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices.zza;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;

class zzpn$1
  extends LocationServices.zza<LocationSettingsResult>
{
  zzpn$1(zzpn paramzzpn, GoogleApiClient paramGoogleApiClient, LocationSettingsRequest paramLocationSettingsRequest, String paramString)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzpf paramzzpf)
  {
    paramzzpf.zza(zzanq, this, zzanr);
  }
  
  public LocationSettingsResult zzax(Status paramStatus)
  {
    return new LocationSettingsResult(paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */