package com.snapchat.android.util;

import android.os.Handler;
import android.os.Looper;

public class WaitDoneHandler
  extends Handler
{
  private static final String TAG = "WaitDoneHandler";
  
  public WaitDoneHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public boolean waitDone()
  {
    final Object localObject1 = new Object();
    Runnable local1 = new Runnable()
    {
      public final void run()
      {
        synchronized (localObject1) {}
      }
    };
    try
    {
      post(local1);
      return true;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.WaitDoneHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */