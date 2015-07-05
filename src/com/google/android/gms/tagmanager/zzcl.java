package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzc.zzj;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class zzcl
  implements zzo.zze
{
  private boolean mClosed;
  private final Context mContext;
  private final ScheduledExecutorService zzasc;
  private String zzaxT;
  private final String zzaxw;
  private zzbe<zzc.zzj> zzazN;
  private zzr zzazO;
  private final zza zzazQ;
  private ScheduledFuture<?> zzazR;
  
  public zzcl(Context paramContext, String paramString, zzr paramzzr)
  {
    this(paramContext, paramString, paramzzr, null, null);
  }
  
  zzcl(Context paramContext, String paramString, zzr paramzzr, zzb paramzzb, zza paramzza)
  {
    zzazO = paramzzr;
    mContext = paramContext;
    zzaxw = paramString;
    paramContext = paramzzb;
    if (paramzzb == null) {
      paramContext = new zzb()
      {
        public ScheduledExecutorService zztE()
        {
          return Executors.newSingleThreadScheduledExecutor();
        }
      };
    }
    zzasc = paramContext.zztE();
    if (paramzza == null)
    {
      zzazQ = new zza()
      {
        public zzck zza(zzr paramAnonymouszzr)
        {
          return new zzck(zzcl.zza(zzcl.this), zzcl.zzb(zzcl.this), paramAnonymouszzr);
        }
      };
      return;
    }
    zzazQ = paramzza;
  }
  
  private zzck zzdh(String paramString)
  {
    zzck localzzck = zzazQ.zza(zzazO);
    localzzck.zza(zzazN);
    localzzck.zzcT(zzaxT);
    localzzck.zzdg(paramString);
    return localzzck;
  }
  
  private void zztD()
  {
    try
    {
      if (mClosed) {
        throw new IllegalStateException("called method after closed");
      }
    }
    finally {}
  }
  
  public void release()
  {
    try
    {
      zztD();
      if (zzazR != null) {
        zzazR.cancel(false);
      }
      zzasc.shutdown();
      mClosed = true;
      return;
    }
    finally {}
  }
  
  public void zza(zzbe<zzc.zzj> paramzzbe)
  {
    try
    {
      zztD();
      zzazN = paramzzbe;
      return;
    }
    finally
    {
      paramzzbe = finally;
      throw paramzzbe;
    }
  }
  
  public void zzcT(String paramString)
  {
    try
    {
      zztD();
      zzaxT = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void zze(long paramLong, String paramString)
  {
    try
    {
      zzbf.zzab("loadAfterDelay: containerId=" + zzaxw + " delay=" + paramLong);
      zztD();
      if (zzazN == null) {
        throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
      }
    }
    finally {}
    if (zzazR != null) {
      zzazR.cancel(false);
    }
    zzazR = zzasc.schedule(zzdh(paramString), paramLong, TimeUnit.MILLISECONDS);
  }
  
  static abstract interface zza
  {
    public abstract zzck zza(zzr paramzzr);
  }
  
  static abstract interface zzb
  {
    public abstract ScheduledExecutorService zztE();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */