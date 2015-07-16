package com.snapchat.android.fragments.signup;

import aga;
import aho;
import ahr;
import akp;
import akr;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Button;
import aph;
import bcd;
import bdw;
import bdx;
import bpi;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.snapchat.android.fragments.addfriends.FriendListProperty;
import com.snapchat.android.model.Friend;
import com.snapchat.android.ui.window.WindowConfiguration;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import javax.inject.Provider;
import kt;
import ku;
import kv;
import kw;
import kx;

public class NewUserContactBookFragment
  extends AddFriendsFragment
{
  private final RegistrationAnalytics E;
  private FragmentActivity F;
  
  public NewUserContactBookFragment()
  {
    this(new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  public NewUserContactBookFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(akp.UNSAFE_USER_PROVIDER, RegistrationAnalytics.a(), paramWindowConfiguration, akr.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private NewUserContactBookFragment(Provider<akp> paramProvider, RegistrationAnalytics paramRegistrationAnalytics, WindowConfiguration paramWindowConfiguration, akr paramakr)
  {
    super(aph.a(), paramProvider, paramWindowConfiguration, paramakr, ProfileEventAnalytics.a());
    E = paramRegistrationAnalytics;
  }
  
  private void L()
  {
    akp localakp = (akp)i.get();
    if (localakp != null) {
      AnalyticsEvents.a(localakp.p() - 2);
    }
    M();
  }
  
  private void M()
  {
    RegistrationAnalytics.n();
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
    localEditor.putBoolean(SharedPreferenceKey.SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED.getKey(), true);
    localEditor.apply();
    startActivity(new Intent(F, LandingPageActivity.class));
    F.finish();
  }
  
  final void a(boolean paramBoolean, int paramInt)
  {
    Object localObject = (akp)i.get();
    if ((paramBoolean) && (localObject != null) && (((akp)localObject).p() + paramInt <= 1))
    {
      localObject = new AlertDialog.Builder(F);
      ((AlertDialog.Builder)localObject).setMessage(getString(2131493489));
      ((AlertDialog.Builder)localObject).setPositiveButton(2131493601, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          NewUserContactBookFragment.c(NewUserContactBookFragment.this);
          AnalyticsEvents.e(true);
          AnalyticsEvents.I();
          NewUserContactBookFragment.a(NewUserContactBookFragment.this);
          RegistrationAnalytics.b(true);
        }
      });
      ((AlertDialog.Builder)localObject).setNegativeButton(2131493248, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          AnalyticsEvents.e(false);
          NewUserContactBookFragment.a(NewUserContactBookFragment.this);
          RegistrationAnalytics.b(false);
        }
      });
      ((AlertDialog.Builder)localObject).create().show();
      return;
    }
    L();
  }
  
  public final boolean g()
  {
    if (q_())
    {
      m();
      return false;
    }
    a(true, 0);
    return true;
  }
  
  protected final void i()
  {
    if (!akr.f())
    {
      u();
      return;
    }
    if (!akr.Z())
    {
      v();
      return;
    }
    ScAnalyticsEventEngine.a(new ku());
    w();
  }
  
  protected final FriendListProperty n()
  {
    FriendListProperty localFriendListProperty = super.n();
    g = true;
    return localFriendListProperty;
  }
  
  protected final int o()
  {
    return 2130838105;
  }
  
  @bpi
  public void onContactsOnSnapchatUpdatedEvent(bcd parambcd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambcd);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    F = getActivity();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    D = AnalyticsEvents.AnalyticsContext.NEW_USER_CONTACT_BOOK_PAGE;
    e = new ahr();
    c = e.b();
    b = e.a();
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    p();
    u.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
        {
          AnalyticsEvents.J();
          NewUserContactBookFragment.a(NewUserContactBookFragment.this);
          ScAnalyticsEventEngine.a(new kx());
        }
      }
    });
    c(2131362175).setVisibility(0);
    g = "REGISTER_ADD_FRIENDS";
    mFragmentLayout.setBackgroundColor(0);
    return mFragmentLayout;
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
  
  protected final void w()
  {
    super.w();
    B.setVisibility(0);
    B.setEnabled(true);
    B.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        int k = 0;
        paramAnonymousView = NewUserContactBookFragment.this;
        boolean bool;
        Object localObject;
        int i;
        label35:
        int j;
        if (!NewUserContactBookFragment.b(NewUserContactBookFragment.this).isEmpty())
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
          if (!localFriend.h()) {
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
          paramAnonymousView.a(bool, j);
          if (bool)
          {
            AnalyticsEvents.a(i, j, d.e.size());
            long l1 = i;
            long l2 = j;
            long l3 = d.e.size();
            paramAnonymousView = new kt();
            contactFoundCount = Long.valueOf(l1);
            friendAddCount = Long.valueOf(l2);
            contactInviteCount = Long.valueOf(l3);
            ScAnalyticsEventEngine.a(paramAnonymousView);
            return;
          }
          AnalyticsEvents.I();
          return;
        }
      }
    });
  }
  
  protected final void x()
  {
    z();
    M();
  }
  
  protected final void y()
  {
    super.y();
    ScAnalyticsEventEngine.a(new kw());
  }
  
  protected final void z()
  {
    super.z();
    ScAnalyticsEventEngine.a(new kv());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.NewUserContactBookFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */