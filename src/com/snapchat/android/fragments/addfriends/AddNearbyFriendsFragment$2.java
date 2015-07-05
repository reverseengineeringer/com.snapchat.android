package com.snapchat.android.fragments.addfriends;

import ahq.a;
import ajx;
import android.support.v4.app.FragmentActivity;

final class AddNearbyFriendsFragment$2
  implements ahq.a
{
  AddNearbyFriendsFragment$2(AddNearbyFriendsFragment paramAddNearbyFriendsFragment) {}
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      AddNearbyFriendsFragment.b(a);
      ajx.aV();
      return;
    }
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddNearbyFriendsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */