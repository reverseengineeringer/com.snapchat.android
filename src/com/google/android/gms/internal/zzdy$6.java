package com.google.android.gms.internal;

import android.os.RemoteException;

class zzdy$6
  implements Runnable
{
  zzdy$6(zzdy paramzzdy) {}
  
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
 * Qualified Name:     com.google.android.gms.internal.zzdy.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */