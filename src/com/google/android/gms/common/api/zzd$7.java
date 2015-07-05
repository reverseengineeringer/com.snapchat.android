package com.google.android.gms.common.api;

import android.util.Log;
import java.util.concurrent.locks.Lock;

class zzd$7
  implements GoogleApiClient.zza
{
  zzd$7(zzd paramzzd) {}
  
  private void zzap(int paramInt)
  {
    zzd.zza(zzNb).lock();
    try
    {
      if (zzd.zzh(zzNb) != paramInt)
      {
        Log.wtf("GoogleApiClientImpl", String.format("Internal error: step mismatch. Expected: %d, Actual: %d", new Object[] { Integer.valueOf(zzd.zzh(zzNb)), Integer.valueOf(paramInt) }));
        zzd.zza(zzNb, 4);
        return;
      }
      if (zzd.zzi(zzNb) == 1) {
        zzd.zzc(zzNb);
      }
      return;
    }
    finally
    {
      zzd.zza(zzNb).unlock();
    }
  }
  
  public void zzia()
  {
    zzap(0);
  }
  
  public void zzib()
  {
    zzap(1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */