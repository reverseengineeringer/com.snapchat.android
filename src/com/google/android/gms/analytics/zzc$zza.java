package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzil.zza;
import com.google.android.gms.internal.zzlo;

final class zzc$zza
  implements ServiceConnection
{
  zzc$zza(zzc paramzzc) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    zzae.zzab("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        zzae.zzab("bound to service");
        zzc.zza(zzAX, zzil.zza.zzH(paramIBinder));
        zzc.zza(zzAX);
        return;
      }
    }
    catch (RemoteException paramComponentName) {}
    try
    {
      zzlo.zzka().zza(zzc.zzb(zzAX), this);
      zzc.zza(zzAX, null);
      zzc.zzc(zzAX).zza(2, null);
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
    zzc.zza(zzAX, null);
    zzc.zzd(zzAX).onDisconnected();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzc.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */