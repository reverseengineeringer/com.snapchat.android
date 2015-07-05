package com.google.android.gms.common.api;

import android.content.Context;
import android.content.IntentFilter;
import java.util.concurrent.locks.Lock;

abstract class zzd$zzf
  implements GoogleApiClient.ConnectionCallbacks
{
  private zzd$zzf(zzd paramzzd) {}
  
  public void onConnectionSuspended(int paramInt)
  {
    zzd.zza(zzNb).lock();
    switch (paramInt)
    {
    }
    for (;;)
    {
      zzd.zza(zzNb).unlock();
      return;
      try
      {
        zzd.zza(zzNb, paramInt);
        zzNb.connect();
        continue;
      }
      finally
      {
        zzd.zza(zzNb).unlock();
      }
      boolean bool = zzNb.zzil();
      if (bool)
      {
        zzd.zza(zzNb).unlock();
        return;
      }
      zzd.zza(zzNb, true);
      if (zzNb.zzMH == null)
      {
        zzNb.zzMH = new zzd.zzd(zzNb);
        IntentFilter localIntentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        localIntentFilter.addDataScheme("package");
        zzd.zzd(zzNb).getApplicationContext().registerReceiver(zzNb.zzMH, localIntentFilter);
      }
      zzd.zze(zzNb).sendMessageDelayed(zzd.zze(zzNb).obtainMessage(1), zzd.zzf(zzNb));
      zzd.zze(zzNb).sendMessageDelayed(zzd.zze(zzNb).obtainMessage(2), zzd.zzg(zzNb));
      zzd.zza(zzNb, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */