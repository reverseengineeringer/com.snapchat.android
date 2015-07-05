package com.snapchat.android.util.crypto;

import ayg;
import buo;

public enum SlightlySecurePreferences_Factory
  implements buo<ayg>
{
  INSTANCE;
  
  private SlightlySecurePreferences_Factory() {}
  
  public static buo<ayg> create()
  {
    return INSTANCE;
  }
  
  public final ayg get()
  {
    return new ayg();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.crypto.SlightlySecurePreferences_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */