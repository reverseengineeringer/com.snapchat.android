package com.snapchat.android.api2;

import bvp;
import qb;

public enum ApiTaskFactory_Factory
  implements bvp<qb>
{
  INSTANCE;
  
  private ApiTaskFactory_Factory() {}
  
  public static bvp<qb> create()
  {
    return INSTANCE;
  }
  
  public final qb get()
  {
    return new qb();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.ApiTaskFactory_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */