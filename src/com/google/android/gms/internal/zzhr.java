package com.google.android.gms.internal;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@zzgi
public class zzhr<T>
  implements Future<T>
{
  private final T zzzt;
  
  public zzhr(T paramT)
  {
    zzzt = paramT;
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    return false;
  }
  
  public T get()
  {
    return (T)zzzt;
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    return (T)zzzt;
  }
  
  public boolean isCancelled()
  {
    return false;
  }
  
  public boolean isDone()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */