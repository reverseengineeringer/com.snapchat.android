package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import java.util.Iterator;
import java.util.List;

@zzgi
public final class zzdi
{
  private final Context mContext;
  private final zzdr zzlD;
  private final Object zznh = new Object();
  private final zzgo zzse;
  private final zzdk zzsf;
  private boolean zzsg = false;
  private zzdn zzsh;
  
  public zzdi(Context paramContext, zzgo paramzzgo, zzdr paramzzdr, zzdk paramzzdk)
  {
    mContext = paramContext;
    zzse = paramzzgo;
    zzlD = paramzzdr;
    zzsf = paramzzdk;
  }
  
  public final void cancel()
  {
    synchronized (zznh)
    {
      zzsg = true;
      if (zzsh != null) {
        zzsh.cancel();
      }
      return;
    }
  }
  
  public final zzdo zza(long paramLong1, long paramLong2)
  {
    zzhx.zzY("Starting mediation.");
    Object localObject2 = zzsf.zzsr.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      zzdj localzzdj = (zzdj)((Iterator)localObject2).next();
      zzhx.zzaa("Trying mediation network: " + zzsl);
      Iterator localIterator = zzsm.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        synchronized (zznh)
        {
          if (zzsg)
          {
            localObject2 = new zzdo(-1);
            return (zzdo)localObject2;
          }
          zzsh = new zzdn(mContext, str, zzlD, zzsf, localzzdj, zzse.zzwn, zzse.zzlV, zzse.zzlP);
          ??? = zzsh.zzb(paramLong1, paramLong2);
          if (zzsK == 0)
          {
            zzhx.zzY("Adapter succeeded.");
            return (zzdo)???;
          }
        }
        if (zzsM != null) {
          zzhw.zzzG.post(new Runnable()
          {
            public void run()
            {
              try
              {
                localObject1zzsM.destroy();
                return;
              }
              catch (RemoteException localRemoteException)
              {
                zzhx.zzd("Could not destroy mediation adapter.", localRemoteException);
              }
            }
          });
        }
      }
    }
    return new zzdo(1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */