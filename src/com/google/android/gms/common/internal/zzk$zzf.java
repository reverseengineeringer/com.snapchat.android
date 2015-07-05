package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;

public final class zzk$zzf
  extends zzk<T>.zza
{
  public final IBinder zzPW;
  
  public zzk$zzf(zzk paramzzk, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramzzk, paramInt, paramBundle);
    zzPW = paramIBinder;
  }
  
  protected final boolean zzje()
  {
    try
    {
      Object localObject = zzPW.getInterfaceDescriptor();
      if (!zzPT.zzcG().equals(localObject)) {}
      do
      {
        return false;
        localObject = zzPT.zzp(zzPW);
      } while ((localObject == null) || (!zzk.zza(zzPT, 2, 3, (IInterface)localObject)));
      zzk.zza(zzPT).zzfe();
      GooglePlayServicesUtil.zzL(zzk.zze(zzPT));
      return true;
    }
    catch (RemoteException localRemoteException) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */