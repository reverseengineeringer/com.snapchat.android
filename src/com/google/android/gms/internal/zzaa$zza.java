package com.google.android.gms.internal;

import android.os.Handler;

public class zzaa$zza
{
  private final Handler mHandler;
  
  public zzaa$zza(Handler paramHandler)
  {
    mHandler = paramHandler;
  }
  
  public boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    return mHandler.postDelayed(paramRunnable, paramLong);
  }
  
  public void removeCallbacks(Runnable paramRunnable)
  {
    mHandler.removeCallbacks(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaa.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */