package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.Map;
import java.util.concurrent.locks.Lock;

class zzd$9
  implements GoogleApiClient.OnConnectionFailedListener
{
  zzd$9(zzd paramzzd, int paramInt, Api paramApi) {}
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzd.zza(zzNb).lock();
    try
    {
      boolean bool = zzNb.isConnecting();
      if (!bool) {
        return;
      }
      if (zzNf != 2)
      {
        int i = zzNg.zzhT().getPriority();
        if (zzd.zza(zzNb, i, zzNf, paramConnectionResult))
        {
          zzd.zza(zzNb, paramConnectionResult);
          zzd.zzb(zzNb, i);
        }
      }
      zzd.zzm(zzNb).put(zzNg.zzhV(), paramConnectionResult);
      zzd.zzc(zzNb);
      return;
    }
    finally
    {
      zzd.zza(zzNb).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */