package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.internal.zzlo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class zzn
  extends zzm
  implements Handler.Callback
{
  private final Handler mHandler;
  private final HashMap<zza, zzb> zzQe = new HashMap();
  private final zzlo zzQf;
  private final long zzQg;
  private final Context zznk;
  
  zzn(Context paramContext)
  {
    zznk = paramContext.getApplicationContext();
    mHandler = new Handler(paramContext.getMainLooper(), this);
    zzQf = zzlo.zzka();
    zzQg = 5000L;
  }
  
  private boolean zza(zza paramzza, ServiceConnection paramServiceConnection, String paramString)
  {
    zzx.zzb(paramServiceConnection, "ServiceConnection must not be null");
    for (;;)
    {
      zzb localzzb;
      synchronized (zzQe)
      {
        localzzb = (zzb)zzQe.get(paramzza);
        if (localzzb == null)
        {
          localzzb = new zzb(paramzza);
          localzzb.zza(paramServiceConnection, paramString);
          localzzb.zzbh(paramString);
          zzQe.put(paramzza, localzzb);
          paramzza = localzzb;
          boolean bool = paramzza.isBound();
          return bool;
        }
        mHandler.removeMessages(0, localzzb);
        if (localzzb.zza(paramServiceConnection)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + paramzza);
        }
      }
      localzzb.zza(paramServiceConnection, paramString);
      switch (localzzb.getState())
      {
      case 1: 
        paramServiceConnection.onServiceConnected(localzzb.getComponentName(), localzzb.getBinder());
        paramzza = localzzb;
        break;
      case 2: 
        localzzb.zzbh(paramString);
        paramzza = localzzb;
        break;
      default: 
        paramzza = localzzb;
      }
    }
  }
  
  private void zzb(zza paramzza, ServiceConnection paramServiceConnection, String paramString)
  {
    zzx.zzb(paramServiceConnection, "ServiceConnection must not be null");
    zzb localzzb;
    synchronized (zzQe)
    {
      localzzb = (zzb)zzQe.get(paramzza);
      if (localzzb == null) {
        throw new IllegalStateException("Nonexistent connection status for service config: " + paramzza);
      }
    }
    if (!localzzb.zza(paramServiceConnection))
    {
      new StringBuilder("Trying to unbind a GmsServiceConnection that was not bound before. config=").append(paramzza);
      return;
    }
    localzzb.zzb(paramServiceConnection, paramString);
    if (localzzb.zzjk())
    {
      paramzza = mHandler.obtainMessage(0, localzzb);
      mHandler.sendMessageDelayed(paramzza, zzQg);
    }
  }
  
  public final boolean handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return false;
    }
    zzb localzzb = (zzb)obj;
    synchronized (zzQe)
    {
      if (localzzb.zzjk())
      {
        if (localzzb.isBound()) {
          localzzb.zzbi("GmsClientSupervisor");
        }
        zzQe.remove(zzb.zza(localzzb));
      }
      return true;
    }
  }
  
  public final boolean zza(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString)
  {
    return zza(new zza(paramComponentName), paramServiceConnection, paramString);
  }
  
  public final boolean zza(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    return zza(new zza(paramString1), paramServiceConnection, paramString2);
  }
  
  public final void zzb(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString)
  {
    zzb(new zza(paramComponentName), paramServiceConnection, paramString);
  }
  
  public final void zzb(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    zzb(new zza(paramString1), paramServiceConnection, paramString2);
  }
  
  static final class zza
  {
    private final ComponentName zzQh;
    private final String zzrc;
    
    public zza(ComponentName paramComponentName)
    {
      zzrc = null;
      zzQh = ((ComponentName)zzx.zzl(paramComponentName));
    }
    
    public zza(String paramString)
    {
      zzrc = zzx.zzbn(paramString);
      zzQh = null;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof zza)) {
          return false;
        }
        paramObject = (zza)paramObject;
      } while ((zzw.equal(zzrc, zzrc)) && (zzw.equal(zzQh, zzQh)));
      return false;
    }
    
    public final int hashCode()
    {
      return zzw.hashCode(new Object[] { zzrc, zzQh });
    }
    
    public final String toString()
    {
      if (zzrc == null) {
        return zzQh.flattenToString();
      }
      return zzrc;
    }
    
    public final Intent zzjj()
    {
      if (zzrc != null) {
        return new Intent(zzrc).setPackage("com.google.android.gms");
      }
      return new Intent().setComponent(zzQh);
    }
  }
  
  final class zzb
  {
    private int mState;
    private IBinder zzPp;
    private ComponentName zzQh;
    private final zza zzQi;
    private final Set<ServiceConnection> zzQj;
    private boolean zzQk;
    private final zzn.zza zzQl;
    
    public zzb(zzn.zza paramzza)
    {
      zzQl = paramzza;
      zzQi = new zza();
      zzQj = new HashSet();
      mState = 2;
    }
    
    public final IBinder getBinder()
    {
      return zzPp;
    }
    
    public final ComponentName getComponentName()
    {
      return zzQh;
    }
    
    public final int getState()
    {
      return mState;
    }
    
    public final boolean isBound()
    {
      return zzQk;
    }
    
    public final void zza(ServiceConnection paramServiceConnection, String paramString)
    {
      zzn.zzc(zzn.this).zza(zzn.zzb(zzn.this), paramServiceConnection, paramString, zzQl.zzjj());
      zzQj.add(paramServiceConnection);
    }
    
    public final boolean zza(ServiceConnection paramServiceConnection)
    {
      return zzQj.contains(paramServiceConnection);
    }
    
    public final void zzb(ServiceConnection paramServiceConnection, String paramString)
    {
      zzn.zzc(zzn.this).zzb(zzn.zzb(zzn.this), paramServiceConnection);
      zzQj.remove(paramServiceConnection);
    }
    
    public final void zzbh(String paramString)
    {
      zzQk = zzn.zzc(zzn.this).zza(zzn.zzb(zzn.this), paramString, zzQl.zzjj(), zzQi, 129);
      if (zzQk)
      {
        mState = 3;
        return;
      }
      zzn.zzc(zzn.this).zza(zzn.zzb(zzn.this), zzQi);
    }
    
    public final void zzbi(String paramString)
    {
      zzn.zzc(zzn.this).zza(zzn.zzb(zzn.this), zzQi);
      zzQk = false;
      mState = 2;
    }
    
    public final boolean zzjk()
    {
      return zzQj.isEmpty();
    }
    
    public class zza
      implements ServiceConnection
    {
      public zza() {}
      
      public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
      {
        synchronized (zzn.zza(zzn.this))
        {
          zzn.zzb.zza(zzn.zzb.this, paramIBinder);
          zzn.zzb.zza(zzn.zzb.this, paramComponentName);
          Iterator localIterator = zzn.zzb.zzb(zzn.zzb.this).iterator();
          if (localIterator.hasNext()) {
            ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
          }
        }
        zzn.zzb.zza(zzn.zzb.this, 1);
      }
      
      public void onServiceDisconnected(ComponentName paramComponentName)
      {
        synchronized (zzn.zza(zzn.this))
        {
          zzn.zzb.zza(zzn.zzb.this, null);
          zzn.zzb.zza(zzn.zzb.this, paramComponentName);
          Iterator localIterator = zzn.zzb.zzb(zzn.zzb.this).iterator();
          if (localIterator.hasNext()) {
            ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
          }
        }
        zzn.zzb.zza(zzn.zzb.this, 2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */