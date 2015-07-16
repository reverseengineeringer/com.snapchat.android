package com.snapchat.android.fragments.addfriends;

import amt;
import amu;
import amu.a;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import java.util.Set;

final class AddNearbyFriendsFragment$5
  implements amt
{
  AddNearbyFriendsFragment$5(AddNearbyFriendsFragment paramAddNearbyFriendsFragment) {}
  
  public final boolean a(amu.a parama)
  {
    return amu.g.contains(c);
  }
  
  public final boolean b(amu.a parama)
  {
    if (c == AndroidNotificationManager.Type.ADDFRIEND)
    {
      new StringBuilder("Dropping non-silent add friend notification for user: ").append(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddNearbyFriendsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */