package com.snapchat.android.fragments.signup;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import kf;

final class NewUserContactBookFragment$1
  implements AbsListView.OnScrollListener
{
  NewUserContactBookFragment$1(NewUserContactBookFragment paramNewUserContactBookFragment) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0)
    {
      AnalyticsEvents.J();
      NewUserContactBookFragment.a(a);
      ScAnalyticsEventEngine.a(new kf());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.NewUserContactBookFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */