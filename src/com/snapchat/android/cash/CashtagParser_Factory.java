package com.snapchat.android.cash;

import bvp;
import yq;

public enum CashtagParser_Factory
  implements bvp<yq>
{
  INSTANCE;
  
  private CashtagParser_Factory() {}
  
  public static bvp<yq> create()
  {
    return INSTANCE;
  }
  
  public final yq get()
  {
    return new yq();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.cash.CashtagParser_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */