package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;

class zzd$13
  implements Runnable
{
  zzd$13(zzd paramzzd, ConnectionResult paramConnectionResult) {}
  
  public void run()
  {
    zzd.zza(zzNb).lock();
    try
    {
      if (!zzd.zzd(zzNb, zzNi)) {
        break label186;
      }
      zzd.zze(zzNb, false);
      Iterator localIterator = zzd.zzp(zzNb).iterator();
      while (localIterator.hasNext())
      {
        Api.zzc localzzc = (Api.zzc)localIterator.next();
        Api.zza localzza = (Api.zza)zzd.zzq(zzNb).get(localzzc);
        if (localzza.isConnected()) {
          localzza.disconnect();
        }
        if (!zzd.zzm(zzNb).containsKey(localzzc)) {
          zzd.zzm(zzNb).put(localzzc, new ConnectionResult(17, null));
        }
      }
      zzd.zze(zzNb, true);
    }
    finally
    {
      zzd.zza(zzNb).unlock();
    }
    zzd.zzr(zzNb);
    for (;;)
    {
      zzd.zza(zzNb).unlock();
      return;
      label186:
      zzd.zze(zzNb, zzNi);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */