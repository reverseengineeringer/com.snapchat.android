package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@zzgi
public class zzib<T>
  implements zzia<T>
{
  private final Object zznh = new Object();
  protected int zzrX = 0;
  protected final BlockingQueue<zzib<T>.zza> zzzL = new LinkedBlockingQueue();
  protected T zzzM;
  
  public int getStatus()
  {
    return zzrX;
  }
  
  public void reject()
  {
    synchronized (zznh)
    {
      if (zzrX != 0) {
        throw new UnsupportedOperationException();
      }
    }
    zzrX = -1;
    Iterator localIterator = zzzL.iterator();
    while (localIterator.hasNext()) {
      nextzzzO.run();
    }
  }
  
  public void zza(zzia.zzd<T> paramzzd, zzia.zza paramzza)
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzrX == 1)
        {
          paramzzd.zza(zzzM);
          return;
        }
        if (zzrX == -1) {
          paramzza.run();
        }
      }
      if (zzrX == 0) {
        zzzL.add(new zza(paramzzd, paramzza));
      }
    }
  }
  
  public void zzc(T paramT)
  {
    synchronized (zznh)
    {
      if (zzrX != 0) {
        throw new UnsupportedOperationException();
      }
    }
    zzzM = paramT;
    zzrX = 1;
    Iterator localIterator = zzzL.iterator();
    while (localIterator.hasNext()) {
      nextzzzN.zza(paramT);
    }
  }
  
  class zza
  {
    public final zzia.zzd<T> zzzN;
    public final zzia.zza zzzO;
    
    public zza(zzia.zza paramzza)
    {
      zzzN = paramzza;
      zzia.zza localzza;
      zzzO = localzza;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */