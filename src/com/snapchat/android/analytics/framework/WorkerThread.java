package com.snapchat.android.analytics.framework;

import android.os.Handler;
import android.os.HandlerThread;

class WorkerThread
  extends HandlerThread
{
  private Handler a;
  
  public WorkerThread(String paramString)
  {
    super(paramString, 10);
  }
  
  private void a()
  {
    try
    {
      if (a == null) {
        a = new Handler(getLooper());
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void a(Runnable paramRunnable)
  {
    a();
    a.post(paramRunnable);
  }
  
  final void a(Runnable paramRunnable, long paramLong)
  {
    a();
    a.postDelayed(paramRunnable, paramLong);
  }
  
  final void b(Runnable paramRunnable)
  {
    a();
    a.removeCallbacks(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.WorkerThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */