package com.google.android.gms.internal;

import java.util.Timer;
import java.util.TimerTask;

class zzdf$1
  implements zzah.zza
{
  zzdf$1(zzdf paramzzdf, zzia paramzzia) {}
  
  public void zzbk()
  {
    new Timer().schedule(new TimerTask()
    {
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
    }, zzdf.zza.zzsd);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */