package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public class CallableBackgroundInitializer<T>
  extends BackgroundInitializer<T>
{
  private final Callable<T> callable;
  
  public CallableBackgroundInitializer(Callable<T> paramCallable)
  {
    checkCallable(paramCallable);
    callable = paramCallable;
  }
  
  public CallableBackgroundInitializer(Callable<T> paramCallable, ExecutorService paramExecutorService)
  {
    super(paramExecutorService);
    checkCallable(paramCallable);
    callable = paramCallable;
  }
  
  private void checkCallable(Callable<T> paramCallable)
  {
    if (paramCallable == null) {
      throw new IllegalArgumentException("Callable must not be null!");
    }
  }
  
  protected T initialize()
  {
    return (T)callable.call();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.CallableBackgroundInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */