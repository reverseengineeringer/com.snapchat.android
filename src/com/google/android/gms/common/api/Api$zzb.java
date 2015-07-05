package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;

public abstract interface Api$zzb<T extends Api.zza, O>
{
  public abstract int getPriority();
  
  public abstract T zza(Context paramContext, Looper paramLooper, zzf paramzzf, O paramO, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */