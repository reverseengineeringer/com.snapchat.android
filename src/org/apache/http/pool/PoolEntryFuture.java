package org.apache.http.pool;

import java.io.IOException;
import java.util.Date;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.util.Args;

@ThreadSafe
abstract class PoolEntryFuture<T>
  implements Future<T>
{
  private final FutureCallback<T> callback;
  private volatile boolean cancelled;
  private volatile boolean completed;
  private final Condition condition;
  private final Lock lock;
  private T result;
  
  PoolEntryFuture(Lock paramLock, FutureCallback<T> paramFutureCallback)
  {
    lock = paramLock;
    condition = paramLock.newCondition();
    callback = paramFutureCallback;
  }
  
  public boolean await(Date paramDate)
  {
    lock.lock();
    try
    {
      if (cancelled) {
        throw new InterruptedException("Operation interrupted");
      }
    }
    finally
    {
      lock.unlock();
    }
    if (paramDate != null) {}
    for (boolean bool = condition.awaitUntil(paramDate); cancelled; bool = true)
    {
      throw new InterruptedException("Operation interrupted");
      condition.await();
    }
    lock.unlock();
    return bool;
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    lock.lock();
    try
    {
      paramBoolean = completed;
      if (paramBoolean) {
        return false;
      }
      completed = true;
      cancelled = true;
      if (callback != null) {
        callback.cancelled();
      }
      condition.signalAll();
      return true;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public T get()
  {
    try
    {
      Object localObject = get(0L, TimeUnit.MILLISECONDS);
      return (T)localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new ExecutionException(localTimeoutException);
    }
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    Args.notNull(paramTimeUnit, "Time unit");
    lock.lock();
    try
    {
      if (completed)
      {
        paramTimeUnit = result;
        return paramTimeUnit;
      }
      result = getPoolEntry(paramLong, paramTimeUnit);
      completed = true;
      if (callback != null) {
        callback.completed(result);
      }
      paramTimeUnit = result;
      return paramTimeUnit;
    }
    catch (IOException paramTimeUnit)
    {
      completed = true;
      result = null;
      if (callback != null) {
        callback.failed(paramTimeUnit);
      }
      throw new ExecutionException(paramTimeUnit);
    }
    finally
    {
      lock.unlock();
    }
  }
  
  protected abstract T getPoolEntry(long paramLong, TimeUnit paramTimeUnit);
  
  public boolean isCancelled()
  {
    return cancelled;
  }
  
  public boolean isDone()
  {
    return completed;
  }
  
  public void wakeup()
  {
    lock.lock();
    try
    {
      condition.signalAll();
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.pool.PoolEntryFuture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */