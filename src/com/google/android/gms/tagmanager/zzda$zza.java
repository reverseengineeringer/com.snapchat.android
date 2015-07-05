package com.google.android.gms.tagmanager;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class zzda$zza
  implements Runnable
{
  private final String zzaBc;
  private final String zzaBd;
  private final long zzaBe;
  private final long zzaBf;
  private long zzaBg;
  private final long zzamf;
  
  zzda$zza(zzda paramzzda, String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    zzaBc = paramString1;
    zzaBd = paramString2;
    zzamf = paramLong1;
    zzaBe = paramLong2;
    zzaBf = System.currentTimeMillis();
  }
  
  public final void run()
  {
    if ((zzaBe > 0L) && (zzaBg >= zzaBe))
    {
      if (!"0".equals(zzaBd)) {
        zzda.zza(zzaBh).remove(zzaBd);
      }
      return;
    }
    zzaBg += 1L;
    if (zzbu())
    {
      long l = System.currentTimeMillis();
      zzda.zzb(zzaBh).push(DataLayer.mapOf(new Object[] { "event", zzaBc, "gtm.timerInterval", String.valueOf(zzamf), "gtm.timerLimit", String.valueOf(zzaBe), "gtm.timerStartTime", String.valueOf(zzaBf), "gtm.timerCurrentTime", String.valueOf(l), "gtm.timerElapsedTime", String.valueOf(l - zzaBf), "gtm.timerEventNumber", String.valueOf(zzaBg), "gtm.triggers", zzaBd }));
    }
    zzda.zzc(zzaBh).postDelayed(this, zzamf);
  }
  
  protected final boolean zzbu()
  {
    if (zzda.zzd(zzaBh)) {
      return zzda.zze(zzaBh);
    }
    Object localObject = (ActivityManager)zzda.zzf(zzaBh).getSystemService("activity");
    KeyguardManager localKeyguardManager = (KeyguardManager)zzda.zzf(zzaBh).getSystemService("keyguard");
    PowerManager localPowerManager = (PowerManager)zzda.zzf(zzaBh).getSystemService("power");
    localObject = ((ActivityManager)localObject).getRunningAppProcesses().iterator();
    while (((Iterator)localObject).hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
      if ((Process.myPid() == pid) && (importance == 100) && (!localKeyguardManager.inKeyguardRestrictedInputMode()) && (localPowerManager.isScreenOn())) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzda.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */