package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks.CheckResult;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class zzvc$zza$1
  implements Runnable
{
  zzvc$zza$1(zzvc.zza paramzza, List paramList, String paramString, zzva paramzzva) {}
  
  public void run()
  {
    try
    {
      Object localObject = zzvc.zza.zza(zzaxd);
      Set localSet = Collections.unmodifiableSet(new HashSet(zzaxa));
      localObject = ((GoogleApiClient.ServerAuthCodeCallbacks)localObject).onCheckServerAuthorization(zzaxb, localSet);
      localObject = new zzuw(((GoogleApiClient.ServerAuthCodeCallbacks.CheckResult)localObject).zzic(), ((GoogleApiClient.ServerAuthCodeCallbacks.CheckResult)localObject).zzid());
      zzaxc.zza((zzuw)localObject);
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvc.zza.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */