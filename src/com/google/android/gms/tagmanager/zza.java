package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import java.io.IOException;

class zza
{
  private static Object zzaxj = new Object();
  private static zza zzaxk;
  private volatile boolean mClosed = false;
  private final Context mContext;
  private volatile AdvertisingIdClient.Info zzAO;
  private volatile long zzaxf = 900000L;
  private volatile long zzaxg = 30000L;
  private volatile long zzaxh;
  private zza zzaxi = new zza()
  {
    public AdvertisingIdClient.Info zzsC()
    {
      try
      {
        AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza.zza(zza.this));
        return localInfo;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        zzbf.zzac("IllegalStateException getting Advertising Id Info");
        return null;
      }
      catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
      {
        zzbf.zzac("GooglePlayServicesRepairableException getting Advertising Id Info");
        return null;
      }
      catch (IOException localIOException)
      {
        zzbf.zzac("IOException getting Ad Id Info");
        return null;
      }
      catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
      {
        zzbf.zzac("GooglePlayServicesNotAvailableException getting Advertising Id Info");
        return null;
      }
      catch (Exception localException)
      {
        zzbf.zzac("Unknown exception. Could not get the Advertising Id Info.");
      }
      return null;
    }
  };
  private final zzlv zzmW;
  private final Thread zzzi;
  
  private zza(Context paramContext)
  {
    this(paramContext, null, zzlx.zzkc());
  }
  
  zza(Context paramContext, zza paramzza, zzlv paramzzlv)
  {
    zzmW = paramzzlv;
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      if (paramzza != null) {
        zzaxi = paramzza;
      }
      zzzi = new Thread(new Runnable()
      {
        public void run()
        {
          zza.zzb(zza.this);
        }
      });
      return;
    }
  }
  
  static zza zzaj(Context paramContext)
  {
    if (zzaxk == null) {}
    synchronized (zzaxj)
    {
      if (zzaxk == null)
      {
        paramContext = new zza(paramContext);
        zzaxk = paramContext;
        paramContext.start();
      }
      return zzaxk;
    }
  }
  
  private void zzsA()
  {
    Process.setThreadPriority(10);
    while (!mClosed) {
      try
      {
        zzAO = zzaxi.zzsC();
        Thread.sleep(zzaxf);
      }
      catch (InterruptedException localInterruptedException)
      {
        zzbf.zzaa("sleep interrupted in AdvertiserDataPoller thread; continuing");
      }
    }
  }
  
  private void zzsB()
  {
    if (zzmW.currentTimeMillis() - zzaxh < zzaxg) {
      return;
    }
    interrupt();
    zzaxh = zzmW.currentTimeMillis();
  }
  
  void interrupt()
  {
    zzzi.interrupt();
  }
  
  public boolean isLimitAdTrackingEnabled()
  {
    zzsB();
    if (zzAO == null) {
      return true;
    }
    return zzAO.isLimitAdTrackingEnabled();
  }
  
  void start()
  {
    zzzi.start();
  }
  
  public String zzsz()
  {
    zzsB();
    if (zzAO == null) {
      return null;
    }
    return zzAO.getId();
  }
  
  public static abstract interface zza
  {
    public abstract AdvertisingIdClient.Info zzsC();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */