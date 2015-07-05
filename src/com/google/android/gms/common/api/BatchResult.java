package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.TimeUnit;

public final class BatchResult
  implements Result
{
  private final Status zzHb;
  private final PendingResult<?>[] zzLZ;
  
  BatchResult(Status paramStatus, PendingResult<?>[] paramArrayOfPendingResult)
  {
    zzHb = paramStatus;
    zzLZ = paramArrayOfPendingResult;
  }
  
  public final Status getStatus()
  {
    return zzHb;
  }
  
  public final <R extends Result> R take(BatchResultToken<R> paramBatchResultToken)
  {
    if (mId < zzLZ.length) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "The result token does not belong to this batch");
      return zzLZ[mId].await(0L, TimeUnit.MILLISECONDS);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BatchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */