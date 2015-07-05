package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ThreadFactory;
import org.apache.commons.lang3.builder.Builder;

public class BasicThreadFactory$Builder
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

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.BasicThreadFactory.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */