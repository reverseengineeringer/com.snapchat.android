package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

class zzra$zza
  implements ThreadFactory
{
  private static final AtomicInteger zzasg = new AtomicInteger();
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new zzra.zzb(paramRunnable, "measurement-" + zzasg.incrementAndGet());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzra.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */