package com.snapchat.android.fragments.addfriends;

import agj;
import agj.a;
import akr;
import amt;
import amu;
import amu.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import awf;
import bbo;
import bcu;
import bev;
import bpi;
import cf;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Set;
import kf;
import nw;

public class FriendsContactsToggleFragment
  extends SnapchatFragment
  implements agj.a, LeftSwipeContainerFragment.a
{
  private agj a;
  private View b;
  private View c;
  private View d;
  private ViewPager e;
  private final akr f;
  private final ProfileEventAnalytics g;
  private MyFriendsFragment h;
  private AddressBookFragment i;
  
  public FriendsContactsToggleFragment()
  {
    this(akr.a(), ProfileEventAnalytics.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private FriendsContactsToggleFragment(akr paramakr, ProfileEventAnalytics paramProfileEventAnalytics)
  {
    f = paramakr;
    g = paramProfileEventAnalytics;
  }
  
  private void a(boolean paramBoolean, kf paramkf)
  {
    if (paramBoolean) {
      if (h != null) {
        h.a(paramkf);
      }
    }
    while (i == null) {
      return;
    }
    i.a(paramkf);
  }
  
  private static void b(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean) {
      localObject = AnalyticsEvents.AnalyticsContext.PROFILE_MY_FRIENDS_PAGE;
    }
    for (paramBoolean = false;; paramBoolean = true)
    {
      ProfileEventAnalytics.a((AnalyticsEvents.AnalyticsContext)localObject, paramBoolean);
      return;
      AnalyticsEvents.AnalyticsContext localAnalyticsContext = AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE;
      localObject = localAnalyticsContext;
      if (!akr.f()) {
        break;
      }
      localObject = localAnalyticsContext;
      if (!akr.Z()) {
        break;
      }
      localObject = localAnalyticsContext;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = 0;; j = 8)
    {
      d.setVisibility(j);
      return;
    }
  }
  
  public final void H()
  {
    if (e.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool, kf.SWIPE_LEFT);
      return;
    }
  }
  
  public final void a(int paramInt, Fragment paramFragment)
  {
    if ((paramInt == 0) && (h == null)) {
      h = ((MyFriendsFragment)paramFragment);
    }
    while ((paramInt != 1) || (i != null)) {
      return;
    }
    i = ((AddressBookFragment)paramFragment);
  }
  
  protected final void e()
  {
    super.e();
    if (e.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      return;
    }
  }
  
  public final boolean g()
  {
    if (e.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool, kf.BACK_BUTTON);
      return super.g();
    }
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
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968680, paramViewGroup, false);
    e = ((ViewPager)c(2131362369));
    paramLayoutInflater = getArguments();
    if (paramLayoutInflater != null) {}
    for (paramLayoutInflater = paramLayoutInflater.getString("selected_friend_username");; paramLayoutInflater = null)
    {
      a = new agj(getFragmentManager(), getString(2131493185), getString(2131493074), paramLayoutInflater, mWindowConfiguration, this);
      e.setAdapter(a);
      paramLayoutInflater = (TextView)c(2131362365);
      paramViewGroup = (TextView)c(2131362367);
      b = c(2131362366);
      c = c(2131362368);
      d = c(2131361838);
      e.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener()
      {
        public final void onPageSelected(int paramAnonymousInt)
        {
          int j = 8;
          boolean bool3 = true;
          boolean bool1;
          int i;
          if (paramAnonymousInt == 0)
          {
            bool1 = true;
            localObject = FriendsContactsToggleFragment.a(FriendsContactsToggleFragment.this);
            if (!bool1) {
              break label135;
            }
            i = 0;
            label29:
            ((View)localObject).setVisibility(i);
            localObject = FriendsContactsToggleFragment.b(FriendsContactsToggleFragment.this);
            if (!bool1) {
              break label141;
            }
            i = j;
            label51:
            ((View)localObject).setVisibility(i);
            i = 0;
            label59:
            if (i >= FriendsContactsToggleFragment.c(FriendsContactsToggleFragment.this).getCount()) {
              break label185;
            }
            localObject = FriendsContactsToggleFragment.c(FriendsContactsToggleFragment.this).getItem(i);
            if ((localObject instanceof SnapchatFragment)) {
              if (i != paramAnonymousInt) {
                break label146;
              }
            }
          }
          label135:
          label141:
          label146:
          for (boolean bool2 = true;; bool2 = false)
          {
            ((SnapchatFragment)localObject).f(bool2);
            if (!bool2) {
              break label152;
            }
            FriendsContactsToggleFragment.a(bool1);
            i += 1;
            break label59;
            bool1 = false;
            break;
            i = 8;
            break label29;
            i = 0;
            break label51;
          }
          label152:
          Object localObject = FriendsContactsToggleFragment.this;
          if (!bool1) {}
          for (bool2 = true;; bool2 = false)
          {
            FriendsContactsToggleFragment.a((FriendsContactsToggleFragment)localObject, bool2, kf.TOGGLE);
            break;
          }
          label185:
          if (bool1)
          {
            localObject = FriendsContactsToggleFragment.this;
            bool1 = bool3;
          }
          for (;;)
          {
            FriendsContactsToggleFragment.a((FriendsContactsToggleFragment)localObject, bool1);
            return;
            FriendsContactsToggleFragment localFriendsContactsToggleFragment = FriendsContactsToggleFragment.this;
            if (akr.f())
            {
              FriendsContactsToggleFragment.d(FriendsContactsToggleFragment.this);
              localObject = localFriendsContactsToggleFragment;
              bool1 = bool3;
              if (akr.Z()) {}
            }
            else
            {
              bool1 = false;
              localObject = localFriendsContactsToggleFragment;
            }
          }
        }
      });
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          FriendsContactsToggleFragment.e(FriendsContactsToggleFragment.this).setCurrentItem(0);
          FriendsContactsToggleFragment.a(FriendsContactsToggleFragment.this, true);
        }
      });
      paramViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          boolean bool = true;
          FriendsContactsToggleFragment.e(FriendsContactsToggleFragment.this).setCurrentItem(1);
          paramAnonymousView = FriendsContactsToggleFragment.this;
          if (akr.f())
          {
            FriendsContactsToggleFragment.d(FriendsContactsToggleFragment.this);
            if (!akr.Z()) {}
          }
          for (;;)
          {
            FriendsContactsToggleFragment.a(paramAnonymousView, bool);
            return;
            bool = false;
          }
        }
      });
      d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          switch (FriendsContactsToggleFragment.e(FriendsContactsToggleFragment.this).getCurrentItem())
          {
          default: 
            return;
          case 0: 
            bbo.a().a(new bev(LeftSwipeContentFragment.MY_FRIENDS_SEARCH_VIEW_FRAGMENT));
            return;
          }
          paramAnonymousView = new Bundle();
          paramAnonymousView.putBoolean("contextIsAdressBook", false);
          bbo.a().a(new bev(LeftSwipeContentFragment.ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT, paramAnonymousView));
        }
      });
      c(2131361823).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          awf.a(getActivity(), FriendsContactsToggleFragment.f(FriendsContactsToggleFragment.this));
          getActivity().onBackPressed();
        }
      });
      nw.e();
      return mFragmentLayout;
    }
  }
  
  @bpi
  public void refreshOnGrantAccessToContactsEvent(bcu parambcu)
  {
    c(mHasGivenAccessToContacts);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.FriendsContactsToggleFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */