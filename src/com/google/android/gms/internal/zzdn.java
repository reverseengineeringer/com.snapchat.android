package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.dynamic.zze;

@zzgi
public final class zzdn
  implements zzdo.zza
{
  private final Context mContext;
  private final zzdr zzlD;
  private final zzax zzmH;
  private final Object zznh = new Object();
  private final zzhy zznl;
  private final String zzsC;
  private final long zzsD;
  private final zzdj zzsE;
  private final zzba zzsF;
  private zzds zzsG;
  private int zzsH = -2;
  
  public zzdn(Context paramContext, String paramString, zzdr paramzzdr, zzdk paramzzdk, zzdj paramzzdj, zzax paramzzax, zzba paramzzba, zzhy paramzzhy)
  {
    mContext = paramContext;
    zzlD = paramzzdr;
    zzsE = paramzzdj;
    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString))
    {
      zzsC = zzcK();
      if (zzss == -1L) {
        break label106;
      }
    }
    label106:
    for (long l = zzss;; l = 10000L)
    {
      zzsD = l;
      zzmH = paramzzax;
      zzsF = paramzzba;
      zznl = paramzzhy;
      return;
      zzsC = paramString;
      break;
    }
  }
  
  private void zza(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    for (;;)
    {
      if (zzsH != -2) {
        return;
      }
      zzb(paramLong1, paramLong2, paramLong3, paramLong4);
    }
  }
  
  private void zza(zzdm paramzzdm)
  {
    try
    {
      if (zznl.zzzJ < 4100000)
      {
        if (zzsF.zzpb)
        {
          zzsG.zza(zze.zzn(mContext), zzmH, zzsE.zzsq, paramzzdm);
          return;
        }
        zzsG.zza(zze.zzn(mContext), zzsF, zzmH, zzsE.zzsq, paramzzdm);
        return;
      }
    }
    catch (RemoteException paramzzdm)
    {
      zzhx.zzd("Could not request ad from mediation adapter.", paramzzdm);
      zzm(5);
      return;
    }
    if (zzsF.zzpb)
    {
      zzsG.zza(zze.zzn(mContext), zzmH, zzsE.zzsq, zzsE.zzsk, paramzzdm);
      return;
    }
    zzsG.zza(zze.zzn(mContext), zzsF, zzmH, zzsE.zzsq, zzsE.zzsk, paramzzdm);
  }
  
  private void zzb(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    long l = SystemClock.elapsedRealtime();
    paramLong1 = paramLong2 - (l - paramLong1);
    paramLong2 = paramLong4 - (l - paramLong3);
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L))
    {
      zzhx.zzaa("Timed out waiting for adapter.");
      zzsH = 3;
      return;
    }
    try
    {
      zznh.wait(Math.min(paramLong1, paramLong2));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      zzsH = -1;
    }
  }
  
  private String zzcK()
  {
    try
    {
      if (!TextUtils.isEmpty(zzsE.zzso))
      {
        if (zzlD.zzC(zzsE.zzso)) {
          return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
      }
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzac("Fail to determine the custom event's version, assuming the old one.");
    }
    return "com.google.ads.mediation.customevent.CustomEventAdapter";
  }
  
  private zzds zzcL()
  {
    zzhx.zzaa("Instantiating mediation adapter: " + zzsC);
    try
    {
      zzds localzzds = zzlD.zzB(zzsC);
      return localzzds;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zza("Could not instantiate mediation adapter: " + zzsC, localRemoteException);
    }
    return null;
  }
  
  public final void cancel()
  {
    synchronized (zznh)
    {
      try
      {
        if (zzsG != null) {
          zzsG.destroy();
        }
        zzsH = -1;
        zznh.notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          zzhx.zzd("Could not destroy mediation adapter.", localRemoteException);
        }
      }
    }
  }
  
  public final zzdo zzb(long paramLong1, long paramLong2)
  {
    synchronized (zznh)
    {
      long l = SystemClock.elapsedRealtime();
      final Object localObject2 = new zzdm();
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          synchronized (zzdn.zza(zzdn.this))
          {
            if (zzdn.zzb(zzdn.this) != -2) {
              return;
            }
            zzdn.zza(zzdn.this, zzdn.zzc(zzdn.this));
            if (zzdn.zzd(zzdn.this) == null)
            {
              zzm(4);
              return;
            }
          }
          localObject2.zza(zzdn.this);
          zzdn.zza(zzdn.this, localObject2);
        }
      });
      zza(l, zzsD, paramLong1, paramLong2);
      localObject2 = new zzdo(zzsE, zzsG, zzsC, (zzdm)localObject2, zzsH);
      return (zzdo)localObject2;
    }
  }
  
  public final void zzm(int paramInt)
  {
    synchronized (zznh)
    {
      zzsH = paramInt;
      zznh.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */