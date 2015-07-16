package com.snapchat.android.util;

import aua;
import bvp;

public enum DebitCardNumberValidator_Factory
  implements bvp<aua>
{
  INSTANCE;
  
  private DebitCardNumberValidator_Factory() {}
  
  public static bvp<aua> create()
  {
    return INSTANCE;
  }
  
  public final aua get()
  {
    return new aua();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.DebitCardNumberValidator_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */