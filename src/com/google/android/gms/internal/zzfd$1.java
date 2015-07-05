package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;

class zzfd$1
  implements Runnable
{
  zzfd$1(zzfd paramzzfd, zzfg paramzzfg, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      if (zzfd.zza(zzve).zza(zzvc.zzvn, -1, zzvd))
      {
        zzfd.zzc(zzve).zza(new zzfh(zzfd.zzb(zzve), zzvc.zzvo, true, -1, zzvd, zzvc));
        return;
      }
      zzfd.zzc(zzve).zza(new zzfh(zzfd.zzb(zzve), zzvc.zzvo, false, -1, zzvd, zzvc));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzac("Fail to verify and dispatch pending transaction");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */