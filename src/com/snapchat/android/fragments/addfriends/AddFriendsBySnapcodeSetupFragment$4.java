package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdw;
import com.snapchat.android.fragments.settings.WebFragment;
import com.squareup.otto.Bus;

final class AddFriendsBySnapcodeSetupFragment$4
  implements View.OnClickListener
{
  AddFriendsBySnapcodeSetupFragment$4(AddFriendsBySnapcodeSetupFragment paramAddFriendsBySnapcodeSetupFragment) {}
  
  public final void onClick(View paramView)
  {
    ban.a().a(new bdw(new WebFragment("https://support.snapchat.com/a/add-snapcodes", a.getString(2131492867), false, null)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */