package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;

@zzgi
public class zzgd
  extends zzfy
{
  zzgd(Context paramContext, zzhe.zza paramzza, zzic paramzzic, zzgc.zza paramzza1)
  {
    super(paramContext, paramzza, paramzzic, paramzza1);
  }
  
  protected void zzdG() {}
  
  protected void zzg(long paramLong)
  {
    zzhw.zzzG.post(new Runnable()
    {
      public void run()
      {
        synchronized (zznh)
        {
          if (zzvO.errorCode != -2) {
            return;
          }
          zzmu.zzeG().zza(zzgd.this);
          zzdG();
          zzhx.zzab("Loading HTML in WebView.");
          zzmu.loadDataWithBaseURL(zzab.zzaM().zzS(zzvO.zzus), zzvO.zzwG, "text/html", "UTF-8", null);
          return;
        }
      }
    });
    zzf(paramLong);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */