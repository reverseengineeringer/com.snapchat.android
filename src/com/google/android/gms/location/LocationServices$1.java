package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzpf;

final class LocationServices$1
  implements Api.zzb<zzpf, Api.ApiOptions.NoOptions>
{
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
  
  public final zzpf zzk(Context paramContext, Looper paramLooper, zzf paramzzf, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new zzpf(paramContext, paramLooper, paramContext.getPackageName(), paramConnectionCallbacks, paramOnConnectionFailedListener, "locationServices", paramzzf.getAccountName());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationServices.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */