package com.snapchat.android.scan;

import afi;
import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bbx;
import bdw;
import com.snapchat.android.Timber;
import com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment;
import com.squareup.otto.Bus;

final class FirstAutoScanNotificationView$1
  implements View.OnClickListener
{
  FirstAutoScanNotificationView$1(FirstAutoScanNotificationView paramFirstAutoScanNotificationView) {}
  
  public final void onClick(View paramView)
  {
    Timber.c(FirstAutoScanNotificationView.a(), "More info!", new Object[0]);
    ban.a().a(new bbx());
    ban.a().a(new bdw(new AddFriendsBySnapcodeSetupFragment(ban.a(), afi.a())));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.FirstAutoScanNotificationView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */