package com.snapchat.android.api2;

import buo;
import pk;

public enum ApiTaskFactory_Factory
  implements buo<pk>
{
  INSTANCE;
  
  private ApiTaskFactory_Factory() {}
  
  public static buo<pk> create()
  {
    return INSTANCE;
  }
  
  public final pk get()
  {
    return new pk();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.ApiTaskFactory_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */