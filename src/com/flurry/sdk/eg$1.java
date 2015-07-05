package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class eg$1
  extends ThreadPoolExecutor
{
  eg$1(eg parameg, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue paramBlockingQueue)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramBlockingQueue);
  }
  
  protected void afterExecute(Runnable arg1, final Throwable paramThrowable)
  {
    super.afterExecute(???, paramThrowable);
    paramThrowable = eg.a(a, ???);
    if (paramThrowable == null) {
      return;
    }
    synchronized (eg.a(a))
    {
      eg.a(a).remove(paramThrowable);
      eg.a(a, paramThrowable);
      new fc()
      {
        public void a()
        {
          paramThrowable.k();
        }
      }.run();
      return;
    }
  }
  
  protected void beforeExecute(final Thread paramThread, Runnable paramRunnable)
  {
    super.beforeExecute(paramThread, paramRunnable);
    paramThread = eg.a(a, paramRunnable);
    if (paramThread == null) {
      return;
    }
    new fc()
    {
      public void a()
      {
        paramThread.j();
      }
    }.run();
  }
  
  protected <V> RunnableFuture<V> newTaskFor(Runnable paramRunnable, V arg2)
  {
    ef localef = new ef(paramRunnable, ???);
    synchronized (eg.a(a))
    {
      eg.a(a).put((fd)paramRunnable, localef);
      return localef;
    }
  }
  
  protected <V> RunnableFuture<V> newTaskFor(Callable<V> paramCallable)
  {
    throw new UnsupportedOperationException("Callable not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */