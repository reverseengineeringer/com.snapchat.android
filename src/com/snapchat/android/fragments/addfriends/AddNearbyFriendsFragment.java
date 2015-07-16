package com.snapchat.android.fragments.addfriends;

import aga;
import age;
import agg;
import aim;
import aim.a;
import akp;
import akr;
import amt;
import amu;
import amu.a;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.TextView;
import aph;
import auv;
import bbo;
import bcp;
import bdw;
import bfg;
import bhk;
import bll;
import bpi;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import kd;
import kf;
import r;

public class AddNearbyFriendsFragment
  extends SwipeableFriendsFragment
  implements FindNearbyFriendsWorker.a
{
  private int A;
  private final bhk B;
  protected Set<String> a = new HashSet();
  protected Set<String> b = new HashSet();
  protected Set<String> c = new HashSet();
  private auv n;
  private aim o;
  private final ProfileEventAnalytics p;
  private FindNearbyFriendsWorker q;
  private View r;
  private ImageView s;
  private ImageView t;
  private AlertDialog u;
  private boolean v = false;
  private akr w;
  private final EasyMetric.EasyMetricFactory x;
  private long y;
  private int z;
  
  public AddNearbyFriendsFragment()
  {
    this(aph.a(), akp.UNSAFE_USER_PROVIDER, new auv(), new aim(), akr.a(), new bhk(), new EasyMetric.EasyMetricFactory());
  }
  
  private AddNearbyFriendsFragment(aph paramaph, Provider<akp> paramProvider, auv paramauv, aim paramaim, akr paramakr, bhk parambhk, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    super(paramaph, paramProvider);
    g = null;
    n = paramauv;
    o = paramaim;
    w = paramakr;
    p = ProfileEventAnalytics.a();
    B = parambhk;
    x = paramEasyMetricFactory;
  }
  
  private void a(AlertDialog paramAlertDialog)
  {
    u();
    u = paramAlertDialog;
    u.show();
  }
  
  private List<Friend> b(List<bll> paramList)
  {
    akp localakp = (akp)e.get();
    if (localakp == null) {
      return new LinkedList();
    }
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      bll localbll = (bll)paramList.next();
      if (!a.contains(localbll.a()))
      {
        a.add(localbll.a());
        Friend localFriend = localakp.a(localbll.b());
        if (localFriend == null)
        {
          localLinkedList2.add(new Friend(localbll.b(), localbll.c()));
        }
        else if (!mIsBlocked)
        {
          localLinkedList1.add(localFriend);
          if (!localFriend.n()) {
            mDisplayName = localbll.c();
          }
        }
        else
        {
          new StringBuilder("Redacting blocked snapchatter: ").append(localFriend.l());
        }
      }
    }
    localLinkedList2.addAll(localLinkedList1);
    return localLinkedList2;
  }
  
  private void t()
  {
    Object localObject = (akp)e.get();
    if (localObject != null)
    {
      localObject = ((akp)localObject).a(b, Integer.MAX_VALUE).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject).next();
        c.add(localFriend.l());
      }
      n();
    }
  }
  
  private void u()
  {
    if ((u != null) && (u.isShowing())) {
      u.cancel();
    }
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return AnalyticsEvents.AnalyticsContext.PROFILE_ADD_NEARBY_FRIENDS_PAGE;
  }
  
  public final void a(int paramInt) {}
  
  public final void a(FindNearbyFriendsWorker.InterruptReason paramInterruptReason)
  {
    r.setVisibility(8);
    switch (7.b[paramInterruptReason.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unrecognized interrupt reason!");
    case 1: 
      k.setText("");
      l.setText("");
      a(o.a(getActivity(), new aim.a()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            AddNearbyFriendsFragment.b(AddNearbyFriendsFragment.this);
            akr.aS();
            return;
          }
          getActivity().onBackPressed();
        }
      }));
      return;
    case 2: 
      k.setText("");
      l.setText("");
      paramInterruptReason = new AlertDialog.Builder(getActivity());
      paramInterruptReason.setMessage(2131492903).setCancelable(false).setPositiveButton(2131493269, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          AddNearbyFriendsFragment.b(AddNearbyFriendsFragment.this);
          akr.aS();
          AddNearbyFriendsFragment.c(AddNearbyFriendsFragment.this).a();
        }
      }).setNegativeButton(2131493259, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          getActivity().onBackPressed();
        }
      });
      a(paramInterruptReason.create());
      return;
    case 3: 
    case 4: 
      k.setText(2131493330);
      l.setText(2131493526);
      return;
    case 5: 
      if (m.isEmpty()) {
        k.setText(2131493253);
      }
      for (;;)
      {
        l.setText(2131493526);
        return;
        k.setText("");
      }
    }
    k.setText(2131493252);
    l.setText(2131493526);
  }
  
  public final void a(@r List<bll> arg1)
  {
    if (??? == null) {
      return;
    }
    new StringBuilder("Found snapchatters from server: ").append(???.toString());
    List localList = b(???);
    if (localList.size() != 0) {}
    for (;;)
    {
      synchronized (this.m)
      {
        this.m.addAll(localList);
        n();
        int m = s.getHeight();
        ??? = new int[2];
        h.getLocationOnScreen(???);
        int j = ???[1];
        int i = j;
        if (h.getChildCount() > 0) {
          i = j + h.getLastVisiblePosition() * h.getChildAt(0).getHeight();
        }
        ??? = t;
        int k = ???.getMeasuredHeight();
        int i1 = ???.getMeasuredWidth();
        int i2 = ???.getDrawable().getIntrinsicHeight();
        int i3 = ???.getDrawable().getIntrinsicWidth();
        j = k;
        if (k / i2 > i1 / i3) {
          j = i2 * i1 / i3;
        }
        if (m < i + j)
        {
          f = 0.3F;
          if (s.getAlpha() != f) {
            s.animate().alpha(f).setDuration(400L).setListener(new Animator.AnimatorListener()
            {
              public final void onAnimationCancel(Animator paramAnonymousAnimator)
              {
                AddNearbyFriendsFragment.a(AddNearbyFriendsFragment.this, false);
              }
              
              public final void onAnimationEnd(Animator paramAnonymousAnimator)
              {
                AddNearbyFriendsFragment.a(AddNearbyFriendsFragment.this, false);
              }
              
              public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
              
              public final void onAnimationStart(Animator paramAnonymousAnimator)
              {
                if (AddNearbyFriendsFragment.d(AddNearbyFriendsFragment.this))
                {
                  paramAnonymousAnimator.cancel();
                  return;
                }
                AddNearbyFriendsFragment.a(AddNearbyFriendsFragment.this, true);
              }
            }).start();
          }
          this.k.setText(2131493503);
          l.setText(2131492921);
          return;
        }
      }
      float f = 0.1F;
    }
  }
  
  protected final void a(kf paramkf)
  {
    int i = m.size();
    int j = g.a(FriendAction.ADD, false);
    int k = g.a(FriendAction.BLOCK, false);
    kd localkd = new kd();
    exitEvent = paramkf;
    nearbyFriendCount = Long.valueOf(i);
    nearbyFriendAddCount = Long.valueOf(j);
    nearbyFriendBlockCount = Long.valueOf(k);
    ScAnalyticsEventEngine.a(localkd);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void e()
  {
    super.e();
    ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_ADD_NEARBY_FRIENDS_PAGE, false);
  }
  
  protected final int i()
  {
    return 2130968583;
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
        if (c == AndroidNotificationManager.Type.ADDFRIEND)
        {
          new StringBuilder("Dropping non-silent add friend notification for user: ").append(a);
          return true;
        }
        return false;
      }
    };
  }
  
  protected final age m()
  {
    return new agg(c, n);
  }
  
  protected final void n()
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
  }
  
  protected final FriendListProperty o()
  {
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.WHITE_TEXT);
    j = true;
    g = true;
    return localFriendListProperty;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AddNearbyFriendsFragment.a(AddNearbyFriendsFragment.this);
      }
    });
    t();
    r = c(2131361891);
    q = new FindNearbyFriendsWorker(getActivity(), this);
    s = ((ImageView)c(2131361893));
    t = ((ImageView)c(2131361892));
    y = SystemClock.elapsedRealtime();
    z = 0;
    A = 0;
    EasyMetric.EasyMetricFactory.a("ANF_LOAD_VIEW").b(true);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    if (q.b()) {
      q.a(FindNearbyFriendsWorker.InterruptReason.INTENTIONAL);
    }
    u();
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    super.a(parambdw);
    Friend localFriend = mFriend;
    if (localFriend != null) {
      switch (7.a[mAction.ordinal()])
      {
      }
    }
    for (;;)
    {
      bbo.a().a(new bcp());
      return;
      m.remove(localFriend);
      g.a(localFriend);
      A += 1;
      EasyMetric.EasyMetricFactory.a("ANF_BLOCK").a("name", localFriend.l()).b(true);
      continue;
      b.add(localFriend.l());
      z += 1;
      EasyMetric.EasyMetricFactory.a("ANF_ADD").a("name", localFriend.l()).b(true);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    q.a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.clear();
    b.clear();
    c.clear();
    EasyMetric.EasyMetricFactory.a("ANF_SESSION_END").a("snapchattersFound", Integer.valueOf(m.size())).a("snapchattersAdded", Integer.valueOf(z)).a("snapchattersBlocked", Integer.valueOf(A)).a("sessionDuration", Long.valueOf(SystemClock.elapsedRealtime() - y)).b(true);
  }
  
  @bpi
  public void onSyncAllCompletedEvent(bfg parambfg)
  {
    t();
  }
  
  protected final Integer p()
  {
    return Integer.valueOf(2130968582);
  }
  
  public final void q()
  {
    k.setText(2131493383);
    l.setText(2131492921);
    r.setVisibility(0);
  }
  
  public final void r()
  {
    k.setText(2131493503);
    l.setText(2131492921);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddNearbyFriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */