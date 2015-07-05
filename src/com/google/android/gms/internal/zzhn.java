package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@zzgi
public final class zzhn
{
  private static final ThreadFactory zzzk = new ThreadFactory()
  {
    private final AtomicInteger zzzp = new AtomicInteger(1);
    
    public final Thread newThread(Runnable paramAnonymousRunnable)
    {
      return new Thread(paramAnonymousRunnable, "AdWorker #" + zzzp.getAndIncrement());
    }
  };
  private static final ExecutorService zzzl = Executors.newFixedThreadPool(10, zzzk);
  private static final ExecutorService zzzm = Executors.newFixedThreadPool(5, zzzk);
  
  public static <T> Future<T> submit(Callable<T> paramCallable)
  {
    return zza(zzzl, paramCallable);
  }
  
  public static Future<Void> zza(int paramInt, Runnable paramRunnable)
  {
    if (paramInt == 1) {
      zza(zzzm, new Callable()
      {
        public final Void zzer()
        {
          zzzn.run();
          return null;
        }
      });
    }
    zza(zzzl, new Callable()
    {
      public final Void zzer()
      {
        zzzn.run();
        return null;
      }
    });
  }
  
  public static <T> Future<T> zza(ExecutorService paramExecutorService, Callable<T> paramCallable)
  {
    try
    {
      paramExecutorService = paramExecutorService.submit(new Callable()
      {
        public final T call()
        {
          try
          {
            Process.setThreadPriority(10);
            Object localObject = zzzo.call();
            return (T)localObject;
          }
          catch (Exception localException)
          {
            zzab.zzaP().zze(localException);
            throw localException;
          }
        }
      });
      return paramExecutorService;
    }
    catch (RejectedExecutionException paramExecutorService)
    {
      zzhx.zzd("Thread execution is rejected.", paramExecutorService);
    }
    return new zzhr(null);
  }
  
  public static Future<Void> zzb(Runnable paramRunnable)
  {
    return zza(0, paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */