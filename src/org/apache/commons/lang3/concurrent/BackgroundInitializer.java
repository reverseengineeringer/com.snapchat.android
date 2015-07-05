package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public abstract class BackgroundInitializer<T>
  implements ConcurrentInitializer<T>
{
  private ExecutorService executor;
  private ExecutorService externalExecutor;
  private Future<T> future;
  
  protected BackgroundInitializer()
  {
    this(null);
  }
  
  protected BackgroundInitializer(ExecutorService paramExecutorService)
  {
    setExternalExecutor(paramExecutorService);
  }
  
  private ExecutorService createExecutor()
  {
    return Executors.newFixedThreadPool(getTaskCount());
  }
  
  private Callable<T> createTask(ExecutorService paramExecutorService)
  {
    return new InitializationTask(paramExecutorService);
  }
  
  public T get()
  {
    try
    {
      Object localObject = getFuture().get();
      return (T)localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      ConcurrentUtils.handleCause(localExecutionException);
      return null;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      throw new ConcurrentException(localInterruptedException);
    }
  }
  
  protected final ExecutorService getActiveExecutor()
  {
    try
    {
      ExecutorService localExecutorService = executor;
      return localExecutorService;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final ExecutorService getExternalExecutor()
  {
    try
    {
      ExecutorService localExecutorService = externalExecutor;
      return localExecutorService;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Future<T> getFuture()
  {
    try
    {
      if (future == null) {
        throw new IllegalStateException("start() must be called first!");
      }
    }
    finally {}
    Future localFuture = future;
    return localFuture;
  }
  
  protected int getTaskCount()
  {
    return 1;
  }
  
  protected abstract T initialize();
  
  /* Error */
  public boolean isStarted()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 89	org/apache/commons/lang3/concurrent/BackgroundInitializer:future	Ljava/util/concurrent/Future;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_1
    //   19: goto -6 -> 13
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	BackgroundInitializer
    //   12	7	1	bool	boolean
    //   6	2	2	localFuture	Future
    //   22	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public final void setExternalExecutor(ExecutorService paramExecutorService)
  {
    try
    {
      if (isStarted()) {
        throw new IllegalStateException("Cannot set ExecutorService after start()!");
      }
    }
    finally {}
    externalExecutor = paramExecutorService;
  }
  
  /* Error */
  public boolean start()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 102	org/apache/commons/lang3/concurrent/BackgroundInitializer:isStarted	()Z
    //   6: ifne +57 -> 63
    //   9: aload_0
    //   10: aload_0
    //   11: invokevirtual 107	org/apache/commons/lang3/concurrent/BackgroundInitializer:getExternalExecutor	()Ljava/util/concurrent/ExecutorService;
    //   14: putfield 84	org/apache/commons/lang3/concurrent/BackgroundInitializer:executor	Ljava/util/concurrent/ExecutorService;
    //   17: aload_0
    //   18: getfield 84	org/apache/commons/lang3/concurrent/BackgroundInitializer:executor	Ljava/util/concurrent/ExecutorService;
    //   21: ifnonnull +37 -> 58
    //   24: aload_0
    //   25: invokespecial 109	org/apache/commons/lang3/concurrent/BackgroundInitializer:createExecutor	()Ljava/util/concurrent/ExecutorService;
    //   28: astore_2
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 84	org/apache/commons/lang3/concurrent/BackgroundInitializer:executor	Ljava/util/concurrent/ExecutorService;
    //   34: aload_0
    //   35: aload_0
    //   36: getfield 84	org/apache/commons/lang3/concurrent/BackgroundInitializer:executor	Ljava/util/concurrent/ExecutorService;
    //   39: aload_0
    //   40: aload_2
    //   41: invokespecial 111	org/apache/commons/lang3/concurrent/BackgroundInitializer:createTask	(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Callable;
    //   44: invokeinterface 117 2 0
    //   49: putfield 89	org/apache/commons/lang3/concurrent/BackgroundInitializer:future	Ljava/util/concurrent/Future;
    //   52: iconst_1
    //   53: istore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: iload_1
    //   57: ireturn
    //   58: aconst_null
    //   59: astore_2
    //   60: goto -26 -> 34
    //   63: iconst_0
    //   64: istore_1
    //   65: goto -11 -> 54
    //   68: astore_2
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_2
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	BackgroundInitializer
    //   53	12	1	bool	boolean
    //   28	32	2	localExecutorService	ExecutorService
    //   68	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	34	68	finally
    //   34	52	68	finally
  }
  
  class InitializationTask
    implements Callable<T>
  {
    private final ExecutorService execFinally;
    
    public InitializationTask(ExecutorService paramExecutorService)
    {
      execFinally = paramExecutorService;
    }
    
    public T call()
    {
      try
      {
        Object localObject1 = initialize();
        return (T)localObject1;
      }
      finally
      {
        if (execFinally != null) {
          execFinally.shutdown();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.BackgroundInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */