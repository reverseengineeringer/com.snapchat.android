package com.snapchat.android.scan;

import agi;
import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bcx;
import bev;
import com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment;
import com.squareup.otto.Bus;

final class FirstAutoScanNotificationView$1
  implements View.OnClickListener
{
  FirstAutoScanNotificationView$1(FirstAutoScanNotificationView paramFirstAutoScanNotificationView) {}
  
  public final void onClick(View paramView)
  {
    FirstAutoScanNotificationView.a();
    bbo.a().a(new bcx());
    bbo.a().a(new bev(new AddFriendsBySnapcodeSetupFragment(bbo.a(), agi.a())));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.FirstAutoScanNotificationView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */