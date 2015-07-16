package com.snapchat.android.api2.cash;

import bvp;
import qw;

public enum CashErrorReporter_Factory
  implements bvp<qw>
{
  INSTANCE;
  
  private CashErrorReporter_Factory() {}
  
  public static bvp<qw> create()
  {
    return INSTANCE;
  }
  
  public final qw get()
  {
    return new qw();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.cash.CashErrorReporter_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */