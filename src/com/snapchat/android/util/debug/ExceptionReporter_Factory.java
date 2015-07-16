package com.snapchat.android.util.debug;

import ban;
import bvp;

public enum ExceptionReporter_Factory
  implements bvp<ban>
{
  INSTANCE;
  
  private ExceptionReporter_Factory() {}
  
  public static bvp<ban> create()
  {
    return INSTANCE;
  }
  
  public final ban get()
  {
    return new ban();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.ExceptionReporter_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */