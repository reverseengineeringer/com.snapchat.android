package com.snapchat.android.util.system;

import bgk;
import buo;

public enum Clock_Factory
  implements buo<bgk>
{
  INSTANCE;
  
  private Clock_Factory() {}
  
  public static buo<bgk> create()
  {
    return INSTANCE;
  }
  
  public final bgk get()
  {
    return new bgk();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.system.Clock_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */