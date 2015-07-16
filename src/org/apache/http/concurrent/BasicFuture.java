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
      while (!completed) {}
      Object localObject1 = getResult();
      return (T)localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    long l;
    try
    {
      Args.notNull(paramTimeUnit, "Time unit");
      l = paramTimeUnit.toMillis(paramLong);
      if (l <= 0L) {}
      for (paramLong = 0L; completed; paramLong = System.currentTimeMillis())
      {
        paramTimeUnit = getResult();
        return paramTimeUnit;
      }
      if (l <= 0L) {
        throw new TimeoutException();
      }
    }
    finally {}
    do
    {
      if (completed)
      {
        paramTimeUnit = getResult();
        break;
      }
    } while (l - (System.currentTimeMillis() - paramLong) > 0L);
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