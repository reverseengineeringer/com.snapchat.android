package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnClickListener;
import avf;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import is;
import jj;
import pr;

final class AddFriendsFragment$8
  implements View.OnClickListener
{
  AddFriendsFragment$8(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    AddFriendsFragment.d(a);
    new pr("updateSearchableByPhoneNumber", new String[] { "1" }).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    AddFriendsFragment.c(a);
    paramView = a.D;
    switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[paramView.ordinal()])
    {
    case 7: 
    default: 
      new StringBuilder("onProfileContactPermissionContinue  - Unknown context ").append(paramView);
      return;
    case 6: 
      ScAnalyticsEventEngine.a(new is());
      return;
    }
    ScAnalyticsEventEngine.a(new jj());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */