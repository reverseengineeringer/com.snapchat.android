package com.snapchat.android.fragments.addfriends;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import ja;
import jq;
import ka;
import km;

final class AddFriendsFragment$6
  implements View.OnClickListener
{
  AddFriendsFragment$6(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(View paramView)
  {
    AddFriendsFragment.c(a);
    paramView = a.D;
    int i = a.q.getText().length();
    switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[paramView.ordinal()])
    {
    case 7: 
    default: 
      new StringBuilder("onProfileSearchClear  - Unknown context ").append(paramView);
    }
    for (;;)
    {
      a.q.setText("");
      AddFriendsFragment.b(a);
      a.d.k = false;
      return;
      paramView = new km();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
      continue;
      paramView = new ja();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
      continue;
      paramView = new jq();
      charCount = Long.valueOf(i);
      ScAnalyticsEventEngine.a(paramView);
      continue;
      paramView = new ka();
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