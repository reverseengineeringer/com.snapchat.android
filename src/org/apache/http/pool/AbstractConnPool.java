package org.apache.http.pool;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@ThreadSafe
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>>
  implements ConnPool<T, E>, ConnPoolControl<T>
{
  private final LinkedList<E> available;
  private final ConnFactory<T, C> connFactory;
  private volatile int defaultMaxPerRoute;
  private volatile boolean isShutDown;
  private final Set<E> leased;
  private final Lock lock;
  private final Map<T, Integer> maxPerRoute;
  private volatile int maxTotal;
  private final LinkedList<PoolEntryFuture<E>> pending;
  private final Map<T, RouteSpecificPool<T, C, E>> routeToPool;
  
  public AbstractConnPool(ConnFactory<T, C> paramConnFactory, int paramInt1, int paramInt2)
  {
    connFactory = ((ConnFactory)Args.notNull(paramConnFactory, "Connection factory"));
    defaultMaxPerRoute = Args.notNegative(paramInt1, "Max per route value");
    maxTotal = Args.notNegative(paramInt2, "Max total value");
    lock = new ReentrantLock();
    routeToPool = new HashMap();
    leased = new HashSet();
    available = new LinkedList();
    pending = new LinkedList();
    maxPerRoute = new HashMap();
  }
  
  private int getMax(T paramT)
  {
    paramT = (Integer)maxPerRoute.get(paramT);
    if (paramT != null) {
      return paramT.intValue();
    }
    return defaultMaxPerRoute;
  }
  
  private RouteSpecificPool<T, C, E> getPool(final T paramT)
  {
    RouteSpecificPool localRouteSpecificPool = (RouteSpecificPool)routeToPool.get(paramT);
    Object localObject = localRouteSpecificPool;
    if (localRouteSpecificPool == null)
    {
      localObject = new RouteSpecificPool(paramT)
      {
        protected E createEntry(C paramAnonymousC)
        {
          return createEntry(paramT, paramAnonymousC);
        }
      };
      routeToPool.put(paramT, localObject);
    }
    return (RouteSpecificPool<T, C, E>)localObject;
  }
  
  private E getPoolEntryBlocking(T paramT, Object paramObject, long paramLong, TimeUnit paramTimeUnit, PoolEntryFuture<E> paramPoolEntryFuture)
  {
    Date localDate = null;
    if (paramLong > 0L) {
      localDate = new Date(System.currentTimeMillis() + paramTimeUnit.toMillis(paramLong));
    }
    lock.lock();
    for (;;)
    {
      RouteSpecificPool localRouteSpecificPool;
      boolean bool;
      PoolEntry localPoolEntry;
      try
      {
        localRouteSpecificPool = getPool(paramT);
        paramTimeUnit = null;
        if (paramTimeUnit != null) {
          break label472;
        }
        if (!isShutDown)
        {
          bool = true;
          Asserts.check(bool, "Connection pool shut down");
          localPoolEntry = localRouteSpecificPool.getFree(paramObject);
          if ((localPoolEntry == null) || ((!localPoolEntry.isClosed()) && (!localPoolEntry.isExpired(System.currentTimeMillis())))) {
            break label145;
          }
          localPoolEntry.close();
          available.remove(localPoolEntry);
          localRouteSpecificPool.free(localPoolEntry, false);
          continue;
        }
        bool = false;
      }
      finally
      {
        lock.unlock();
      }
      continue;
      label145:
      if (localPoolEntry != null)
      {
        available.remove(localPoolEntry);
        leased.add(localPoolEntry);
        lock.unlock();
        return localPoolEntry;
      }
      int j = getMax(paramT);
      int k = Math.max(0, localRouteSpecificPool.getAllocatedCount() + 1 - j);
      int i;
      if (k > 0)
      {
        i = 0;
        while (i < k)
        {
          paramTimeUnit = localRouteSpecificPool.getLastUsed();
          if (paramTimeUnit == null) {
            break;
          }
          paramTimeUnit.close();
          available.remove(paramTimeUnit);
          localRouteSpecificPool.remove(paramTimeUnit);
          i += 1;
        }
      }
      if (localRouteSpecificPool.getAllocatedCount() < j)
      {
        i = leased.size();
        i = Math.max(maxTotal - i, 0);
        if (i > 0)
        {
          if ((available.size() > i - 1) && (!available.isEmpty()))
          {
            paramObject = (PoolEntry)available.removeLast();
            ((PoolEntry)paramObject).close();
            getPool(((PoolEntry)paramObject).getRoute()).remove((PoolEntry)paramObject);
          }
          paramT = localRouteSpecificPool.add(connFactory.create(paramT));
          leased.add(paramT);
          lock.unlock();
          return paramT;
        }
      }
      try
      {
        localRouteSpecificPool.queue(paramPoolEntryFuture);
        pending.add(paramPoolEntryFuture);
        bool = paramPoolEntryFuture.await(localDate);
        localRouteSpecificPool.unqueue(paramPoolEntryFuture);
        pending.remove(paramPoolEntryFuture);
        paramTimeUnit = localPoolEntry;
        if (bool) {
          continue;
        }
        paramTimeUnit = localPoolEntry;
        if (localDate == null) {
          continue;
        }
        paramTimeUnit = localPoolEntry;
        if (localDate.getTime() > System.currentTimeMillis()) {
          continue;
        }
        label472:
        throw new TimeoutException("Timeout waiting for connection");
      }
      finally
      {
        localRouteSpecificPool.unqueue(paramPoolEntryFuture);
        pending.remove(paramPoolEntryFuture);
      }
    }
  }
  
  private void purgePoolMap()
  {
    Iterator localIterator = routeToPool.entrySet().iterator();
    while (localIterator.hasNext())
    {
      RouteSpecificPool localRouteSpecificPool = (RouteSpecificPool)((Map.Entry)localIterator.next()).getValue();
      int i = localRouteSpecificPool.getPendingCount();
      if (localRouteSpecificPool.getAllocatedCount() + i == 0) {
        localIterator.remove();
      }
    }
  }
  
  public void closeExpired()
  {
    enumAvailable(new PoolEntryCallback()
    {
      public void process(PoolEntry<T, C> paramAnonymousPoolEntry)
      {
        if (paramAnonymousPoolEntry.isExpired(val$now)) {
          paramAnonymousPoolEntry.close();
        }
      }
    });
  }
  
  public void closeIdle(long paramLong, TimeUnit paramTimeUnit)
  {
    long l = 0L;
    Args.notNull(paramTimeUnit, "Time unit");
    paramLong = paramTimeUnit.toMillis(paramLong);
    if (paramLong < 0L) {
      paramLong = l;
    }
    for (;;)
    {
      enumAvailable(new PoolEntryCallback()
      {
        public void process(PoolEntry<T, C> paramAnonymousPoolEntry)
        {
          if (paramAnonymousPoolEntry.getUpdated() <= val$deadline) {
            paramAnonymousPoolEntry.close();
          }
        }
      });
      return;
    }
  }
  
  public abstract E createEntry(T paramT, C paramC);
  
  protected void enumAvailable(PoolEntryCallback<T, C> paramPoolEntryCallback)
  {
    lock.lock();
    try
    {
      Iterator localIterator = available.iterator();
      while (localIterator.hasNext())
      {
        PoolEntry localPoolEntry = (PoolEntry)localIterator.next();
        paramPoolEntryCallback.process(localPoolEntry);
        if (localPoolEntry.isClosed())
        {
          getPool(localPoolEntry.getRoute()).remove(localPoolEntry);
          localIterator.remove();
        }
      }
      purgePoolMap();
    }
    finally
    {
      lock.unlock();
    }
    lock.unlock();
  }
  
  protected void enumLeased(PoolEntryCallback<T, C> paramPoolEntryCallback)
  {
    lock.lock();
    try
    {
      Iterator localIterator = leased.iterator();
      while (localIterator.hasNext()) {
        paramPoolEntryCallback.process((PoolEntry)localIterator.next());
      }
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public int getDefaultMaxPerRoute()
  {
    lock.lock();
    try
    {
      int i = defaultMaxPerRoute;
      return i;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public int getMaxPerRoute(T paramT)
  {
    Args.notNull(paramT, "Route");
    lock.lock();
    try
    {
      int i = getMax(paramT);
      return i;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public int getMaxTotal()
  {
    lock.lock();
    try
    {
      int i = maxTotal;
      return i;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public PoolStats getStats(T paramT)
  {
    Args.notNull(paramT, "Route");
    lock.lock();
    try
    {
      RouteSpecificPool localRouteSpecificPool = getPool(paramT);
      paramT = new PoolStats(localRouteSpecificPool.getLeasedCount(), localRouteSpecificPool.getPendingCount(), localRouteSpecificPool.getAvailableCount(), getMax(paramT));
      return paramT;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public PoolStats getTotalStats()
  {
    lock.lock();
    try
    {
      PoolStats localPoolStats = new PoolStats(leased.size(), pending.size(), available.size(), maxTotal);
      return localPoolStats;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public boolean isShutdown()
  {
    return isShutDown;
  }
  
  public Future<E> lease(T paramT, Object paramObject)
  {
    return lease(paramT, paramObject, null);
  }
  
  public Future<E> lease(final T paramT, final Object paramObject, FutureCallback<E> paramFutureCallback)
  {
    Args.notNull(paramT, "Route");
    if (!isShutDown) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Connection pool shut down");
      new PoolEntryFuture(lock, paramFutureCallback)
      {
        public E getPoolEntry(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
        {
          paramAnonymousTimeUnit = AbstractConnPool.this.getPoolEntryBlocking(paramT, paramObject, paramAnonymousLong, paramAnonymousTimeUnit, this);
          onLease(paramAnonymousTimeUnit);
          return paramAnonymousTimeUnit;
        }
      };
    }
  }
  
  protected void onLease(E paramE) {}
  
  protected void onRelease(E paramE) {}
  
  public void release(E paramE, boolean paramBoolean)
  {
    lock.lock();
    label116:
    for (;;)
    {
      try
      {
        if (leased.remove(paramE))
        {
          RouteSpecificPool localRouteSpecificPool = getPool(paramE.getRoute());
          localRouteSpecificPool.free(paramE, paramBoolean);
          if ((!paramBoolean) || (isShutDown)) {
            continue;
          }
          available.addFirst(paramE);
          onRelease(paramE);
          paramE = localRouteSpecificPool.nextPending();
          if (paramE == null) {
            break label116;
          }
          pending.remove(paramE);
          if (paramE != null) {
            paramE.wakeup();
          }
        }
        return;
        paramE.close();
        continue;
        paramE = (PoolEntryFuture)pending.poll();
      }
      finally
      {
        lock.unlock();
      }
    }
  }
  
  public void setDefaultMaxPerRoute(int paramInt)
  {
    Args.notNegative(paramInt, "Max per route value");
    lock.lock();
    try
    {
      defaultMaxPerRoute = paramInt;
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public void setMaxPerRoute(T paramT, int paramInt)
  {
    Args.notNull(paramT, "Route");
    Args.notNegative(paramInt, "Max per route value");
    lock.lock();
    try
    {
      maxPerRoute.put(paramT, Integer.valueOf(paramInt));
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public void setMaxTotal(int paramInt)
  {
    Args.notNegative(paramInt, "Max value");
    lock.lock();
    try
    {
      maxTotal = paramInt;
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public void shutdown()
  {
    if (isShutDown) {
      return;
    }
    isShutDown = true;
    lock.lock();
    try
    {
      Iterator localIterator1 = available.iterator();
      while (localIterator1.hasNext()) {
        ((PoolEntry)localIterator1.next()).close();
      }
      localIterator2 = leased.iterator();
    }
    finally
    {
      lock.unlock();
    }
    while (localIterator2.hasNext()) {
      ((PoolEntry)localIterator2.next()).close();
    }
    Iterator localIterator2 = routeToPool.values().iterator();
    while (localIterator2.hasNext()) {
      ((RouteSpecificPool)localIterator2.next()).shutdown();
    }
    routeToPool.clear();
    leased.clear();
    available.clear();
    lock.unlock();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[leased: ");
    localStringBuilder.append(leased);
    localStringBuilder.append("][available: ");
    localStringBuilder.append(available);
    localStringBuilder.append("][pending: ");
    localStringBuilder.append(pending);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.pool.AbstractConnPool
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */