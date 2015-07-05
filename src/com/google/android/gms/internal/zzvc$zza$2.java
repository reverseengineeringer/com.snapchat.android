package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks;

class zzvc$zza$2
  implements Runnable
{
  zzvc$zza$2(zzvc.zza paramzza, String paramString1, String paramString2, zzva paramzzva) {}
  
  public void run()
  {
    try
    {
      boolean bool = zzvc.zza.zza(zzaxd).onUploadServerAuthCode(zzaxb, zzaxe);
      zzaxc.zzaf(bool);
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvc.zza.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */