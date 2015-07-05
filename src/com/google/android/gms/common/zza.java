package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class zza
  implements ServiceConnection
{
  boolean zzLp = false;
  private final BlockingQueue<IBinder> zzLq = new LinkedBlockingQueue();
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    zzLq.add(paramIBinder);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
  
  public IBinder zzhJ()
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("BlockingServiceConnection.getService() called on main thread");
    }
    if (zzLp) {
      throw new IllegalStateException();
    }
    zzLp = true;
    return (IBinder)zzLq.take();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */