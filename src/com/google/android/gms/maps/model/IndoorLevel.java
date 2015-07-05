package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.internal.zzk;

public final class IndoorLevel
{
  private final zzk zzarn;
  
  public IndoorLevel(zzk paramzzk)
  {
    zzarn = ((zzk)zzx.zzl(paramzzk));
  }
  
  public final void activate()
  {
    try
    {
      zzarn.activate();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IndoorLevel)) {
      return false;
    }
    try
    {
      boolean bool = zzarn.zza(zzarn);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public final String getName()
  {
    try
    {
      String str = zzarn.getName();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final String getShortName()
  {
    try
    {
      String str = zzarn.getShortName();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int hashCode()
  {
    try
    {
      int i = zzarn.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.IndoorLevel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */