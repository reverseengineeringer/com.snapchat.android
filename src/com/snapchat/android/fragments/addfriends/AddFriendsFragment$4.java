package com.snapchat.android.fragments.addfriends;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import awf;

final class AddFriendsFragment$4
  implements View.OnClickListener
{
  AddFriendsFragment$4(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    awf.a(a.getActivity(), a.q);
    a.getActivity().onBackPressed();
    AddFriendsFragment.b(a);
    a.d.k = false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */