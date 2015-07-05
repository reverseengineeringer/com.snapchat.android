package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;

final class zzhn$3
  implements Callable<T>
{
  zzhn$3(Callable paramCallable) {}
  
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhn.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */