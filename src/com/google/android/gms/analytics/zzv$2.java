package com.google.android.gms.analytics;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.SystemClock;

class zzv$2
  implements Handler.Callback
{
  zzv$2(zzv paramzzv) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (zzv.zzfK().equals(obj)))
    {
      long l = SystemClock.elapsedRealtime();
      if (l >= zzv.zzb(zzCg) + zzv.zzc(zzCg) * 1000)
      {
        zzy.zzfV().zzF(true);
        zzCg.dispatchLocalHits();
        zzy.zzfV().zzF(false);
        zzv.zza(zzCg, l);
      }
      if ((zzv.zzc(zzCg) > 0) && (!zzv.zzd(zzCg))) {
        zzv.zze(zzCg).sendMessageDelayed(zzv.zze(zzCg).obtainMessage(1, zzv.zzfK()), Math.min(60, zzv.zzc(zzCg)) * 1000);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzv.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */