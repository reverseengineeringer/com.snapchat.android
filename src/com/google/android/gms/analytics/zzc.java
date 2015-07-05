package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzik;
import com.google.android.gms.internal.zzil;
import com.google.android.gms.internal.zzil.zza;
import com.google.android.gms.internal.zzlo;
import java.util.List;
import java.util.Map;

class zzc
  implements zzb
{
  private Context mContext;
  private ServiceConnection zzAT;
  private zzb zzAU;
  private zzc zzAV;
  private zzil zzAW;
  
  public zzc(Context paramContext, zzb paramzzb, zzc paramzzc)
  {
    mContext = paramContext;
    if (paramzzb == null) {
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    }
    zzAU = paramzzb;
    if (paramzzc == null) {
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    }
    zzAV = paramzzc;
  }
  
  private zzil zzfb()
  {
    zzfc();
    return zzAW;
  }
  
  private void zzfd()
  {
    zzfe();
  }
  
  private void zzfe()
  {
    zzAU.onConnected();
  }
  
  public void connect()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", mContext.getPackageName());
    if (zzAT != null) {
      zzae.zzZ("Calling connect() while still connected, missing disconnect().");
    }
    boolean bool;
    do
    {
      return;
      zzAT = new zza();
      bool = zzlo.zzka().zza(mContext, localIntent, zzAT, 129);
      zzae.zzab("connect: bindService returned " + bool + " for " + localIntent);
    } while (bool);
    zzAT = null;
    zzAV.zza(1, null);
  }
  
  public void disconnect()
  {
    zzAW = null;
    if (zzAT != null) {}
    try
    {
      zzlo.zzka().zza(mContext, zzAT);
      zzAT = null;
      zzAU.onDisconnected();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public boolean isConnected()
  {
    return zzAW != null;
  }
  
  public void zza(Map<String, String> paramMap, long paramLong, String paramString, List<zzik> paramList)
  {
    try
    {
      zzfb().zza(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException paramMap)
    {
      zzae.zzZ("sendHit failed: " + paramMap);
    }
  }
  
  public void zzfa()
  {
    try
    {
      zzfb().zzfa();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzae.zzZ("clear hits failed: " + localRemoteException);
    }
  }
  
  protected void zzfc()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  final class zza
    implements ServiceConnection
  {
    zza() {}
    
    public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      zzae.zzab("service connected, binder: " + paramIBinder);
      try
      {
        if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
        {
          zzae.zzab("bound to service");
          zzc.zza(zzc.this, zzil.zza.zzH(paramIBinder));
          zzc.zza(zzc.this);
          return;
        }
      }
      catch (RemoteException paramComponentName) {}
      try
      {
        zzlo.zzka().zza(zzc.zzb(zzc.this), this);
        zzc.zza(zzc.this, null);
        zzc.zzc(zzc.this).zza(2, null);
        return;
      }
      catch (IllegalArgumentException paramComponentName)
      {
        for (;;) {}
      }
    }
    
    public final void onServiceDisconnected(ComponentName paramComponentName)
    {
      zzae.zzab("service disconnected: " + paramComponentName);
      zzc.zza(zzc.this, null);
      zzc.zzd(zzc.this).onDisconnected();
    }
  }
  
  public static abstract interface zzb
  {
    public abstract void onConnected();
    
    public abstract void onDisconnected();
  }
  
  public static abstract interface zzc
  {
    public abstract void zza(int paramInt, Intent paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */