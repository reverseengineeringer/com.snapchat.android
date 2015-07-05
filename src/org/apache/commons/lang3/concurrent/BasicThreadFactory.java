package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.lang3.builder.Builder;

public class BasicThreadFactory
  implements ThreadFactory
{
  private final Boolean daemonFlag;
  private final String namingPattern;
  private final Integer priority;
  private final AtomicLong threadCounter;
  private final Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
  private final ThreadFactory wrappedFactory;
  
  private BasicThreadFactory(Builder paramBuilder)
  {
    if (wrappedFactory == null) {}
    for (wrappedFactory = Executors.defaultThreadFactory();; wrappedFactory = wrappedFactory)
    {
      namingPattern = namingPattern;
      priority = priority;
      daemonFlag = daemonFlag;
      uncaughtExceptionHandler = exceptionHandler;
      threadCounter = new AtomicLong();
      return;
    }
  }
  
  private void initializeThread(Thread paramThread)
  {
    if (getNamingPattern() != null)
    {
      long l = threadCounter.incrementAndGet();
      paramThread.setName(String.format(getNamingPattern(), new Object[] { Long.valueOf(l) }));
    }
    if (getUncaughtExceptionHandler() != null) {
      paramThread.setUncaughtExceptionHandler(getUncaughtExceptionHandler());
    }
    if (getPriority() != null) {
      paramThread.setPriority(getPriority().intValue());
    }
    if (getDaemonFlag() != null) {
      paramThread.setDaemon(getDaemonFlag().booleanValue());
    }
  }
  
  public final Boolean getDaemonFlag()
  {
    return daemonFlag;
  }
  
  public final String getNamingPattern()
  {
    return namingPattern;
  }
  
  public final Integer getPriority()
  {
    return priority;
  }
  
  public long getThreadCount()
  {
    return threadCounter.get();
  }
  
  public final Thread.UncaughtExceptionHandler getUncaughtExceptionHandler()
  {
    return uncaughtExceptionHandler;
  }
  
  public final ThreadFactory getWrappedFactory()
  {
    return wrappedFactory;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = getWrappedFactory().newThread(paramRunnable);
    initializeThread(paramRunnable);
    return paramRunnable;
  }
  
  public static class Builder
    implements Builder<BasicThreadFactory>
  {
    private Boolean daemonFlag;
    private Thread.UncaughtExceptionHandler exceptionHandler;
    private String namingPattern;
    private Integer priority;
    private ThreadFactory wrappedFactory;
    
    public BasicThreadFactory build()
    {
      BasicThreadFactory localBasicThreadFactory = new BasicThreadFactory(this, null);
      reset();
      return localBasicThreadFactory;
    }
    
    public Builder daemon(boolean paramBoolean)
    {
      daemonFlag = Boolean.valueOf(paramBoolean);
      return this;
    }
    
    public Builder namingPattern(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException("Naming pattern must not be null!");
      }
      namingPattern = paramString;
      return this;
    }
    
    public Builder priority(int paramInt)
    {
      priority = Integer.valueOf(paramInt);
      return this;
    }
    
    public void reset()
    {
      wrappedFactory = null;
      exceptionHandler = null;
      namingPattern = null;
      priority = null;
      daemonFlag = null;
    }
    
    public Builder uncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
    {
      if (paramUncaughtExceptionHandler == null) {
        throw new NullPointerException("Uncaught exception handler must not be null!");
      }
      exceptionHandler = paramUncaughtExceptionHandler;
      return this;
    }
    
    public Builder wrappedFactory(ThreadFactory paramThreadFactory)
    {
      if (paramThreadFactory == null) {
        throw new NullPointerException("Wrapped ThreadFactory must not be null!");
      }
      wrappedFactory = paramThreadFactory;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.BasicThreadFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */