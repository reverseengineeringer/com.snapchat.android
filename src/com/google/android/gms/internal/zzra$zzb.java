package com.google.android.gms.internal;

import android.os.Process;

class zzra$zzb
  extends Thread
{
  zzra$zzb(Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, paramString);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzra.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */