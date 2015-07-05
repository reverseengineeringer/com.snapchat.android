package com.snapchat.android.api2.cash;

import buo;
import qs;

public enum ScProvider_Factory
  implements buo<qs>
{
  INSTANCE;
  
  private ScProvider_Factory() {}
  
  public static buo<qs> create()
  {
    return INSTANCE;
  }
  
  public final qs get()
  {
    return new qs();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.cash.ScProvider_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */