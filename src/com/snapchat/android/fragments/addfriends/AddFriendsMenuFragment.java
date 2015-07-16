package com.snapchat.android.fragments.addfriends;

import aga;
import age;
import agi;
import agm;
import akp;
import amt;
import amu;
import amu.a;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import anh;
import anl;
import apg;
import aph;
import ava;
import awa;
import bbo;
import bdw;
import bev;
import bfk;
import bfq;
import bpi;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.SuggestedFriendAction;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import com.snapchat.android.util.FriendSectionizer.f;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;
import in;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import kf;
import nw;

public class AddFriendsMenuFragment
  extends SwipeableFriendsFragment
{
  private View a;
  private final ProfileEventAnalytics b;
  private final Provider<akp> c;
  private final aph n;
  private final awa o;
  private agi p;
  private AnalyticsEvents.AnalyticsContext q;
  private apg r = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      if ((paramAnonymousanh instanceof anl))
      {
        paramAnonymousanh = (anl)paramAnonymousanh;
        if ((c) && (a == SuggestedFriendAction.HIDE)) {
          AddFriendsMenuFragment.a(AddFriendsMenuFragment.this, b);
        }
        AddFriendsMenuFragment.a(AddFriendsMenuFragment.this);
      }
    }
  };
  
  public AddFriendsMenuFragment()
  {
    this(ProfileEventAnalytics.a());
  }
  
  private AddFriendsMenuFragment(aph paramaph, Provider<akp> paramProvider, awa paramawa, ProfileEventAnalytics paramProfileEventAnalytics, agi paramagi)
  {
    super(paramaph, paramProvider);
    n = paramaph;
    c = paramProvider;
    g = null;
    o = paramawa;
    b = paramProfileEventAnalytics;
    p = paramagi;
  }
  
  private AddFriendsMenuFragment(ProfileEventAnalytics paramProfileEventAnalytics)
  {
    this(aph.a(), akp.UNSAFE_USER_PROVIDER, awa.a(), paramProfileEventAnalytics, agi.a());
  }
  
  private void q()
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
    if (!m.isEmpty())
    {
      a.setVisibility(8);
      return;
    }
    a.setVisibility(0);
  }
  
  public final void H()
  {
    q = AnalyticsEvents.AnalyticsContext.CAMERA_PAGE;
    super.H();
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE;
  }
  
  public final void a(int paramInt) {}
  
  protected final void a(kf paramkf)
  {
    AnalyticsEvents.AnalyticsContext localAnalyticsContext = q;
    int i = m.size();
    int j = g.a(FriendAction.ADD, false);
    in localin = new in();
    exitEvent = paramkf;
    if (localAnalyticsContext != null) {
      nextPage = localAnalyticsContext.name();
    }
    suggestFriendCount = Long.valueOf(i);
    suggestFriendAddCount = Long.valueOf(j);
    ScAnalyticsEventEngine.a(localin);
  }
  
  protected final void e()
  {
    super.e();
    ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE, false);
    n();
    bbo.a().a(new bfk(TitleBarManager.Visibility.VISIBLE));
  }
  
  public final boolean g()
  {
    q = AnalyticsEvents.AnalyticsContext.CAMERA_PAGE;
    return super.g();
  }
  
  protected final int i()
  {
    return 2130968580;
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
  
  protected final Integer l()
  {
    return Integer.valueOf(2130968581);
  }
  
  protected final age m()
  {
    return new agm();
  }
  
  protected final void n()
  {
    akp localakp = (akp)c.get();
    if (localakp != null) {}
    synchronized (m)
    {
      m.clear();
      m.addAll(awa.a(localakp, FriendSectionizer.FriendSection.SUGGESTED_FRIEND));
      q();
      return;
    }
  }
  
  protected final FriendListProperty o()
  {
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.OPAQUE_CHECKBOX);
    k = true;
    return localFriendListProperty.a(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    i.findViewById(2131361882).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(LeftSwipeContentFragment.ADD_FRIENDS_BY_USERNAME_FRAGMENT));
        ProfileEventAnalytics.b();
        AddFriendsMenuFragment.a(AddFriendsMenuFragment.this, AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE);
        a(kf.OTHER);
      }
    });
    i.findViewById(2131361883).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(LeftSwipeContentFragment.ADDRESS_BOOK_FRAGMENT));
        ProfileEventAnalytics.c();
        AddFriendsMenuFragment.a(AddFriendsMenuFragment.this, AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE);
        a(kf.OTHER);
      }
    });
    i.findViewById(2131361884).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(LeftSwipeContentFragment.ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT));
        ProfileEventAnalytics.d();
        AddFriendsMenuFragment.a(AddFriendsMenuFragment.this, AnalyticsEvents.AnalyticsContext.SNAPCODE_PAGE);
        a(kf.OTHER);
      }
    });
    i.findViewById(2131361886).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(LeftSwipeContentFragment.ADD_NEARBY_FRIENDS_FRAGMENT));
        ProfileEventAnalytics.f();
        AddFriendsMenuFragment.a(AddFriendsMenuFragment.this, AnalyticsEvents.AnalyticsContext.PROFILE_ADD_NEARBY_FRIENDS_PAGE);
        a(kf.OTHER);
      }
    });
    if (!ava.a(SharedPreferenceKey.IDENTITY_IS_ADD_NEARBY_ENABLED.getKey(), true))
    {
      c(2131361886).setVisibility(8);
      c(2131361887).setVisibility(8);
    }
    a = c(2131361880);
    g.b = new FriendSectionizer.f();
    n();
    paramViewGroup = n;
    paramBundle = paramViewGroup.b(c);
    paramBundle.putExtra("op_code", 1033);
    paramBundle.putExtra("action", SuggestedFriendAction.SEEN.toString());
    paramViewGroup.a(c, paramBundle);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    p.b();
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    super.a(parambdw);
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    n.a(1033, r);
    nw.e();
    p.a(getActivity());
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    if ((parambfq != null) && (user != null)) {
      n();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */