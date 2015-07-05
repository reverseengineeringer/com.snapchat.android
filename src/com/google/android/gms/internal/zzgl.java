package com.google.android.gms.internal;

import android.content.Context;

@zzgi
public final class zzgl
{
  public static zzhl zza(Context paramContext, zzgo paramzzgo, zza paramzza)
  {
    zza(paramContext, paramzzgo, paramzza, new zzb()
    {
      public final boolean zzc(zzgo paramAnonymouszzgo)
      {
        return zzlP.zzzK;
      }
    });
  }
  
  static zzhl zza(Context paramContext, zzgo paramzzgo, zza paramzza, zzb paramzzb)
  {
    if (paramzzb.zzc(paramzzgo)) {
      return zzb(paramContext, paramzzgo, paramzza);
    }
    return zzc(paramContext, paramzzgo, paramzza);
  }
  
  private static zzhl zzb(Context paramContext, zzgo paramzzgo, zza paramzza)
  {
    zzhx.zzY("Fetching ad response from local ad request service.");
    paramContext = new zzgm.zza(paramContext, paramzzgo, paramzza);
    paramContext.start();
    return paramContext;
  }
  
  private static zzhl zzc(Context paramContext, zzgo paramzzgo, zza paramzza)
  {
    zzhx.zzY("Fetching ad response from remote ad request service.");
    if (!zzbe.zzbD().zzA(paramContext))
    {
      zzhx.zzac("Failed to connect to remote ad request service.");
      return null;
    }
    return new zzgm.zzb(paramContext, paramzzgo, paramzza);
  }
  
  public static abstract interface zza
  {
    public abstract void zzb(zzgq paramzzgq);
  }
  
  static abstract interface zzb
  {
    public abstract boolean zzc(zzgo paramzzgo);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */