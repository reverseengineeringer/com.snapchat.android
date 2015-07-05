package com.snapchat.android.cash;

import buo;
import xu;

public enum CashtagParser_Factory
  implements buo<xu>
{
  INSTANCE;
  
  private CashtagParser_Factory() {}
  
  public static buo<xu> create()
  {
    return INSTANCE;
  }
  
  public final xu get()
  {
    return new xu();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.cash.CashtagParser_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */