package com.snapchat.android.util.crypto;

import aze;
import bvp;

public enum SlightlySecurePreferences_Factory
  implements bvp<aze>
{
  INSTANCE;
  
  private SlightlySecurePreferences_Factory() {}
  
  public static bvp<aze> create()
  {
    return INSTANCE;
  }
  
  public final aze get()
  {
    return new aze();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.crypto.SlightlySecurePreferences_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */