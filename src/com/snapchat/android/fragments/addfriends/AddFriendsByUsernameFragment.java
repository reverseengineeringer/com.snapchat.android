package com.snapchat.android.fragments.addfriends;

import aga;
import akr;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import bcd;
import bco;
import bdw;
import bdx;
import bpi;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.FriendAction;
import kf;
import kk;

public class AddFriendsByUsernameFragment
  extends AddFriendsFragment
{
  protected final void a(kf paramkf)
  {
    ProfileEventAnalytics.a();
    int i = d.a(FriendAction.ADD, true);
    kk localkk = new kk();
    exitEvent = paramkf;
    friendAddCount = Long.valueOf(i);
    ScAnalyticsEventEngine.a(localkk);
  }
  
  public final boolean g()
  {
    G();
    a(kf.BACK_BUTTON);
    return false;
  }
  
  protected final void i()
  {
    q();
    w();
  }
  
  protected final int l()
  {
    return 2131492895;
  }
  
  protected final void m() {}
  
  @bpi
  public void onContactsOnSnapchatUpdatedEvent(bcd parambcd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambcd);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    D = AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    m.setText(2131492895);
    q.setHint(2131492872);
    paramViewGroup = getActivity().getResources().getString(2131492871, new Object[] { akr.l() });
    v.setText(paramViewGroup);
    d.g = true;
    F();
    return paramLayoutInflater;
  }
  
  @bpi
  public void onFriendProfileUpdateCompleteEvent(bco parambco)
  {
    d.notifyDataSetChanged();
  }
  
  @bpi
  public void onRefreshFriendExistsTask(bdx parambdx)
  {
    super.onRefreshFriendExistsTask(parambdx);
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    if ((mFriend != null) && (mAction == FriendAction.DELETE)) {
      return;
    }
    C();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsByUsernameFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */