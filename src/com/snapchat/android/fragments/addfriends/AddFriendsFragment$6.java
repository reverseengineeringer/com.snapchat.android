package com.snapchat.android.fragments.addfriends;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import io;
import jd;
import jm;
import ju;

final class AddFriendsFragment$6
  implements View.OnClickListener
{
  AddFriendsFragment$6(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    AddFriendsFragment.c(a);
    paramView = a.C;
    int i = a.q.getText().length();
    switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[paramView.ordinal()])
    {
    case 7: 
    default: 
      Timber.f("ProfileEventAnalytics", "onProfileSearchClear  - Unknown context " + paramView, new Object[0]);
    }
    for (;;)
    {
      a.q.setText("");
      AddFriendsFragment.b(a);
      a.d.j = false;
      return;
      paramView = new ju();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
      continue;
      paramView = new io();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
      continue;
      paramView = new jd();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
      continue;
      paramView = new jm();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */