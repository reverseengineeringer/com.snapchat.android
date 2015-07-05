package com.google.android.gms.internal;

import android.os.RemoteException;

class zzdy$1
  implements Runnable
{
  zzdy$1(zzdy paramzzdy) {}
  
  public void run()
  {
    try
    {
      zzdy.zza(zzsV).onAdClicked();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call onAdClicked.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */