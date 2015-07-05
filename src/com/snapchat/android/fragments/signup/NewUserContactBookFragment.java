package com.snapchat.android.fragments.signup;

import afa;
import agr;
import agu;
import ajv;
import ajx;
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
import aol;
import bbd;
import bcw;
import bcx;
import boh;
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
import kb;
import kc;
import kd;
import ke;
import kf;

public class NewUserContactBookFragment
  extends AddFriendsFragment
{
  private final RegistrationAnalytics D;
  private FragmentActivity E;
  
  public NewUserContactBookFragment()
  {
    this(new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  public NewUserContactBookFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(ajv.UNSAFE_USER_PROVIDER, RegistrationAnalytics.a(), paramWindowConfiguration, ajx.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private NewUserContactBookFragment(Provider<ajv> paramProvider, RegistrationAnalytics paramRegistrationAnalytics, WindowConfiguration paramWindowConfiguration, ajx paramajx)
  {
    super(aol.a(), paramProvider, paramWindowConfiguration, paramajx, ProfileEventAnalytics.a());
    D = paramRegistrationAnalytics;
  }
  
  private void J()
  {
    ajv localajv = (ajv)i.get();
    if (localajv != null) {
      AnalyticsEvents.a(localajv.p() - 2);
    }
    K();
  }
  
  private void K()
  {
    RegistrationAnalytics.n();
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
    localEditor.putBoolean(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey(), true);
    localEditor.apply();
    startActivity(new Intent(E, LandingPageActivity.class));
    E.finish();
  }
  
  protected final void A()
  {
    super.A();
    ScAnalyticsEventEngine.a(new kd());
  }
  
  final void a(boolean paramBoolean, int paramInt)
  {
    Object localObject = (ajv)i.get();
    if ((paramBoolean) && (localObject != null) && (((ajv)localObject).p() + paramInt <= 1))
    {
      localObject = new AlertDialog.Builder(E);
      ((AlertDialog.Builder)localObject).setMessage(getString(2131493489));
      ((AlertDialog.Builder)localObject).setPositiveButton(2131493603, new DialogInterface.OnClickListener()
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
    J();
  }
  
  public final boolean g()
  {
    if (x())
    {
      m();
      return false;
    }
    a(true, 0);
    return true;
  }
  
  protected final void i()
  {
    if (!ajx.f())
    {
      u();
      return;
    }
    if (!ajx.Z())
    {
      v();
      return;
    }
    ScAnalyticsEventEngine.a(new kc());
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
  
  @boh
  public void onContactsOnSnapchatUpdatedEvent(bbd parambbd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambbd);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    E = getActivity();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    C = AnalyticsEvents.AnalyticsContext.NEW_USER_CONTACT_BOOK_PAGE;
    e = new agu();
    c = e.b();
    b = e.a();
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    p();
    t.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
        {
          AnalyticsEvents.J();
          NewUserContactBookFragment.a(NewUserContactBookFragment.this);
          ScAnalyticsEventEngine.a(new kf());
        }
      }
    });
    c(2131362175).setVisibility(0);
    g = "REGISTER_ADD_FRIENDS";
    mFragmentLayout.setBackgroundColor(0);
    return mFragmentLayout;
  }
  
  @boh
  public void onRefreshFriendExistsTask(bcx parambcx)
  {
    super.onRefreshFriendExistsTask(parambcx);
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    super.onRefreshOnFriendActionEvent(parambcw);
  }
  
  protected final void w()
  {
    super.w();
    A.setVisibility(0);
    A.setEnabled(true);
    A.setOnClickListener(new View.OnClickListener()
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
          if (!localFriend.g()) {
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
            AnalyticsEvents.a(i, j, d.d.size());
            long l1 = i;
            long l2 = j;
            long l3 = d.d.size();
            paramAnonymousView = new kb();
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
  
  protected final void y()
  {
    A();
    K();
  }
  
  protected final void z()
  {
    super.z();
    ScAnalyticsEventEngine.a(new ke());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.NewUserContactBookFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */