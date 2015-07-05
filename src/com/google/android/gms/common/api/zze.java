package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzx;

public final class zze<L>
{
  private volatile L mListener;
  private final zze<L>.zza zzNk;
  
  zze(Looper paramLooper, L paramL)
  {
    zzNk = new zza(paramLooper);
    mListener = zzx.zzb(paramL, "Listener must not be null");
  }
  
  public final void clear()
  {
    mListener = null;
  }
  
  public final void zza(zzb<? super L> paramzzb)
  {
    zzx.zzb(paramzzb, "Notifier must not be null");
    paramzzb = zzNk.obtainMessage(1, paramzzb);
    zzNk.sendMessage(paramzzb);
  }
  
  final void zzb(zzb<? super L> paramzzb)
  {
    Object localObject = mListener;
    if (localObject == null)
    {
      paramzzb.zzhX();
      return;
    }
    try
    {
      paramzzb.zze(localObject);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramzzb.zzhX();
      throw localRuntimeException;
    }
  }
  
  final class zza
    extends Handler
  {
    public zza(Looper paramLooper)
    {
      super();
    }
    
    public final void handleMessage(Message paramMessage)
    {
      boolean bool = true;
      if (what == 1) {}
      for (;;)
      {
        zzx.zzO(bool);
        zzb((zze.zzb)obj);
        return;
        bool = false;
      }
    }
  }
  
  public static abstract interface zzb<L>
  {
    public abstract void zze(L paramL);
    
    public abstract void zzhX();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */