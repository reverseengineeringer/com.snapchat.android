package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class do
{
  private static do a;
  private final Context b;
  private final Handler c;
  private final Handler d;
  
  private do(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new Handler(Looper.getMainLooper());
    paramContext = new HandlerThread("FlurryAgent");
    paramContext.start();
    d = new Handler(paramContext.getLooper());
  }
  
  public static do a()
  {
    return a;
  }
  
  public static void a(Context paramContext)
  {
    for (;;)
    {
      try
      {
        do localdo = a;
        if (localdo != null) {
          return;
        }
        if (paramContext == null) {
          throw new IllegalArgumentException("Context cannot be null");
        }
      }
      finally {}
      a = new do(paramContext);
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    c.post(paramRunnable);
  }
  
  public void a(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null) {
      return;
    }
    c.postDelayed(paramRunnable, paramLong);
  }
  
  public Context b()
  {
    return b;
  }
  
  public void b(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    c.removeCallbacks(paramRunnable);
  }
  
  public void b(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null) {
      return;
    }
    d.postDelayed(paramRunnable, paramLong);
  }
  
  public PackageManager c()
  {
    return b.getPackageManager();
  }
  
  public void c(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    d.post(paramRunnable);
  }
  
  public void d(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    d.removeCallbacks(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */