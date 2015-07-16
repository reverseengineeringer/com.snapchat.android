package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class TimedSemaphore
{
  public static final int NO_LIMIT = 0;
  private static final int THREAD_POOL_SIZE = 1;
  private int acquireCount;
  private final ScheduledExecutorService executorService;
  private int lastCallsPerPeriod;
  private int limit;
  private final boolean ownExecutor;
  private final long period;
  private long periodCount;
  private boolean shutdown;
  private ScheduledFuture<?> task;
  private long totalAcquireCount;
  private final TimeUnit unit;
  
  public TimedSemaphore(long paramLong, TimeUnit paramTimeUnit, int paramInt)
  {
    this(null, paramLong, paramTimeUnit, paramInt);
  }
  
  public TimedSemaphore(ScheduledExecutorService paramScheduledExecutorService, long paramLong, TimeUnit paramTimeUnit, int paramInt)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("Time period must be greater 0!");
    }
    period = paramLong;
    unit = paramTimeUnit;
    if (paramScheduledExecutorService != null) {
      executorService = paramScheduledExecutorService;
    }
    for (ownExecutor = false;; ownExecutor = true)
    {
      setLimit(paramInt);
      return;
      paramScheduledExecutorService = new ScheduledThreadPoolExecutor(1);
      paramScheduledExecutorService.setContinueExistingPeriodicTasksAfterShutdownPolicy(false);
      paramScheduledExecutorService.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
      executorService = paramScheduledExecutorService;
    }
  }
  
  public void acquire()
  {
    try
    {
      if (isShutdown()) {
        throw new IllegalStateException("TimedSemaphore is shut down!");
      }
    }
    finally {}
    if (task == null) {
      task = startTimer();
    }
    if (getLimit() > 0) {
      if (acquireCount < getLimit()) {
        break label86;
      }
    }
    for (;;)
    {
      if (i != 0) {
        acquireCount += 1;
      }
      if (i == 0) {
        break;
      }
      return;
      int i = 0;
      continue;
      label86:
      i = 1;
    }
  }
  
  void endOfPeriod()
  {
    try
    {
      lastCallsPerPeriod = acquireCount;
      totalAcquireCount += acquireCount;
      periodCount += 1L;
      acquireCount = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getAcquireCount()
  {
    try
    {
      int i = acquireCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getAvailablePermits()
  {
    try
    {
      int i = getLimit();
      int j = getAcquireCount();
      return i - j;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public double getAverageCallsPerPeriod()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 96	org/apache/commons/lang3/concurrent/TimedSemaphore:periodCount	J
    //   6: lstore_3
    //   7: lload_3
    //   8: lconst_0
    //   9: lcmp
    //   10: ifne +9 -> 19
    //   13: dconst_0
    //   14: dstore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: dload_1
    //   18: dreturn
    //   19: aload_0
    //   20: getfield 94	org/apache/commons/lang3/concurrent/TimedSemaphore:totalAcquireCount	J
    //   23: l2d
    //   24: dstore_1
    //   25: aload_0
    //   26: getfield 96	org/apache/commons/lang3/concurrent/TimedSemaphore:periodCount	J
    //   29: lstore_3
    //   30: dload_1
    //   31: lload_3
    //   32: l2d
    //   33: ddiv
    //   34: dstore_1
    //   35: goto -20 -> 15
    //   38: astore 5
    //   40: aload_0
    //   41: monitorexit
    //   42: aload 5
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	TimedSemaphore
    //   14	21	1	d	double
    //   6	26	3	l	long
    //   38	5	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	38	finally
    //   19	30	38	finally
  }
  
  protected ScheduledExecutorService getExecutorService()
  {
    return executorService;
  }
  
  public int getLastAcquiresPerPeriod()
  {
    try
    {
      int i = lastCallsPerPeriod;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int getLimit()
  {
    try
    {
      int i = limit;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long getPeriod()
  {
    return period;
  }
  
  public TimeUnit getUnit()
  {
    return unit;
  }
  
  public boolean isShutdown()
  {
    try
    {
      boolean bool = shutdown;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void setLimit(int paramInt)
  {
    try
    {
      limit = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void shutdown()
  {
    try
    {
      if (!shutdown)
      {
        if (ownExecutor) {
          getExecutorService().shutdownNow();
        }
        if (task != null) {
          task.cancel(false);
        }
        shutdown = true;
      }
      return;
    }
    finally {}
  }
  
  protected ScheduledFuture<?> startTimer()
  {
    getExecutorService().scheduleAtFixedRate(new Runnable()
    {
      public void run()
      {
        endOfPeriod();
      }
    }, getPeriod(), getPeriod(), getUnit());
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.TimedSemaphore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */