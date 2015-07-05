package com.snapchat.android.analytics;

import buo;
import mz;

public enum CashEventAnalytics_Factory
  implements buo<mz>
{
  INSTANCE;
  
  private CashEventAnalytics_Factory() {}
  
  public static buo<mz> create()
  {
    return INSTANCE;
  }
  
  public final mz get()
  {
    return new mz();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.CashEventAnalytics_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */