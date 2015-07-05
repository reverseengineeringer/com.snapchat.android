package com.snapchat.android.util;

import atb;
import buo;

public enum DebitCardNumberValidator_Factory
  implements buo<atb>
{
  INSTANCE;
  
  private DebitCardNumberValidator_Factory() {}
  
  public static buo<atb> create()
  {
    return INSTANCE;
  }
  
  public final atb get()
  {
    return new atb();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.DebitCardNumberValidator_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */