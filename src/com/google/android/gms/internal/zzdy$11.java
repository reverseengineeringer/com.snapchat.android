package com.google.android.gms.internal;

import android.os.RemoteException;

class zzdy$11
  implements Runnable
{
  zzdy$11(zzdy paramzzdy) {}
  
  public void run()
  {
    try
    {
      zzdy.zza(zzsV).onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdy.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */