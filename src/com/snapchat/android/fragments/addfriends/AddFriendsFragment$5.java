package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import avh;

final class AddFriendsFragment$5
  implements View.OnFocusChangeListener
{
  AddFriendsFragment$5(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      avh.g(a.getActivity());
      AddFriendsFragment.b(a);
      a.d.j = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */