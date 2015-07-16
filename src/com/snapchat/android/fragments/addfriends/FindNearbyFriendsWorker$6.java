package com.snapchat.android.fragments.addfriends;

import ain;
import android.location.Location;
import android.os.SystemClock;
import anu;
import aph;

final class FindNearbyFriendsWorker$6
  implements Runnable
{
  FindNearbyFriendsWorker$6(FindNearbyFriendsWorker paramFindNearbyFriendsWorker) {}
  
  public final void run()
  {
    Location localLocation = FindNearbyFriendsWorker.c(a).d();
    if (localLocation == null) {
      return;
    }
    FindNearbyFriendsWorker.d(a);
    long l1 = SystemClock.elapsedRealtime();
    long l2 = FindNearbyFriendsWorker.e(a);
    if (localLocation.hasAccuracy()) {}
    for (Float localFloat = Float.valueOf(localLocation.getAccuracy());; localFloat = null)
    {
      new anu(FindNearbyFriendsWorker.g(a).a(FindNearbyFriendsWorker.f(a), localLocation.getLatitude(), localLocation.getLongitude(), localFloat, l1 - l2, "delete")).a(FindNearbyFriendsWorker.f(a));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.FindNearbyFriendsWorker.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */