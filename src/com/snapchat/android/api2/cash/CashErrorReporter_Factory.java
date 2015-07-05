package com.snapchat.android.api2.cash;

import buo;
import qg;

public enum CashErrorReporter_Factory
  implements buo<qg>
{
  INSTANCE;
  
  private CashErrorReporter_Factory() {}
  
  public static buo<qg> create()
  {
    return INSTANCE;
  }
  
  public final qg get()
  {
    return new qg();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.cash.CashErrorReporter_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */