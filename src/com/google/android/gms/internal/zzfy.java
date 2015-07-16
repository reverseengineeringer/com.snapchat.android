package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;

@zzgi
public abstract class zzfy
  extends zzgb
  implements zzid.zza
{
  private boolean zzsg = false;
  private final zzid zzvy;
  protected boolean zzvz = false;
  
  protected zzfy(Context paramContext, zzhe.zza paramzza, zzic paramzzic, zzgc.zza paramzza1)
  {
    super(paramContext, paramzza, paramzzic, paramzza1);
    zzvy = paramzzic.zzeG();
  }
  
  private boolean zzd(long paramLong)
  {
    return 60000L - (SystemClock.elapsedRealtime() - paramLong) > 1L;
  }
  
  public void onStop()
  {
    synchronized (zzvM)
    {
      zzmu.stopLoading();
      zzab.zzaO().zza(zzmu.getWebView());
      return;
    }
  }
  
  public void zza(zzic arg1, boolean paramBoolean)
  {
    boolean bool = true;
    for (;;)
    {
      synchronized (zznh)
      {
        zzhx.zzY("WebView finished loading.");
        zzvz = true;
        if (!paramBoolean)
        {
          paramBoolean = bool;
          zzsg = paramBoolean;
          return;
        }
      }
      paramBoolean = false;
    }
  }
  
  protected void zzf(long paramLong)
  {
    do
    {
      if (!zzd(paramLong)) {
        throw new zzgb.zza("Timed out waiting for WebView to finish loading.", 2);
      }
      if (zzsg) {
        throw new zzgb.zza("Received cancellation request from creative.", 0);
      }
    } while (!zzvz);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */