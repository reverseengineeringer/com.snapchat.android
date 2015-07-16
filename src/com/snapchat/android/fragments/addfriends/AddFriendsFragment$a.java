package com.snapchat.android.fragments.addfriends;

import android.os.Handler;
import android.widget.Button;
import bho;

final class AddFriendsFragment$a
  extends bho
{
  private int b;
  
  public AddFriendsFragment$a(AddFriendsFragment paramAddFriendsFragment)
  {
    super(3, 1000L, new Handler());
    B.setEnabled(false);
    b = 3;
    B.setText(paramAddFriendsFragment.getString(2131493356) + " " + b);
  }
  
  public final void a()
  {
    if (!a.isAdded()) {
      return;
    }
    b -= 1;
    a.B.setText(a.getString(2131493356) + " " + b);
  }
  
  public final void b()
  {
    if (!a.isAdded()) {
      return;
    }
    a.B.setText(2131493356);
    a.B.setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */