package com.flurry.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class ec
{
  private static ec a;
  private final Thread.UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
  private final Map<Thread.UncaughtExceptionHandler, Void> c = new WeakHashMap();
  
  private ec()
  {
    Thread.setDefaultUncaughtExceptionHandler(new a(null));
  }
  
  public static ec a()
  {
    try
    {
      if (a == null) {
        a = new ec();
      }
      ec localec = a;
      return localec;
    }
    finally {}
  }
  
  private void a(Thread paramThread, Throwable paramThrowable)
  {
    Iterator localIterator = b().iterator();
    while (localIterator.hasNext())
    {
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = (Thread.UncaughtExceptionHandler)localIterator.next();
      try
      {
        localUncaughtExceptionHandler.uncaughtException(paramThread, paramThrowable);
      }
      catch (Throwable localThrowable) {}
    }
  }
  
  private Set<Thread.UncaughtExceptionHandler> b()
  {
    synchronized (c)
    {
      Set localSet = c.keySet();
      return localSet;
    }
  }
  
  private void b(Thread paramThread, Throwable paramThrowable)
  {
    if (b != null) {
      b.uncaughtException(paramThread, paramThrowable);
    }
  }
  
  public final void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    synchronized (c)
    {
      c.put(paramUncaughtExceptionHandler, null);
      return;
    }
  }
  
  final class a
    implements Thread.UncaughtExceptionHandler
  {
    private a() {}
    
    public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
    {
      ec.a(ec.this, paramThread, paramThrowable);
      ec.b(ec.this, paramThread, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */