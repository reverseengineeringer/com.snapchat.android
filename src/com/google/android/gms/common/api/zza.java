package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.atomic.AtomicReference;

public class zza
{
  public static abstract class zza<R extends Result, A extends Api.zza>
    extends AbstractPendingResult<R>
    implements zza.zzb<R>, zzd.zzg<A>
  {
    private final Api.zzc<A> zzLT;
    private AtomicReference<zzd.zze> zzLV = new AtomicReference();
    
    public zza(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
    {
      super();
      zzLT = ((Api.zzc)zzx.zzl(paramzzc));
    }
    
    private void zza(RemoteException paramRemoteException)
    {
      zzk(new Status(8, paramRemoteException.getLocalizedMessage(), null));
    }
    
    protected void onResultConsumed()
    {
      zzd.zze localzze = (zzd.zze)zzLV.getAndSet(null);
      if (localzze != null) {
        localzze.zzb(this);
      }
    }
    
    public abstract void zza(A paramA);
    
    public void zza(zzd.zze paramzze)
    {
      zzLV.set(paramzze);
    }
    
    public final void zzb(A paramA)
    {
      try
      {
        zza(paramA);
        return;
      }
      catch (DeadObjectException paramA)
      {
        zza(paramA);
        throw paramA;
      }
      catch (RemoteException paramA)
      {
        zza(paramA);
      }
    }
    
    public final Api.zzc<A> zzhV()
    {
      return zzLT;
    }
    
    public int zzhW()
    {
      return 0;
    }
    
    public final void zzk(Status paramStatus)
    {
      if (!paramStatus.isSuccess()) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zzb(bool, "Failed result must not be success");
        setResult(createFailedResult(paramStatus));
        return;
      }
    }
  }
  
  public static abstract interface zzb<R>
  {
    public abstract void zzd(R paramR);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */