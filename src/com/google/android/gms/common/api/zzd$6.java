package com.google.android.gms.common.api;

import android.os.Bundle;
import java.util.concurrent.locks.Lock;

class zzd$6
  extends zzd.zzf
{
  zzd$6(zzd paramzzd)
  {
    super(paramzzd, null);
  }
  
  public void onConnected(Bundle paramBundle)
  {
    zzd.zza(zzNb).lock();
    try
    {
      boolean bool = zzNb.isConnecting();
      if (!bool) {
        return;
      }
      if (paramBundle != null) {
        zzd.zzb(zzNb).putAll(paramBundle);
      }
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
 * Qualified Name:     com.google.android.gms.common.api.zzd.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */