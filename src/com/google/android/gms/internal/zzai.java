package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.concurrent.Future;

@zzgi
public class zzai
{
  protected zzah zza(final Context paramContext, zzhy paramzzhy, final zzhq<zzah> paramzzhq)
  {
    paramContext = new zzaj(paramContext, paramzzhy);
    paramContext.zza(new zzah.zza()
    {
      public void zzbk()
      {
        paramzzhq.zzb(paramContext);
      }
    });
    return paramContext;
  }
  
  public Future<zzah> zza(final Context paramContext, final zzhy paramzzhy, final String paramString)
  {
    final zzhq localzzhq = new zzhq();
    zzhw.zzzG.post(new Runnable()
    {
      public void run()
      {
        zza(paramContext, paramzzhy, localzzhq).zzg(paramString);
      }
    });
    return localzzhq;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */