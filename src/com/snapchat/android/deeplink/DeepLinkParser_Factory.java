package com.snapchat.android.deeplink;

import abh;
import buo;

public enum DeepLinkParser_Factory
  implements buo<abh>
{
  INSTANCE;
  
  private DeepLinkParser_Factory() {}
  
  public static buo<abh> create()
  {
    return INSTANCE;
  }
  
  public final abh get()
  {
    return new abh();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.deeplink.DeepLinkParser_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */