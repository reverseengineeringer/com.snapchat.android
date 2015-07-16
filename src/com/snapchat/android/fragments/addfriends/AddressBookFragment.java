package com.snapchat.android.fragments.addfriends;

import aga;
import aho;
import ahr;
import amt;
import amu;
import amu.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import bcd;
import bdw;
import bdx;
import bfq;
import bpi;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import ix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import jo;
import kf;
import ml;

public class AddressBookFragment
  extends AddFriendsFragment
{
  public AddressBookFragment() {}
  
  @SuppressLint({"ValidFragment"})
  public AddressBookFragment(WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
  }
  
  protected final void D()
  {
    B.setEnabled(true);
  }
  
  protected final void E()
  {
    if (B.isEnabled()) {
      B.setEnabled(false);
    }
  }
  
  protected final void a(kf paramkf)
  {
    Object localObject = f.iterator();
    int i = 0;
    int j = 0;
    if (((Iterator)localObject).hasNext())
    {
      FriendSectionizer.FriendSection localFriendSection = nextmFriendSection;
      switch (2.b[localFriendSection.ordinal()])
      {
      }
      for (;;)
      {
        break;
        j += 1;
        break;
        i += 1;
      }
    }
    ProfileEventAnalytics.a();
    localObject = D;
    int k = d.a(FriendAction.ADD, false);
    int m = d.a(FriendAction.ADD, true);
    int n = d.a(FriendAction.INVITE, false);
    int i1 = d.a(FriendAction.INVITE, true);
    if (localObject == AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE)
    {
      localObject = new ix();
      exitEvent = paramkf;
      snapchatterCount = Long.valueOf(j);
      nonSnapchatterCount = Long.valueOf(i);
      snapchatterAddCount = Long.valueOf(k);
      nonSnapchatterInviteCount = Long.valueOf(n);
      snapchatterAddInSearchCount = Long.valueOf(m);
      nonSnapchatterInviteInSearchCount = Long.valueOf(i1);
      ScAnalyticsEventEngine.a((ml)localObject);
    }
    while (localObject != AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE) {
      return;
    }
    localObject = new jo();
    exitEvent = paramkf;
    snapchatterCount = Long.valueOf(j);
    nonSnapchatterCount = Long.valueOf(i);
    snapchatterAddCount = Long.valueOf(k);
    nonSnapchatterInviteCount = Long.valueOf(n);
    snapchatterAddInSearchCount = Long.valueOf(m);
    nonSnapchatterInviteInSearchCount = Long.valueOf(i1);
    ScAnalyticsEventEngine.a((ml)localObject);
  }
  
  public final amt k()
  {
    new amt()
    {
      public final boolean a(amu.a paramAnonymousa)
      {
        return amu.g.contains(c);
      }
      
      public final boolean b(amu.a paramAnonymousa)
      {
        return false;
      }
    };
  }
  
  protected final int l()
  {
    switch (2.a[a.ordinal()])
    {
    default: 
      return 2131492915;
    }
    return 2131493174;
  }
  
  @bpi
  public void onContactsOnSnapchatUpdatedEvent(bcd parambcd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambcd);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e = new ahr();
    c = e.b();
    b = e.a();
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    d.j = true;
    d.h = true;
    return paramLayoutInflater;
  }
  
  @bpi
  public void onRefreshFriendExistsTask(bdx parambdx)
  {
    super.onRefreshFriendExistsTask(parambdx);
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    super.onRefreshOnFriendActionEvent(parambdw);
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    super.onUserLoadedEvent(parambfq);
  }
  
  protected final String t()
  {
    return super.t() + "_FOR_ADDRESS_BOOK";
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddressBookFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */