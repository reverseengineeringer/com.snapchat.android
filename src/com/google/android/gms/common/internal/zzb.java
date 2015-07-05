package com.google.android.gms.common.internal;

import android.os.Looper;

public final class zzb
{
  public static void zzN(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalStateException();
    }
  }
  
  public static void zza(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.valueOf(paramObject));
    }
  }
  
  public static void zzbd(String paramString)
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
    {
      new StringBuilder("checkMainThread: current thread ").append(Thread.currentThread()).append(" IS NOT the main thread ").append(Looper.getMainLooper().getThread()).append("!");
      throw new IllegalStateException(paramString);
    }
  }
  
  public static void zzbe(String paramString)
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread())
    {
      new StringBuilder("checkNotMainThread: current thread ").append(Thread.currentThread()).append(" IS the main thread ").append(Looper.getMainLooper().getThread()).append("!");
      throw new IllegalStateException(paramString);
    }
  }
  
  public static void zzh(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("null reference");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */