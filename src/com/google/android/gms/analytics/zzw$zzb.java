package com.google.android.gms.analytics;

import com.google.android.gms.internal.zzlv;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class zzw$zzb
  extends TimerTask
{
  private zzw$zzb(zzw paramzzw) {}
  
  public void run()
  {
    if ((zzw.zzb(zzCv) == zzw.zza.zzCy) && (zzw.zze(zzCv).isEmpty()) && (zzw.zzf(zzCv) + zzw.zzg(zzCv) < zzw.zzh(zzCv).elapsedRealtime()))
    {
      zzae.zzab("Disconnecting due to inactivity");
      zzw.zzi(zzCv);
      return;
    }
    zzw.zzj(zzCv).schedule(new zzb(zzCv), zzw.zzg(zzCv));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzw.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */