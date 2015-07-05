package com.snapchat.android.fragments.addfriends;

import afj;
import ajx;
import alw;
import alx;
import alx.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import avh;
import ban;
import bbu;
import bdw;
import boh;
import cf;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Set;
import nf;

public class FriendsContactsToggleFragment
  extends SnapchatFragment
{
  private afj a;
  private View b;
  private View c;
  private View d;
  private ViewPager e;
  private final ajx f;
  private final ProfileEventAnalytics g;
  
  public FriendsContactsToggleFragment()
  {
    this(ajx.a(), ProfileEventAnalytics.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private FriendsContactsToggleFragment(ajx paramajx, ProfileEventAnalytics paramProfileEventAnalytics)
  {
    f = paramajx;
    g = paramProfileEventAnalytics;
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
      if (!ajx.f()) {
        break;
      }
      localObject = localAnalyticsContext;
      if (!ajx.Z()) {
        break;
      }
      localObject = localAnalyticsContext;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      d.setVisibility(i);
      return;
    }
  }
  
  protected final void e()
  {
    super.e();
    b(b.isShown());
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
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968679, paramViewGroup, false);
    e = ((ViewPager)c(2131362371));
    paramLayoutInflater = getArguments();
    if (paramLayoutInflater != null) {}
    for (paramLayoutInflater = paramLayoutInflater.getString("selected_friend_username");; paramLayoutInflater = null)
    {
      a = new afj(getFragmentManager(), getString(2131493185), getString(2131493185), paramLayoutInflater, mWindowConfiguration);
      e.setAdapter(a);
      paramLayoutInflater = (TextView)c(2131362367);
      paramViewGroup = (TextView)c(2131362369);
      b = c(2131362368);
      c = c(2131362370);
      d = c(2131361837);
      e.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener()
      {
        public final void onPageSelected(int paramAnonymousInt)
        {
          int j = 8;
          boolean bool3 = true;
          boolean bool1;
          Object localObject;
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
              break label152;
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
            if (bool2) {
              FriendsContactsToggleFragment.a(bool1);
            }
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
            if (ajx.f())
            {
              FriendsContactsToggleFragment.d(FriendsContactsToggleFragment.this);
              localObject = localFriendsContactsToggleFragment;
              bool1 = bool3;
              if (ajx.Z()) {}
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
          if (ajx.f())
          {
            FriendsContactsToggleFragment.d(FriendsContactsToggleFragment.this);
            if (!ajx.Z()) {}
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
            ban.a().a(new bdw(LeftSwipeContentFragment.MY_FRIENDS_SEARCH_VIEW_FRAGMENT));
            return;
          }
          ban.a().a(new bdw(LeftSwipeContentFragment.ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT));
        }
      });
      c(2131361822).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          avh.a(getActivity(), FriendsContactsToggleFragment.f(FriendsContactsToggleFragment.this));
          getActivity().onBackPressed();
        }
      });
      nf.e();
      return mFragmentLayout;
    }
  }
  
  @boh
  public void refreshOnGrantAccessToContactsEvent(bbu parambbu)
  {
    c(mHasGivenAccessToContacts);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.FriendsContactsToggleFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */