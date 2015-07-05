package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;

@zzgi
public abstract class zzgb
  extends zzhl
{
  protected final Context mContext;
  protected final zzic zzmu;
  protected final Object zznh = new Object();
  protected final zzgc.zza zzvL;
  protected final Object zzvM = new Object();
  protected final zzhe.zza zzvN;
  protected zzgq zzvO;
  
  protected zzgb(Context paramContext, zzhe.zza paramzza, zzic paramzzic, zzgc.zza paramzza1)
  {
    mContext = paramContext;
    zzvN = paramzza;
    zzvO = zzyz;
    zzmu = paramzzic;
    zzvL = paramzza1;
  }
  
  public void onStop() {}
  
  public void zzdw()
  {
    for (;;)
    {
      int i;
      synchronized (zznh)
      {
        zzhx.zzY("AdRendererBackgroundTask started.");
        i = zzvN.errorCode;
        try
        {
          zzg(SystemClock.elapsedRealtime());
          final zzhe localzzhe = zzt(i);
          zzhw.zzzG.post(new Runnable()
          {
            public void run()
            {
              synchronized (zznh)
              {
                zzh(localzzhe);
                return;
              }
            }
          });
          return;
        }
        catch (zza localzza)
        {
          i = localzza.getErrorCode();
          if (i == 3) {
            continue;
          }
        }
        if (i == -1)
        {
          zzhx.zzaa(localzza.getMessage());
          if (zzvO == null)
          {
            zzvO = new zzgq(i);
            zzhw.zzzG.post(new Runnable()
            {
              public void run()
              {
                onStop();
              }
            });
          }
        }
        else
        {
          zzhx.zzac(localzza.getMessage());
        }
      }
      zzvO = new zzgq(i, zzvO.zzsx);
    }
  }
  
  protected abstract void zzg(long paramLong);
  
  protected void zzh(zzhe paramzzhe)
  {
    zzvL.zza(paramzzhe);
  }
  
  protected zzhe zzt(int paramInt)
  {
    zzgo localzzgo = zzvN.zzyy;
    return new zzhe(zzwn, zzmu, zzvO.zzst, paramInt, zzvO.zzsu, zzvO.zzwK, zzvO.orientation, zzvO.zzsx, zzwq, zzvO.zzwI, null, null, null, null, null, zzvO.zzwJ, zzvN.zzlV, zzvO.zzwH, zzvN.zzyv, zzvO.zzwM, zzvO.zzwN, zzvN.zzys, null, zzwD);
  }
  
  public static final class zza
    extends Exception
  {
    private final int zzvR;
    
    public zza(String paramString, int paramInt)
    {
      super();
      zzvR = paramInt;
    }
    
    public final int getErrorCode()
    {
      return zzvR;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */