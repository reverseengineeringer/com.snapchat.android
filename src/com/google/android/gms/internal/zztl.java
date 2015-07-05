package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;

public class zztl
  extends zzk<zzte>
{
  private final String zzFO;
  private final zzti zzauc;
  private final zztg zzaud;
  private boolean zzaue;
  private final Object zznh;
  
  public zztl(Context paramContext, Looper paramLooper, zzti paramzzti, zzf paramzzf)
  {
    super(paramContext, paramLooper, 24, paramzzti, paramzzti, paramzzf);
    zzFO = paramContext.getPackageName();
    zzauc = ((zzti)zzx.zzl(paramzzti));
    zzauc.zza(this);
    zzaud = new zztg();
    zznh = new Object();
    zzaue = true;
  }
  
  private void zzc(zztj paramzztj, zztf paramzztf)
  {
    zzaud.zza(paramzztj, paramzztf);
  }
  
  private void zzd(zztj paramzztj, zztf paramzztf)
  {
    try
    {
      zzrI();
      ((zzte)zzjb()).zza(zzFO, paramzztj, paramzztf);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzc(paramzztj, paramzztf);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      zzc(paramzztj, paramzztf);
    }
  }
  
  private void zzrI()
  {
    if (!zzaue) {}
    for (boolean bool = true;; bool = false)
    {
      zzb.zzN(bool);
      if (!zzaud.isEmpty()) {
        try
        {
          ArrayList localArrayList = new ArrayList();
          Iterator localIterator = zzaud.zzrG().iterator();
          Object localObject = null;
          while (localIterator.hasNext())
          {
            zztg.zza localzza = (zztg.zza)localIterator.next();
            if (zzatT != null)
            {
              ((zzte)zzjb()).zza(zzFO, zzatR, zzwy.zzf(zzatT));
            }
            else if (zzatR.equals(localObject))
            {
              localArrayList.add(zzatS);
            }
            else
            {
              if (!localArrayList.isEmpty())
              {
                ((zzte)zzjb()).zza(zzFO, (zztj)localObject, localArrayList);
                localArrayList.clear();
              }
              localObject = zzatR;
              localArrayList.add(zzatS);
            }
          }
          if (!localArrayList.isEmpty()) {
            ((zzte)zzjb()).zza(zzFO, (zztj)localObject, localArrayList);
          }
          zzaud.clear();
          return;
        }
        catch (RemoteException localRemoteException) {}
      }
      return;
    }
  }
  
  public void start()
  {
    synchronized (zznh)
    {
      if ((isConnecting()) || (isConnected())) {
        return;
      }
      zzauc.zzad(true);
      connect();
      return;
    }
  }
  
  public void stop()
  {
    synchronized (zznh)
    {
      zzauc.zzad(false);
      disconnect();
      return;
    }
  }
  
  void zzae(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      boolean bool = zzaue;
      zzaue = paramBoolean;
      if ((bool) && (!zzaue)) {
        zzrI();
      }
      return;
    }
  }
  
  public void zzb(zztj paramzztj, zztf paramzztf)
  {
    synchronized (zznh)
    {
      if (zzaue)
      {
        zzc(paramzztj, paramzztf);
        return;
      }
      zzd(paramzztj, paramzztf);
    }
  }
  
  protected String zzcF()
  {
    return "com.google.android.gms.playlog.service.START";
  }
  
  protected String zzcG()
  {
    return "com.google.android.gms.playlog.internal.IPlayLogService";
  }
  
  protected zzte zzcv(IBinder paramIBinder)
  {
    return zzte.zza.zzcu(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */