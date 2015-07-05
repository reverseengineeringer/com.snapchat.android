package com.snapchat.android.fragments.addfriends;

import android.view.View;
import android.view.View.OnClickListener;
import auh;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import ih;
import ix;
import pa;

final class AddFriendsFragment$8
  implements View.OnClickListener
{
  AddFriendsFragment$8(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    AddFriendsFragment.d(a);
    new pa("updateSearchableByPhoneNumber", new String[] { "1" }).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    AddFriendsFragment.c(a);
    paramView = a.C;
    switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[paramView.ordinal()])
    {
    case 7: 
    default: 
      Timber.f("ProfileEventAnalytics", "onProfileContactPermissionContinue  - Unknown context " + paramView, new Object[0]);
      return;
    case 6: 
      ScAnalyticsEventEngine.a(new ih());
      return;
    }
    ScAnalyticsEventEngine.a(new ix());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */