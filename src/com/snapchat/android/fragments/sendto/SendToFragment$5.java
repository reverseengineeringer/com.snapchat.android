package com.snapchat.android.fragments.sendto;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment;
import com.squareup.otto.Bus;
import of;

final class SendToFragment$5
  implements View.OnClickListener
{
  SendToFragment$5(SendToFragment paramSendToFragment) {}
  
  public final void onClick(View paramView)
  {
    if (SendToFragment.h(a)) {
      SendToFragment.i(a);
    }
    paramView = SendToFragment.a(a);
    paramView.a("add_friend");
    paramView.c();
    bbo.a().a(new bev(new AddFriendsMenuFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */