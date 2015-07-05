package com.google.android.gms.common.api;

import android.os.Looper;

final class PendingResults$zzb<R extends Result>
  extends AbstractPendingResult<R>
{
  public PendingResults$zzb()
  {
    super(Looper.getMainLooper());
  }
  
  protected final R createFailedResult(Status paramStatus)
  {
    throw new UnsupportedOperationException("Creating failed results is not supported");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.PendingResults.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */