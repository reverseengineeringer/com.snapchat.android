package com.snapchat.android.fragments.addfriends;

import aga;
import agn;
import akp;
import akr;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bcd;
import bco;
import bdw;
import bdx;
import bpi;
import chc;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kf;

public class MyFriendsFragment
  extends AddFriendsFragment
{
  public MyFriendsFragment() {}
  
  @SuppressLint({"ValidFragment"})
  public MyFriendsFragment(WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
  }
  
  protected final void B()
  {
    TextView localTextView = v;
    if (d.isEmpty()) {}
    for (int i = 0;; i = 8)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  protected final void a(@chc akp paramakp)
  {
    f.clear();
    paramakp = paramakp.o().iterator();
    while (paramakp.hasNext())
    {
      Friend localFriend = (Friend)paramakp.next();
      if ((!TextUtils.equals(akr.l(), localFriend.l())) && (!mIsBlocked) && (!localFriend.q())) {
        f.add(localFriend);
      }
    }
    Collections.sort(f);
  }
  
  protected final void a(kf paramkf)
  {
    ProfileEventAnalytics.a();
    ProfileEventAnalytics.a(paramkf, d.getCount(), d.a(false), d.a(FriendAction.ADD, false), d.a(FriendAction.DELETE, false), d.a(FriendAction.BLOCK, false), d.a(FriendAction.SET_DISPLAY_NAME, false), d.a(true), d.a(FriendAction.ADD, true), d.a(FriendAction.DELETE, true), d.a(FriendAction.BLOCK, true), d.a(FriendAction.SET_DISPLAY_NAME, true));
  }
  
  protected final void b(@chc akp paramakp)
  {
    a(paramakp);
    f.addAll(0, mBests);
  }
  
  protected final void i()
  {
    w();
    q();
  }
  
  public final boolean j_()
  {
    return true;
  }
  
  protected final int l()
  {
    return 2131493239;
  }
  
  protected final FriendListProperty n()
  {
    boolean bool2 = false;
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.TAPPABLE_FRIENDS, FriendListProperty.Style.TRANSPARENT_CHECKBOX);
    c = true;
    localFriendListProperty = localFriendListProperty.a(true);
    if (a != FriendListProperty.TouchMode.NON_TAPPABLE) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      e = bool1;
      bool1 = bool2;
      if (a != FriendListProperty.TouchMode.NON_TAPPABLE) {
        bool1 = true;
      }
      f = bool1;
      h = true;
      return localFriendListProperty;
    }
  }
  
  @bpi
  public void onContactsOnSnapchatUpdatedEvent(bcd parambcd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambcd);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    D = AnalyticsEvents.AnalyticsContext.PROFILE_MY_FRIENDS_PAGE;
    b = new a(this.i);
    c = new FriendSectionizer.b();
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    m.setText(2131493239);
    d.f = new agn();
    d.h = true;
    d.i = true;
    v.setText(2131493254);
    paramViewGroup = getArguments();
    final int i;
    if (paramViewGroup != null)
    {
      paramViewGroup = paramViewGroup.getString("selected_friend_username");
      if (TextUtils.isEmpty(paramViewGroup)) {
        break label218;
      }
      i = 0;
      if (i >= f.size()) {
        break label218;
      }
      if (!TextUtils.equals(((Friend)f.get(i)).l(), paramViewGroup)) {
        break label209;
      }
    }
    for (;;)
    {
      new StringBuilder("restorePreviousSelectionStatus() selected_friend_username: ").append(paramViewGroup).append(" selectedFriendIndex: ").append(i);
      if (i >= 0)
      {
        d.a(i);
        u.post(new Runnable()
        {
          public final void run()
          {
            u.setSelection(i);
          }
        });
      }
      return paramLayoutInflater;
      label209:
      i += 1;
      break;
      label218:
      i = -1;
    }
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
    Friend localFriend = mFriend;
    if ((localFriend != null) && (mAction == FriendAction.DELETE))
    {
      d.a(localFriend);
      return;
    }
    C();
  }
  
  protected final String t()
  {
    return super.t() + "_FOR_MY_FRIENDS";
  }
  
  public static final class a
    extends FriendSectionizer<Friend>
  {
    private final Provider<akp> a;
    
    public a(Provider<akp> paramProvider)
    {
      a = paramProvider;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.MyFriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */