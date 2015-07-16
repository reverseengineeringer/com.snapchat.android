package com.snapchat.android.util.system;

import bhk;
import bvp;

public enum Clock_Factory
  implements bvp<bhk>
{
  INSTANCE;
  
  private Clock_Factory() {}
  
  public static bvp<bhk> create()
  {
    return INSTANCE;
  }
  
  public final bhk get()
  {
    return new bhk();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.system.Clock_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */