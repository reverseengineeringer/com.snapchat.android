package com.google.android.gms.common.api;

import java.util.concurrent.TimeUnit;

public abstract interface PendingResult<R extends Result>
{
  public abstract void addBatchCallback(BatchCallback paramBatchCallback);
  
  public abstract R await();
  
  public abstract R await(long paramLong, TimeUnit paramTimeUnit);
  
  public abstract void cancel();
  
  public abstract boolean isCanceled();
  
  public abstract void setResultCallback(ResultCallback<R> paramResultCallback);
  
  public abstract void setResultCallback(ResultCallback<R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit);
  
  public static abstract interface BatchCallback
  {
    public abstract void zzl(Status paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.PendingResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */