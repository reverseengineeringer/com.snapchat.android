package com.snapchat.android.deeplink;

import ach;
import bvp;

public enum DeepLinkParser_Factory
  implements bvp<ach>
{
  INSTANCE;
  
  private DeepLinkParser_Factory() {}
  
  public static bvp<ach> create()
  {
    return INSTANCE;
  }
  
  public final ach get()
  {
    return new ach();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.deeplink.DeepLinkParser_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */