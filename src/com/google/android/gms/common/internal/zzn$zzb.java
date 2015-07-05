package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.zzlo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class zzn$zzb
{
  private int mState;
  private IBinder zzPp;
  private ComponentName zzQh;
  private final zza zzQi;
  private final Set<ServiceConnection> zzQj;
  private boolean zzQk;
  private final zzn.zza zzQl;
  
  public zzn$zzb(zzn paramzzn, zzn.zza paramzza)
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
    zzn.zzc(zzQm).zza(zzn.zzb(zzQm), paramServiceConnection, paramString, zzQl.zzjj());
    zzQj.add(paramServiceConnection);
  }
  
  public final boolean zza(ServiceConnection paramServiceConnection)
  {
    return zzQj.contains(paramServiceConnection);
  }
  
  public final void zzb(ServiceConnection paramServiceConnection, String paramString)
  {
    zzn.zzc(zzQm).zzb(zzn.zzb(zzQm), paramServiceConnection);
    zzQj.remove(paramServiceConnection);
  }
  
  public final void zzbh(String paramString)
  {
    zzQk = zzn.zzc(zzQm).zza(zzn.zzb(zzQm), paramString, zzQl.zzjj(), zzQi, 129);
    if (zzQk)
    {
      mState = 3;
      return;
    }
    zzn.zzc(zzQm).zza(zzn.zzb(zzQm), zzQi);
  }
  
  public final void zzbi(String paramString)
  {
    zzn.zzc(zzQm).zza(zzn.zzb(zzQm), zzQi);
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
      synchronized (zzn.zza(zzQm))
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
      synchronized (zzn.zza(zzQm))
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

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzn.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */