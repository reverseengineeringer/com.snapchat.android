package com.google.android.gms.internal;

import android.os.RemoteException;

class zzdi$1
  implements Runnable
{
  zzdi$1(zzdi paramzzdi, zzdo paramzzdo) {}
  
  public void run()
  {
    try
    {
      zzsi.zzsM.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not destroy mediation adapter.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */