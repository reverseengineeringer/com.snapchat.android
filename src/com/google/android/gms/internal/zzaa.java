package com.google.android.gms.internal;

import android.os.Handler;
import java.lang.ref.WeakReference;

@zzgi
public class zzaa
{
  private final zza zzmF;
  private final Runnable zzmG;
  private zzax zzmH;
  private boolean zzmI = false;
  private boolean zzmJ = false;
  private long zzmK = 0L;
  
  public zzaa(zzt paramzzt)
  {
    this(paramzzt, new zza(zzhw.zzzG));
  }
  
  zzaa(zzt paramzzt, zza paramzza)
  {
    zzmF = paramzza;
    zzmG = new Runnable()
    {
      public void run()
      {
        zzaa.zza(zzaa.this, false);
        zzt localzzt = (zzt)zzmL.get();
        if (localzzt != null) {
          localzzt.zzb(zzaa.zza(zzaa.this));
        }
      }
    };
  }
  
  public void cancel()
  {
    zzmI = false;
    zzmF.removeCallbacks(zzmG);
  }
  
  public void pause()
  {
    zzmJ = true;
    if (zzmI) {
      zzmF.removeCallbacks(zzmG);
    }
  }
  
  public void resume()
  {
    zzmJ = false;
    if (zzmI)
    {
      zzmI = false;
      zza(zzmH, zzmK);
    }
  }
  
  public void zza(zzax paramzzax, long paramLong)
  {
    if (zzmI) {
      zzhx.zzac("An ad refresh is already scheduled.");
    }
    do
    {
      return;
      zzmH = paramzzax;
      zzmI = true;
      zzmK = paramLong;
    } while (zzmJ);
    zzhx.zzaa("Scheduling ad refresh " + paramLong + " milliseconds from now.");
    zzmF.postDelayed(zzmG, paramLong);
  }
  
  public boolean zzaG()
  {
    return zzmI;
  }
  
  public void zzc(zzax paramzzax)
  {
    zza(paramzzax, 60000L);
  }
  
  public static class zza
  {
    private final Handler mHandler;
    
    public zza(Handler paramHandler)
    {
      mHandler = paramHandler;
    }
    
    public boolean postDelayed(Runnable paramRunnable, long paramLong)
    {
      return mHandler.postDelayed(paramRunnable, paramLong);
    }
    
    public void removeCallbacks(Runnable paramRunnable)
    {
      mHandler.removeCallbacks(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */