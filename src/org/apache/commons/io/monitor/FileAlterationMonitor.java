package org.apache.commons.io.monitor;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadFactory;

public final class FileAlterationMonitor
  implements Runnable
{
  private final long interval;
  private final List<FileAlterationObserver> observers = new CopyOnWriteArrayList();
  private volatile boolean running = false;
  private Thread thread = null;
  private ThreadFactory threadFactory;
  
  public FileAlterationMonitor()
  {
    this(10000L);
  }
  
  public FileAlterationMonitor(long paramLong)
  {
    interval = paramLong;
  }
  
  public FileAlterationMonitor(long paramLong, FileAlterationObserver... paramVarArgs)
  {
    this(paramLong);
    if (paramVarArgs != null)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        addObserver(paramVarArgs[i]);
        i += 1;
      }
    }
  }
  
  public final void addObserver(FileAlterationObserver paramFileAlterationObserver)
  {
    if (paramFileAlterationObserver != null) {
      observers.add(paramFileAlterationObserver);
    }
  }
  
  public final long getInterval()
  {
    return interval;
  }
  
  public final Iterable<FileAlterationObserver> getObservers()
  {
    return observers;
  }
  
  public final void removeObserver(FileAlterationObserver paramFileAlterationObserver)
  {
    while ((paramFileAlterationObserver != null) && (observers.remove(paramFileAlterationObserver))) {}
  }
  
  public final void run()
  {
    while (running)
    {
      Iterator localIterator = observers.iterator();
      while (localIterator.hasNext()) {
        ((FileAlterationObserver)localIterator.next()).checkAndNotify();
      }
      if (!running) {
        break;
      }
      try
      {
        Thread.sleep(interval);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public final void setThreadFactory(ThreadFactory paramThreadFactory)
  {
    try
    {
      threadFactory = paramThreadFactory;
      return;
    }
    finally
    {
      paramThreadFactory = finally;
      throw paramThreadFactory;
    }
  }
  
  public final void start()
  {
    try
    {
      if (running) {
        throw new IllegalStateException("Monitor is already running");
      }
    }
    finally {}
    Iterator localIterator = observers.iterator();
    while (localIterator.hasNext()) {
      ((FileAlterationObserver)localIterator.next()).initialize();
    }
    running = true;
    if (threadFactory != null) {}
    for (thread = threadFactory.newThread(this);; thread = new Thread(this))
    {
      thread.start();
      return;
    }
  }
  
  public final void stop()
  {
    try
    {
      stop(interval);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void stop(long paramLong)
  {
    try
    {
      if (!running) {
        throw new IllegalStateException("Monitor is not running");
      }
    }
    finally {}
    running = false;
    try
    {
      thread.join(paramLong);
      Iterator localIterator = observers.iterator();
      while (localIterator.hasNext()) {
        ((FileAlterationObserver)localIterator.next()).destroy();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        Thread.currentThread().interrupt();
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.monitor.FileAlterationMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */