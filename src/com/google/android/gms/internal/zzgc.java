package com.google.android.gms.internal;

import android.content.Context;

@zzgi
public class zzgc
{
  public zzhl zza(Context paramContext, zzt paramzzt, zzhe.zza paramzza, zzic paramzzic, zzdr paramzzdr, zza paramzza1)
  {
    zzgq localzzgq = zzyz;
    if (zzwS) {
      paramContext = new zzgg(paramContext, paramzzt, new zzai(), paramzza, paramzza1);
    }
    for (;;)
    {
      paramContext.start();
      return paramContext;
      if (zzwI) {
        paramContext = new zzgf(paramContext, paramzza, paramzzic, paramzzdr, paramzza1);
      } else if (zzwO) {
        paramContext = new zzga(paramContext, paramzza, paramzzic, paramzza1);
      } else if ((((Boolean)zzca.zzqI.get()).booleanValue()) && (zzme.zzkj()) && (!zzme.zzkk()) && (zzadzzpb)) {
        paramContext = new zzge(paramContext, paramzza, paramzzic, paramzza1);
      } else {
        paramContext = new zzgd(paramContext, paramzza, paramzzic, paramzza1);
      }
    }
  }
  
  public static abstract interface zza
  {
    public abstract void zza(zzhe paramzzhe);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */