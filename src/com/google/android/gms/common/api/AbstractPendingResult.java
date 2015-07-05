package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class AbstractPendingResult<R extends Result>
  implements PendingResult<R>
{
  protected final CallbackHandler<R> mHandler;
  private final Object zzLK = new Object();
  private final ArrayList<PendingResult.BatchCallback> zzLL = new ArrayList();
  private ResultCallback<R> zzLM;
  private volatile R zzLN;
  private volatile boolean zzLO;
  private boolean zzLP;
  private boolean zzLQ;
  private ICancelToken zzLR;
  private final CountDownLatch zzmx = new CountDownLatch(1);
  
  public AbstractPendingResult(Looper paramLooper)
  {
    mHandler = new CallbackHandler(paramLooper);
  }
  
  protected AbstractPendingResult(CallbackHandler<R> paramCallbackHandler)
  {
    mHandler = paramCallbackHandler;
  }
  
  private void zza(R paramR)
  {
    zzLN = paramR;
    zzLR = null;
    zzmx.countDown();
    paramR = zzLN.getStatus();
    if (zzLM != null)
    {
      mHandler.removeTimeoutMessages();
      if (!zzLP) {
        mHandler.sendResultCallback(zzLM, zzhQ());
      }
    }
    Iterator localIterator = zzLL.iterator();
    while (localIterator.hasNext()) {
      ((PendingResult.BatchCallback)localIterator.next()).zzl(paramR);
    }
    zzLL.clear();
  }
  
  static void zzb(Result paramResult)
  {
    if ((paramResult instanceof Releasable)) {}
    try
    {
      ((Releasable)paramResult).release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      new StringBuilder("Unable to release ").append(paramResult);
    }
  }
  
  private R zzhQ()
  {
    boolean bool = true;
    synchronized (zzLK)
    {
      if (!zzLO)
      {
        zzx.zza(bool, "Result has already been consumed.");
        zzx.zza(isReady(), "Result is not ready.");
        Result localResult = zzLN;
        zzLN = null;
        zzLM = null;
        zzLO = true;
        onResultConsumed();
        return localResult;
      }
      bool = false;
    }
  }
  
  private void zzhR()
  {
    synchronized (zzLK)
    {
      if (!isReady())
      {
        setResult(createFailedResult(Status.zzNp));
        zzLQ = true;
      }
      return;
    }
  }
  
  public final void addBatchCallback(PendingResult.BatchCallback paramBatchCallback)
  {
    if (!zzLO) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Result has already been consumed.");
      synchronized (zzLK)
      {
        if (isReady())
        {
          paramBatchCallback.zzl(zzLN.getStatus());
          return;
        }
        zzLL.add(paramBatchCallback);
      }
    }
  }
  
  public final R await()
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    }
    for (;;)
    {
      zzx.zza(bool1, "await must not be called on the UI thread");
      if (!zzLO)
      {
        bool1 = bool2;
        zzx.zza(bool1, "Result has already been consumed");
      }
      try
      {
        zzmx.await();
        zzx.zza(isReady(), "Result is not ready.");
        return zzhQ();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          zzhR();
        }
      }
    }
  }
  
  public final R await(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramLong <= 0L) || (Looper.myLooper() != Looper.getMainLooper())) {
      bool1 = true;
    }
    for (;;)
    {
      zzx.zza(bool1, "await must not be called on the UI thread when time is greater than zero.");
      if (!zzLO)
      {
        bool1 = bool2;
        zzx.zza(bool1, "Result has already been consumed.");
      }
      try
      {
        if (!zzmx.await(paramLong, paramTimeUnit)) {
          zzhS();
        }
        zzx.zza(isReady(), "Result is not ready.");
        return zzhQ();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;)
        {
          zzhR();
        }
      }
    }
  }
  
  public void cancel()
  {
    synchronized (zzLK)
    {
      if ((zzLP) || (zzLO)) {
        return;
      }
      ICancelToken localICancelToken = zzLR;
      if (localICancelToken == null) {}
    }
    try
    {
      zzLR.cancel();
      zzb(zzLN);
      zzLM = null;
      zzLP = true;
      zza(createFailedResult(Status.zzNs));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  public abstract R createFailedResult(Status paramStatus);
  
  public boolean isCanceled()
  {
    synchronized (zzLK)
    {
      boolean bool = zzLP;
      return bool;
    }
  }
  
  public final boolean isReady()
  {
    return zzmx.getCount() == 0L;
  }
  
  protected void onResultConsumed() {}
  
  protected final void setCancelToken(ICancelToken paramICancelToken)
  {
    synchronized (zzLK)
    {
      zzLR = paramICancelToken;
      return;
    }
  }
  
  public final void setResult(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (zzLK)
      {
        if ((zzLQ) || (zzLP))
        {
          zzb(paramR);
          return;
        }
        if (!isReady())
        {
          bool1 = true;
          zzx.zza(bool1, "Results have already been set");
          if (zzLO) {
            break label83;
          }
          bool1 = bool2;
          zzx.zza(bool1, "Result has already been consumed");
          zza(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label83:
      bool1 = false;
    }
  }
  
  public final void setResultCallback(ResultCallback<R> paramResultCallback)
  {
    if (!zzLO) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (zzLK)
        {
          if (isCanceled()) {
            return;
          }
          if (isReady())
          {
            mHandler.sendResultCallback(paramResultCallback, zzhQ());
            return;
          }
        }
        zzLM = paramResultCallback;
      }
    }
  }
  
  public final void setResultCallback(ResultCallback<R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    if (!zzLO)
    {
      bool1 = true;
      zzx.zza(bool1, "Result has already been consumed.");
      if (mHandler == null) {
        break label115;
      }
    }
    label115:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzx.zza(bool1, "CallbackHandler has not been set before calling setResultCallback.");
      for (;;)
      {
        synchronized (zzLK)
        {
          if (isCanceled()) {
            return;
          }
          if (isReady())
          {
            mHandler.sendResultCallback(paramResultCallback, zzhQ());
            return;
          }
        }
        zzLM = paramResultCallback;
        mHandler.sendTimeoutResultCallback(this, paramTimeUnit.toMillis(paramLong));
      }
      bool1 = false;
      break;
    }
  }
  
  void zzhS()
  {
    synchronized (zzLK)
    {
      if (!isReady())
      {
        setResult(createFailedResult(Status.zzNr));
        zzLQ = true;
      }
      return;
    }
  }
  
  public static class CallbackHandler<R extends Result>
    extends Handler
  {
    public static final int CALLBACK_ON_COMPLETE = 1;
    public static final int CALLBACK_ON_TIMEOUT = 2;
    
    public CallbackHandler()
    {
      this(Looper.getMainLooper());
    }
    
    public CallbackHandler(Looper paramLooper)
    {
      super();
    }
    
    protected void deliverResultCallback(ResultCallback<R> paramResultCallback, R paramR)
    {
      try
      {
        paramResultCallback.onResult(paramR);
        return;
      }
      catch (RuntimeException paramResultCallback)
      {
        AbstractPendingResult.zzb(paramR);
        throw paramResultCallback;
      }
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        Log.wtf("AbstractPendingResult", "Don't know how to handle this message.");
        return;
      case 1: 
        paramMessage = (Pair)obj;
        deliverResultCallback((ResultCallback)first, (Result)second);
        return;
      }
      ((AbstractPendingResult)obj).zzhS();
    }
    
    public void removeTimeoutMessages()
    {
      removeMessages(2);
    }
    
    public void sendResultCallback(ResultCallback<R> paramResultCallback, R paramR)
    {
      sendMessage(obtainMessage(1, new Pair(paramResultCallback, paramR)));
    }
    
    public void sendTimeoutResultCallback(AbstractPendingResult<R> paramAbstractPendingResult, long paramLong)
    {
      sendMessageDelayed(obtainMessage(2, paramAbstractPendingResult), paramLong);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.AbstractPendingResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */