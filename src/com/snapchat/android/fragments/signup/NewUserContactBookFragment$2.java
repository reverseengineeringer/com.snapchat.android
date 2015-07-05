package com.snapchat.android.fragments.signup;

import afa;
import android.util.Pair;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import kb;

final class NewUserContactBookFragment$2
  implements View.OnClickListener
{
  NewUserContactBookFragment$2(NewUserContactBookFragment paramNewUserContactBookFragment) {}
  
  public final void onClick(View paramView)
  {
    int k = 0;
    paramView = a;
    boolean bool;
    Object localObject;
    int i;
    label35:
    int j;
    if (!NewUserContactBookFragment.b(a).isEmpty())
    {
      bool = true;
      localObject = f.iterator();
      i = 0;
      if (!((Iterator)localObject).hasNext()) {
        break label97;
      }
      Friend localFriend = (Friend)((Iterator)localObject).next();
      j = k;
      if (localFriend.b()) {
        j = k + 1;
      }
      if (!localFriend.g()) {
        break label227;
      }
      i += 1;
    }
    label97:
    label227:
    for (;;)
    {
      k = j;
      break label35;
      bool = false;
      break;
      localObject = Pair.create(Integer.valueOf(i), Integer.valueOf(k));
      i = ((Integer)first).intValue();
      j = ((Integer)second).intValue();
      paramView.a(bool, j);
      if (bool)
      {
        AnalyticsEvents.a(i, j, d.d.size());
        long l1 = i;
        long l2 = j;
        long l3 = d.d.size();
        paramView = new kb();
        contactFoundCount = Long.valueOf(l1);
        friendAddCount = Long.valueOf(l2);
        contactInviteCount = Long.valueOf(l3);
        ScAnalyticsEventEngine.a(paramView);
        return;
      }
      AnalyticsEvents.I();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.NewUserContactBookFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */