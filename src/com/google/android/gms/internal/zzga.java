package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;

@zzgi
public class zzga
  extends zzfy
{
  zzga(Context paramContext, zzhe.zza paramzza, zzic paramzzic, zzgc.zza paramzza1)
  {
    super(paramContext, paramzza, paramzzic, paramzza1);
  }
  
  protected void zzg(long paramLong)
  {
    final Object localObject = zzmu.zzad();
    int j;
    if (zzpb) {
      j = mContext.getResources().getDisplayMetrics().widthPixels;
    }
    for (int i = mContext.getResources().getDisplayMetrics().heightPixels;; i = heightPixels)
    {
      localObject = new zzfz(this, zzmu, j, i);
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          synchronized (zznh)
          {
            if (zzvO.errorCode != -2) {
              return;
            }
            zzmu.zzeG().zza(zzga.this);
            localObject.zza(zzvO);
            return;
          }
        }
      });
      zzf(paramLong);
      if (!((zzfz)localObject).zzdE()) {
        break;
      }
      zzhx.zzY("Ad-Network indicated no fill with passback URL.");
      throw new zzgb.zza("AdNetwork sent passback url", 3);
      j = widthPixels;
    }
    if (!((zzfz)localObject).zzdF()) {
      throw new zzgb.zza("AdNetwork timed out", 2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */