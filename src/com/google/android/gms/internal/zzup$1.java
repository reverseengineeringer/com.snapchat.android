package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import java.util.concurrent.Executors;

final class zzup$1
  implements Api.zzb<zzvc, zzus>
{
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
  
  public final zzvc zza(Context paramContext, Looper paramLooper, zzf paramzzf, zzus paramzzus, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    if (paramzzus == null) {
      paramzzus = zzus.zzawP;
    }
    for (;;)
    {
      return new zzvc(paramContext, paramLooper, paramzzf, paramzzus, paramConnectionCallbacks, paramOnConnectionFailedListener, Executors.newSingleThreadExecutor());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzup.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */