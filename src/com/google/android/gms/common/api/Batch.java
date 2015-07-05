package com.google.android.gms.common.api;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

public final class Batch
  extends AbstractPendingResult<BatchResult>
{
  private int zzLW;
  private boolean zzLX;
  private boolean zzLY;
  private final PendingResult<?>[] zzLZ;
  private final Object zznh = new Object();
  
  private Batch(List<PendingResult<?>> paramList, Looper paramLooper)
  {
    super(new AbstractPendingResult.CallbackHandler(paramLooper));
    zzLW = paramList.size();
    zzLZ = new PendingResult[zzLW];
    int i = 0;
    while (i < paramList.size())
    {
      paramLooper = (PendingResult)paramList.get(i);
      zzLZ[i] = paramLooper;
      paramLooper.addBatchCallback(new PendingResult.BatchCallback()
      {
        public void zzl(Status paramAnonymousStatus)
        {
          for (;;)
          {
            synchronized (Batch.zza(Batch.this))
            {
              if (isCanceled()) {
                return;
              }
              if (paramAnonymousStatus.isCanceled())
              {
                Batch.zza(Batch.this, true);
                Batch.zzb(Batch.this);
                if (Batch.zzc(Batch.this) == 0)
                {
                  if (!Batch.zzd(Batch.this)) {
                    break;
                  }
                  Batch.zze(Batch.this);
                }
                return;
              }
            }
            if (!paramAnonymousStatus.isSuccess()) {
              Batch.zzb(Batch.this, true);
            }
          }
          if (Batch.zzf(Batch.this)) {}
          for (paramAnonymousStatus = new Status(13);; paramAnonymousStatus = Status.zzNo)
          {
            setResult(new BatchResult(paramAnonymousStatus, Batch.zzg(Batch.this)));
            break;
          }
        }
      });
      i += 1;
    }
  }
  
  public final void cancel()
  {
    super.cancel();
    PendingResult[] arrayOfPendingResult = zzLZ;
    int j = arrayOfPendingResult.length;
    int i = 0;
    while (i < j)
    {
      arrayOfPendingResult[i].cancel();
      i += 1;
    }
  }
  
  public final BatchResult createFailedResult(Status paramStatus)
  {
    return new BatchResult(paramStatus, zzLZ);
  }
  
  public static final class Builder
  {
    private List<PendingResult<?>> zzMb = new ArrayList();
    private Looper zzMc;
    
    public Builder(GoogleApiClient paramGoogleApiClient)
    {
      zzMc = paramGoogleApiClient.getLooper();
    }
    
    public final <R extends Result> BatchResultToken<R> add(PendingResult<R> paramPendingResult)
    {
      BatchResultToken localBatchResultToken = new BatchResultToken(zzMb.size());
      zzMb.add(paramPendingResult);
      return localBatchResultToken;
    }
    
    public final Batch build()
    {
      return new Batch(zzMb, zzMc, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */