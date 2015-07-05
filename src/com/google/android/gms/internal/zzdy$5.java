package com.google.android.gms.internal;

import android.os.RemoteException;
import bt.a;

class zzdy$5
  implements Runnable
{
  zzdy$5(zzdy paramzzdy, bt.a parama) {}
  
  public void run()
  {
    try
    {
      zzdy.zza(zzsV).onAdFailedToLoad(zzdz.zza(zzsW));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdy.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */