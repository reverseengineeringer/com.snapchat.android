package com.snapchat.android.util.debug;

import azo;
import buo;

public enum ExceptionReporter_Factory
  implements buo<azo>
{
  INSTANCE;
  
  private ExceptionReporter_Factory() {}
  
  public static buo<azo> create()
  {
    return INSTANCE;
  }
  
  public final azo get()
  {
    return new azo();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.ExceptionReporter_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */