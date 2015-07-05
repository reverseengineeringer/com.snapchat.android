package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class ej
  extends eg<ek>
{
  private static ej a = null;
  
  protected ej()
  {
    super(ej.class.getName(), 0, 5, 5000L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new ee()));
  }
  
  public static ej a()
  {
    try
    {
      if (a == null) {
        a = new ej();
      }
      ej localej = a;
      return localej;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */