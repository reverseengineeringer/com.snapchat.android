package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.zzd;
import com.google.android.gms.location.zzd.zza;
import com.google.android.gms.location.zze;
import com.google.android.gms.location.zze.zza;
import com.google.android.gms.location.zzh;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class zzpe
{
  private final Context mContext;
  private Map<LocationListener, zzb> zzZH = new HashMap();
  private ContentProviderClient zzamS = null;
  private boolean zzamT = false;
  private Map<Object, zzc> zzamU = new HashMap();
  private final zzpm<zzpc> zzamz;
  
  public zzpe(Context paramContext, zzpm<zzpc> paramzzpm)
  {
    mContext = paramContext;
    zzamz = paramzzpm;
  }
  
  private zzb zza(LocationListener paramLocationListener, Looper paramLooper)
  {
    if (paramLooper == null) {
      zzx.zzb(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    }
    synchronized (zzZH)
    {
      zzb localzzb2 = (zzb)zzZH.get(paramLocationListener);
      zzb localzzb1 = localzzb2;
      if (localzzb2 == null) {
        localzzb1 = new zzb(paramLocationListener, paramLooper);
      }
      zzZH.put(paramLocationListener, localzzb1);
      return localzzb1;
    }
  }
  
  public void removeAllListeners()
  {
    Object localObject2;
    try
    {
      synchronized (zzZH)
      {
        Iterator localIterator1 = zzZH.values().iterator();
        while (localIterator1.hasNext())
        {
          localObject2 = (zzb)localIterator1.next();
          if (localObject2 != null) {
            ((zzpc)zzamz.zzjb()).zza(zzpi.zzb((zzd)localObject2));
          }
        }
      }
      zzZH.clear();
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
    Iterator localIterator2 = zzamU.values().iterator();
    while (localIterator2.hasNext())
    {
      localObject2 = (zzc)localIterator2.next();
      if (localObject2 != null) {
        ((zzpc)zzamz.zzjb()).zza(zzpi.zza((zze)localObject2));
      }
    }
    zzamU.clear();
  }
  
  public void zzW(boolean paramBoolean)
  {
    zzamz.zzfc();
    ((zzpc)zzamz.zzjb()).zzW(paramBoolean);
    zzamT = paramBoolean;
  }
  
  public void zza(LocationListener paramLocationListener)
  {
    zzamz.zzfc();
    zzx.zzb(paramLocationListener, "Invalid null listener");
    synchronized (zzZH)
    {
      paramLocationListener = (zzb)zzZH.remove(paramLocationListener);
      if ((zzamS != null) && (zzZH.isEmpty()))
      {
        zzamS.release();
        zzamS = null;
      }
      if (paramLocationListener != null)
      {
        paramLocationListener.release();
        ((zzpc)zzamz.zzjb()).zza(zzpi.zzb(paramLocationListener));
      }
      return;
    }
  }
  
  public void zza(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    zzamz.zzfc();
    paramLocationListener = zza(paramLocationListener, paramLooper);
    ((zzpc)zzamz.zzjb()).zza(zzpi.zzb(zzpg.zzb(paramLocationRequest), paramLocationListener));
  }
  
  public void zzb(Location paramLocation)
  {
    zzamz.zzfc();
    ((zzpc)zzamz.zzjb()).zzb(paramLocation);
  }
  
  public void zzb(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    zzamz.zzfc();
    ((zzpc)zzamz.zzjb()).zza(zzpi.zzb(zzpg.zzb(paramLocationRequest), paramPendingIntent));
  }
  
  public void zzd(PendingIntent paramPendingIntent)
  {
    zzamz.zzfc();
    ((zzpc)zzamz.zzjb()).zza(zzpi.zze(paramPendingIntent));
  }
  
  public Location zzpx()
  {
    zzamz.zzfc();
    try
    {
      Location localLocation = ((zzpc)zzamz.zzjb()).zzcj(mContext.getPackageName());
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void zzpy()
  {
    if (zzamT) {}
    try
    {
      zzW(false);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  static class zza
    extends Handler
  {
    private final LocationListener zzamV;
    
    public zza(LocationListener paramLocationListener)
    {
      zzamV = paramLocationListener;
    }
    
    public zza(LocationListener paramLocationListener, Looper paramLooper)
    {
      super();
      zzamV = paramLocationListener;
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        return;
      }
      paramMessage = new Location((Location)obj);
      zzamV.onLocationChanged(paramMessage);
    }
  }
  
  static class zzb
    extends zzd.zza
  {
    private Handler zzamW;
    
    zzb(LocationListener paramLocationListener, Looper paramLooper)
    {
      if (paramLooper == null) {}
      for (paramLocationListener = new zzpe.zza(paramLocationListener);; paramLocationListener = new zzpe.zza(paramLocationListener, paramLooper))
      {
        zzamW = paramLocationListener;
        return;
      }
    }
    
    public void onLocationChanged(Location paramLocation)
    {
      if (zzamW == null) {
        return;
      }
      Message localMessage = Message.obtain();
      what = 1;
      obj = paramLocation;
      zzamW.sendMessage(localMessage);
    }
    
    public void release()
    {
      zzamW = null;
    }
  }
  
  static class zzc
    extends zze.zza
  {
    private Handler zzamW;
    
    public void zza(zzh paramzzh)
    {
      if (zzamW == null) {
        return;
      }
      Message localMessage = Message.obtain();
      obj = paramzzh;
      zzamW.sendMessage(localMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */