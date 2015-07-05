package com.google.android.gms.internal;

import java.util.TimerTask;

class zzdf$1$1
  extends TimerTask
{
  zzdf$1$1(zzdf.1 param1) {}
  
  public void run()
  {
    synchronized (zzdf.zza(zzsa.zzrZ))
    {
      if ((zzsa.zzrY.getStatus() == -1) || (zzsa.zzrY.getStatus() == 1)) {
        return;
      }
      zzdf.zza(zzsa.zzrZ, 1);
      zzsa.zzrY.reject();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdf.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */