package com.snapchat.android.analytics;

import bvp;
import nq;

public enum CashEventAnalytics_Factory
  implements bvp<nq>
{
  INSTANCE;
  
  private CashEventAnalytics_Factory() {}
  
  public static bvp<nq> create()
  {
    return INSTANCE;
  }
  
  public final nq get()
  {
    return new nq();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.CashEventAnalytics_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */