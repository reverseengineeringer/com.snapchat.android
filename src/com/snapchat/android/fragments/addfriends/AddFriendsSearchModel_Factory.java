package com.snapchat.android.fragments.addfriends;

import agd;
import bvp;

public enum AddFriendsSearchModel_Factory
  implements bvp<agd>
{
  INSTANCE;
  
  private AddFriendsSearchModel_Factory() {}
  
  public static bvp<agd> create()
  {
    return INSTANCE;
  }
  
  public final agd get()
  {
    return new agd();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsSearchModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */