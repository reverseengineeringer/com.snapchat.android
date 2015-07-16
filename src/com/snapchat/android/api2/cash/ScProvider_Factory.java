package com.snapchat.android.api2.cash;

import bvp;
import ri;

public enum ScProvider_Factory
  implements bvp<ri>
{
  INSTANCE;
  
  private ScProvider_Factory() {}
  
  public static bvp<ri> create()
  {
    return INSTANCE;
  }
  
  public final ri get()
  {
    return new ri();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.cash.ScProvider_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */