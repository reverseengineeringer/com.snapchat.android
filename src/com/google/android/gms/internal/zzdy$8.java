package com.google.android.gms.internal;

import android.os.RemoteException;

class zzdy$8
  implements Runnable
{
  zzdy$8(zzdy paramzzdy) {}
  
  public void run()
  {
    try
    {
      zzdy.zza(zzsV).onAdLoaded();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call onAdLoaded.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdy.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */