package com.snapchat.android.fragments.addfriends;

import afa;
import afe;
import afi;
import afm;
import ajv;
import alw;
import alx;
import alx.a;
import amk;
import amo;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import aok;
import aol;
import auc;
import avc;
import ban;
import bcw;
import bdw;
import bel;
import ber;
import boh;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.SuggestedFriendAction;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import com.snapchat.android.util.FriendSectionizer.f;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import nf;

public class AddFriendsMenuFragment
  extends SwipeableFriendsFragment
{
  private View a;
  private final ProfileEventAnalytics b;
  private final Provider<ajv> c;
  private final aol m;
  private final avc n;
  private afi o;
  private aok p = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      if ((paramAnonymousamk instanceof amo))
      {
        paramAnonymousamk = (amo)paramAnonymousamk;
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
  
  private AddFriendsMenuFragment(aol paramaol, Provider<ajv> paramProvider, avc paramavc, ProfileEventAnalytics paramProfileEventAnalytics, afi paramafi)
  {
    super(paramaol, paramProvider);
    m = paramaol;
    c = paramProvider;
    g = null;
    n = paramavc;
    b = paramProfileEventAnalytics;
    o = paramafi;
  }
  
  private AddFriendsMenuFragment(ProfileEventAnalytics paramProfileEventAnalytics)
  {
    this(aol.a(), ajv.UNSAFE_USER_PROVIDER, avc.a(), paramProfileEventAnalytics, afi.a());
  }
  
  private void p()
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
    if (!l.isEmpty())
    {
      h.setVisibility(0);
      a.setVisibility(8);
      return;
    }
    h.setVisibility(8);
    a.setVisibility(0);
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE;
  }
  
  public final void a(int paramInt) {}
  
  protected final void e()
  {
    super.e();
    ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE, false);
    m();
    ban.a().a(new bel(TitleBarManager.Visibility.VISIBLE));
  }
  
  protected final int i()
  {
    return 2130968580;
  }
  
  public final alw k()
  {
    new alw()
    {
      public final boolean a(alx.a paramAnonymousa)
      {
        return alx.g.contains(c);
      }
      
      public final boolean b(alx.a paramAnonymousa)
      {
        return false;
      }
    };
  }
  
  protected final afe l()
  {
    return new afm();
  }
  
  protected final void m()
  {
    ajv localajv = (ajv)c.get();
    if (localajv != null) {}
    synchronized (l)
    {
      l.clear();
      l.addAll(avc.a(localajv, FriendSectionizer.FriendSection.SUGGESTED_FRIEND));
      p();
      return;
    }
  }
  
  protected final FriendListProperty n()
  {
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.OPAQUE_CHECKBOX);
    k = true;
    return localFriendListProperty.a(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    c(2131361878).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(LeftSwipeContentFragment.ADD_FRIENDS_BY_USERNAME_FRAGMENT));
        ProfileEventAnalytics.b();
      }
    });
    c(2131361879).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(LeftSwipeContentFragment.ADDRESS_BOOK_FRAGMENT));
        ProfileEventAnalytics.c();
      }
    });
    c(2131361880).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(LeftSwipeContentFragment.ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT));
        ProfileEventAnalytics.d();
      }
    });
    c(2131361882).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(LeftSwipeContentFragment.ADD_NEARBY_FRIENDS_FRAGMENT));
        ProfileEventAnalytics.f();
      }
    });
    if (!auc.a(SharedPreferenceKey.IDENTITY_IS_ADD_NEARBY_ENABLED.getKey(), true))
    {
      c(2131361882).setVisibility(8);
      c(2131361883).setVisibility(8);
    }
    a = c(2131361884);
    g.a = new FriendSectionizer.f();
    m();
    paramViewGroup = m;
    paramBundle = paramViewGroup.b(c);
    paramBundle.putExtra("op_code", 1033);
    paramBundle.putExtra("action", SuggestedFriendAction.SEEN.toString());
    paramViewGroup.a(c, paramBundle);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    o.b();
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    super.a(parambcw);
  }
  
  public void onResume()
  {
    nf.d();
    super.onResume();
    m.a(1033, p);
    nf.e();
    o.a(getActivity());
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    if ((paramber != null) && (user != null)) {
      m();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */