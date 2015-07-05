package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks.CheckResult;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

class zzvc$zza
  extends zzuy.zza
{
  private final zzus zzPr;
  private final ExecutorService zzawZ;
  
  public zzvc$zza(zzus paramzzus, ExecutorService paramExecutorService)
  {
    zzPr = paramzzus;
    zzawZ = paramExecutorService;
  }
  
  private GoogleApiClient.ServerAuthCodeCallbacks zzsx()
  {
    return zzPr.zzsx();
  }
  
  public void zza(final String paramString1, final String paramString2, final zzva paramzzva)
  {
    zzawZ.submit(new Runnable()
    {
      public void run()
      {
        try
        {
          boolean bool = zzvc.zza.zza(zzvc.zza.this).onUploadServerAuthCode(paramString1, paramString2);
          paramzzva.zzaf(bool);
          return;
        }
        catch (RemoteException localRemoteException) {}
      }
    });
  }
  
  public void zza(final String paramString, final List<Scope> paramList, final zzva paramzzva)
  {
    zzawZ.submit(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject = zzvc.zza.zza(zzvc.zza.this);
          Set localSet = Collections.unmodifiableSet(new HashSet(paramList));
          localObject = ((GoogleApiClient.ServerAuthCodeCallbacks)localObject).onCheckServerAuthorization(paramString, localSet);
          localObject = new zzuw(((GoogleApiClient.ServerAuthCodeCallbacks.CheckResult)localObject).zzic(), ((GoogleApiClient.ServerAuthCodeCallbacks.CheckResult)localObject).zzid());
          paramzzva.zza((zzuw)localObject);
          return;
        }
        catch (RemoteException localRemoteException) {}
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvc.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */