package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzgi
public class zzhq<T>
  implements Future<T>
{
  private final Object zznh = new Object();
  private boolean zzsg = false;
  private T zzzt = null;
  private boolean zzzu = false;
  
  public boolean cancel(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return false;
    }
    synchronized (zznh)
    {
      if (zzzu) {
        return false;
      }
    }
    zzsg = true;
    zzzu = true;
    return true;
  }
  
  public T get()
  {
    synchronized (zznh)
    {
      if (zzsg) {
        throw new CancellationException("CallbackFuture was cancelled.");
      }
    }
    Object localObject3 = zzzt;
    return (T)localObject3;
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    synchronized (zznh)
    {
      boolean bool = zzzu;
      if (bool) {}
    }
    try
    {
      paramTimeUnit.toMillis(paramLong);
      if (!zzzu)
      {
        throw new TimeoutException("CallbackFuture timed out.");
        paramTimeUnit = finally;
        throw paramTimeUnit;
      }
      if (zzsg) {
        throw new CancellationException("CallbackFuture was cancelled.");
      }
      paramTimeUnit = zzzt;
      return paramTimeUnit;
    }
    catch (InterruptedException paramTimeUnit)
    {
      for (;;) {}
    }
  }
  
  public boolean isCancelled()
  {
    synchronized (zznh)
    {
      boolean bool = zzsg;
      return bool;
    }
  }
  
  public boolean isDone()
  {
    synchronized (zznh)
    {
      boolean bool = zzzu;
      return bool;
    }
  }
  
  public void zzb(T paramT)
  {
    synchronized (zznh)
    {
      if (zzzu) {
        throw new IllegalStateException("Provided CallbackFuture with multiple values.");
      }
    }
    zzzu = true;
    zzzt = paramT;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */