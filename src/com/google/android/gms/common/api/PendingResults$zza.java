package com.google.android.gms.common.api;

import android.os.Looper;

final class PendingResults$zza<R extends Result>
  extends AbstractPendingResult<R>
{
  private final R zzNm;
  
  public PendingResults$zza(R paramR)
  {
    super(Looper.getMainLooper());
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

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.PendingResults.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */