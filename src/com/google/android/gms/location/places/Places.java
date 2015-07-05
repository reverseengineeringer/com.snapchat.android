package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzps;
import com.google.android.gms.internal.zzps.zza;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpx;
import com.google.android.gms.internal.zzpx.zza;

public class Places
{
  public static final Api<PlacesOptions> GEO_DATA_API;
  public static final GeoDataApi GeoDataApi = new zzpr();
  public static final Api<PlacesOptions> PLACE_DETECTION_API;
  public static final PlaceDetectionApi PlaceDetectionApi = new zzpw();
  public static final Api.zzc<zzps> zzanT = new Api.zzc();
  public static final Api.zzc<zzpx> zzanU = new Api.zzc();
  
  static
  {
    GEO_DATA_API = new Api(new zzps.zza(null, null), zzanT, new Scope[0]);
    PLACE_DETECTION_API = new Api(new zzpx.zza(null, null), zzanU, new Scope[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.Places
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */