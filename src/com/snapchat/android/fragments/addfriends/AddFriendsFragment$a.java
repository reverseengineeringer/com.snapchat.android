package com.snapchat.android.fragments.addfriends;

import android.os.Handler;
import android.widget.Button;
import bgo;

final class AddFriendsFragment$a
  extends bgo
{
  private int b;
  
  public AddFriendsFragment$a(AddFriendsFragment paramAddFriendsFragment)
  {
    super(3, 1000L, new Handler());
    A.setEnabled(false);
    b = 3;
    A.setText(paramAddFriendsFragment.getString(2131493356) + " " + b);
  }
  
  public final void a()
  {
    if (!a.isAdded()) {
      return;
    }
    b -= 1;
    a.A.setText(a.getString(2131493356) + " " + b);
  }
  
  public final void b()
  {
    if (!a.isAdded()) {
      return;
    }
    a.A.setText(2131493356);
    a.A.setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */