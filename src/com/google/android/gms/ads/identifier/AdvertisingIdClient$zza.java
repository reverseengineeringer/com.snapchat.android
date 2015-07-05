package com.google.android.gms.ads.identifier;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class AdvertisingIdClient$zza
  extends Thread
{
  private WeakReference<AdvertisingIdClient> zzlt;
  private long zzlu;
  CountDownLatch zzlv;
  boolean zzlw;
  
  public AdvertisingIdClient$zza(AdvertisingIdClient paramAdvertisingIdClient, long paramLong)
  {
    zzlt = new WeakReference(paramAdvertisingIdClient);
    zzlu = paramLong;
    zzlv = new CountDownLatch(1);
    zzlw = false;
    start();
  }
  
  private void disconnect()
  {
    AdvertisingIdClient localAdvertisingIdClient = (AdvertisingIdClient)zzlt.get();
    if (localAdvertisingIdClient != null)
    {
      localAdvertisingIdClient.finish();
      zzlw = true;
    }
  }
  
  public void cancel()
  {
    zzlv.countDown();
  }
  
  public void run()
  {
    try
    {
      if (!zzlv.await(zzlu, TimeUnit.MILLISECONDS)) {
        disconnect();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      disconnect();
    }
  }
  
  public boolean zzaa()
  {
    return zzlw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */