package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

class zzd$11
  implements GoogleApiClient.OnConnectionFailedListener
{
  zzd$11(zzd paramzzd) {}
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzd.zza(zzNb).lock();
    try
    {
      zzd.zzb(zzNb, new ConnectionResult(8, null));
      return;
    }
    finally
    {
      zzd.zza(zzNb).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */