package com.google.android.gms.internal;

import java.util.TimerTask;

class zzdf$4
  extends TimerTask
{
  zzdf$4(zzdf paramzzdf, zzia paramzzia) {}
  
  public void run()
  {
    synchronized (zzdf.zza(zzrZ))
    {
      if ((zzrY.getStatus() == -1) || (zzrY.getStatus() == 1)) {
        return;
      }
      zzdf.zza(zzrZ, 1);
      zzrY.reject();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdf.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */