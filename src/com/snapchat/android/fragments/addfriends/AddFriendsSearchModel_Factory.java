package com.snapchat.android.fragments.addfriends;

import afd;
import buo;

public enum AddFriendsSearchModel_Factory
  implements buo<afd>
{
  INSTANCE;
  
  private AddFriendsSearchModel_Factory() {}
  
  public static buo<afd> create()
  {
    return INSTANCE;
  }
  
  public final afd get()
  {
    return new afd();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsSearchModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */