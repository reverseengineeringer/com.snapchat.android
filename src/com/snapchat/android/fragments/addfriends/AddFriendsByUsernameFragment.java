package com.snapchat.android.fragments.addfriends;

import afa;
import ajx;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import bbd;
import bbo;
import bcw;
import bcx;
import boh;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.FriendAction;

public class AddFriendsByUsernameFragment
  extends AddFriendsFragment
{
  public final boolean g()
  {
    G();
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
  
  @boh
  public void onContactsOnSnapchatUpdatedEvent(bbd parambbd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambbd);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    C = AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    m.setText(2131492895);
    q.setHint(2131492872);
    paramViewGroup = getActivity().getResources().getString(2131492871, new Object[] { ajx.l() });
    u.setText(paramViewGroup);
    d.f = true;
    F();
    return paramLayoutInflater;
  }
  
  @boh
  public void onFriendProfileUpdateCompleteEvent(bbo parambbo)
  {
    d.notifyDataSetChanged();
  }
  
  @boh
  public void onRefreshFriendExistsTask(bcx parambcx)
  {
    super.onRefreshFriendExistsTask(parambcx);
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
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