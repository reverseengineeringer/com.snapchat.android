package com.google.android.gms.maps.model;

import android.os.RemoteException;

public final class RuntimeRemoteException
  extends RuntimeException
{
  public RuntimeRemoteException(RemoteException paramRemoteException)
  {
    super(paramRemoteException);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.RuntimeRemoteException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */