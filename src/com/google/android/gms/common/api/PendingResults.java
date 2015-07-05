package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzx;

public final class PendingResults
{
  public static PendingResult<Status> canceledPendingResult()
  {
    zzg localzzg = new zzg(Looper.getMainLooper());
    localzzg.cancel();
    return localzzg;
  }
  
  public static <R extends Result> PendingResult<R> canceledPendingResult(R paramR)
  {
    zzx.zzb(paramR, "Result must not be null");
    if (paramR.getStatus().getStatusCode() == 16) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Status code must be CommonStatusCodes.CANCELED");
      paramR = new zza(paramR);
      paramR.cancel();
      return paramR;
    }
  }
  
  public static <R extends Result> PendingResult<R> immediatePendingResult(R paramR)
  {
    zzx.zzb(paramR, "Result must not be null");
    zzb localzzb = new zzb();
    localzzb.setResult(paramR);
    return localzzb;
  }
  
  public static PendingResult<Status> immediatePendingResult(Status paramStatus)
  {
    zzx.zzb(paramStatus, "Result must not be null");
    zzg localzzg = new zzg(Looper.getMainLooper());
    localzzg.setResult(paramStatus);
    return localzzg;
  }
  
  static final class zza<R extends Result>
    extends AbstractPendingResult<R>
  {
    private final R zzNm;
    
    public zza(R paramR)
    {
      super();
      zzNm = paramR;
    }
    
    protected final R createFailedResult(Status paramStatus)
    {
      if (paramStatus.getStatusCode() != zzNm.getStatus().getStatusCode()) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
      }
      return zzNm;
    }
  }
  
  static final class zzb<R extends Result>
    extends AbstractPendingResult<R>
  {
    public zzb()
    {
      super();
    }
    
    protected final R createFailedResult(Status paramStatus)
    {
      throw new UnsupportedOperationException("Creating failed results is not supported");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.PendingResults
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */