package org.apache.http.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.util.Args;

public class BasicFuture<T>
  implements Future<T>, Cancellable
{
  private final FutureCallback<T> callback;
  private volatile boolean cancelled;
  private volatile boolean completed;
  private volatile Exception ex;
  private volatile T result;
  
  public BasicFuture(FutureCallback<T> paramFutureCallback)
  {
    callback = paramFutureCallback;
  }
  
  private T getResult()
  {
    if (ex != null) {
      throw new ExecutionException(ex);
    }
    return (T)result;
  }
  
  public boolean cancel()
  {
    return cancel(true);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    try
    {
      if (completed) {
        return false;
      }
      completed = true;
      cancelled = true;
      notifyAll();
      if (callback != null)
      {
        callback.cancelled();
        return true;
      }
    }
    finally {}
    return true;
  }
  
  public boolean completed(T paramT)
  {
    try
    {
      if (completed) {
        return false;
      }
      completed = true;
      result = paramT;
      notifyAll();
      if (callback != null)
      {
        callback.completed(paramT);
        return true;
      }
    }
    finally {}
    return true;
  }
  
  public boolean failed(Exception paramException)
  {
    try
    {
      if (completed) {
        return false;
      }
      completed = true;
      ex = paramException;
      notifyAll();
      if (callback != null)
      {
        callback.failed(paramException);
        return true;
      }
    }
    finally {}
    return true;
  }
  
  public T get()
  {
    try
    {
      while (!completed) {
        wait();
      }
      localObject2 = getResult();
    }
    finally {}
    Object localObject2;
    return (T)localObject2;
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    long l2;
    try
    {
      Args.notNull(paramTimeUnit, "Time unit");
      l2 = paramTimeUnit.toMillis(paramLong);
      if (l2 <= 0L) {}
      for (paramLong = 0L; completed; paramLong = System.currentTimeMillis())
      {
        paramTimeUnit = getResult();
        return paramTimeUnit;
      }
      if (l2 <= 0L) {
        throw new TimeoutException();
      }
    }
    finally {}
    long l1 = l2;
    long l3;
    do
    {
      wait(l1);
      if (completed)
      {
        paramTimeUnit = getResult();
        break;
      }
      l3 = l2 - (System.currentTimeMillis() - paramLong);
      l1 = l3;
    } while (l3 > 0L);
    throw new TimeoutException();
  }
  
  public boolean isCancelled()
  {
    return cancelled;
  }
  
  public boolean isDone()
  {
    return completed;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.concurrent.BasicFuture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */