package com.snapchat.android.fragments.addfriends;

import alw;
import alx;
import alx.a;
import com.snapchat.android.Timber;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import java.util.Set;

final class AddNearbyFriendsFragment$5
  implements alw
{
  AddNearbyFriendsFragment$5(AddNearbyFriendsFragment paramAddNearbyFriendsFragment) {}
  
  public final boolean a(alx.a parama)
  {
    return alx.g.contains(c);
  }
  
  public final boolean b(alx.a parama)
  {
    boolean bool = false;
    if (c == AndroidNotificationManager.Type.ADDFRIEND)
    {
      Timber.c("AddNearbyFriendsFrag", "Dropping non-silent add friend notification for user: " + a, new Object[0]);
      bool = true;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddNearbyFriendsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */