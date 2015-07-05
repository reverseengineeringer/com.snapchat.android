package com.google.android.gms.internal;

import android.os.RemoteException;

class zzdy$7
  implements Runnable
{
  zzdy$7(zzdy paramzzdy) {}
  
  public void run()
  {
    try
    {
      zzdy.zza(zzsV).onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call onAdOpened.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdy.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */