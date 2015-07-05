package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

class BackgroundInitializer$InitializationTask
  implements Callable<T>
{
  private final ExecutorService execFinally;
  
  public BackgroundInitializer$InitializationTask(BackgroundInitializer paramBackgroundInitializer, ExecutorService paramExecutorService)
  {
    execFinally = paramExecutorService;
  }
  
  public T call()
  {
    try
    {
      Object localObject1 = this$0.initialize();
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

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.BackgroundInitializer.InitializationTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */