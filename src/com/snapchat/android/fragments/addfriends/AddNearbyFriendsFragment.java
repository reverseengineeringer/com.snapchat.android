package com.snapchat.android.fragments.addfriends;

import afa;
import afe;
import afg;
import ahq;
import ahq.a;
import ajv;
import ajx;
import alw;
import alx;
import alx.a;
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
import aol;
import atx;
import ban;
import bbp;
import bcw;
import beh;
import bgk;
import bkk;
import boh;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.model.Friend;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import r;

public class AddNearbyFriendsFragment
  extends SwipeableFriendsFragment
  implements FindNearbyFriendsWorker.a
{
  private final bgk A;
  protected Set<String> a = new HashSet();
  protected Set<String> b = new HashSet();
  protected Set<String> c = new HashSet();
  private atx m;
  private ahq n;
  private final ProfileEventAnalytics o;
  private FindNearbyFriendsWorker p;
  private View q;
  private ImageView r;
  private ImageView s;
  private AlertDialog t;
  private boolean u = false;
  private ajx v;
  private final EasyMetric.EasyMetricFactory w;
  private long x;
  private int y;
  private int z;
  
  public AddNearbyFriendsFragment()
  {
    this(aol.a(), ajv.UNSAFE_USER_PROVIDER, new atx(), new ahq(), ajx.a(), new bgk(), new EasyMetric.EasyMetricFactory());
  }
  
  private AddNearbyFriendsFragment(aol paramaol, Provider<ajv> paramProvider, atx paramatx, ahq paramahq, ajx paramajx, bgk parambgk, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    super(paramaol, paramProvider);
    g = null;
    m = paramatx;
    n = paramahq;
    v = paramajx;
    o = ProfileEventAnalytics.a();
    A = parambgk;
    w = paramEasyMetricFactory;
  }
  
  private void a(AlertDialog paramAlertDialog)
  {
    t();
    t = paramAlertDialog;
    t.show();
  }
  
  private List<Friend> b(List<bkk> paramList)
  {
    ajv localajv = (ajv)e.get();
    if (localajv == null) {
      return new LinkedList();
    }
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      bkk localbkk = (bkk)paramList.next();
      if (!a.contains(localbkk.a()))
      {
        a.add(localbkk.a());
        Friend localFriend = localajv.a(localbkk.b());
        if (localFriend == null)
        {
          localLinkedList2.add(new Friend(localbkk.b(), localbkk.c()));
        }
        else if (!mIsBlocked)
        {
          localLinkedList1.add(localFriend);
          if (!localFriend.j()) {
            mDisplayName = localbkk.c();
          }
        }
        else
        {
          Timber.c("AddNearbyFriendsFrag", "Redacting blocked snapchatter: " + localFriend.h(), new Object[0]);
        }
      }
    }
    localLinkedList2.addAll(localLinkedList1);
    return localLinkedList2;
  }
  
  private void r()
  {
    Object localObject = (ajv)e.get();
    if (localObject != null)
    {
      localObject = ((ajv)localObject).a(b, Integer.MAX_VALUE).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject).next();
        c.add(localFriend.h());
      }
      m();
    }
  }
  
  private void t()
  {
    if ((t != null) && (t.isShowing())) {
      t.cancel();
    }
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return AnalyticsEvents.AnalyticsContext.PROFILE_ADD_NEARBY_FRIENDS_PAGE;
  }
  
  public final void a(int paramInt) {}
  
  public final void a(FindNearbyFriendsWorker.InterruptReason paramInterruptReason)
  {
    q.setVisibility(8);
    switch (7.b[paramInterruptReason.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unrecognized interrupt reason!");
    case 1: 
      j.setText("");
      k.setText("");
      a(n.a(getActivity(), new ahq.a()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            AddNearbyFriendsFragment.b(AddNearbyFriendsFragment.this);
            ajx.aV();
            return;
          }
          getActivity().onBackPressed();
        }
      }));
      return;
    case 2: 
      j.setText("");
      k.setText("");
      paramInterruptReason = new AlertDialog.Builder(getActivity());
      paramInterruptReason.setMessage(2131492903).setCancelable(false).setPositiveButton(2131493269, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          AddNearbyFriendsFragment.b(AddNearbyFriendsFragment.this);
          ajx.aV();
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
      j.setText(2131493330);
      k.setText(2131493526);
      return;
    case 5: 
      if (l.isEmpty()) {
        j.setText(2131493253);
      }
      for (;;)
      {
        k.setText(2131493526);
        return;
        j.setText("");
      }
    }
    j.setText(2131493252);
    k.setText(2131493526);
  }
  
  public final void a(@r List<bkk> arg1)
  {
    if (??? == null)
    {
      Timber.c("AddNearbyFriendsFrag", "Null snapchatter list received", new Object[0]);
      return;
    }
    Timber.c("AddNearbyFriendsFrag", "Found snapchatters from server: " + ???.toString(), new Object[0]);
    List localList = b(???);
    if (localList.size() != 0) {}
    for (;;)
    {
      synchronized (l)
      {
        l.addAll(localList);
        m();
        int i1 = r.getHeight();
        ??? = new int[2];
        h.getLocationOnScreen(???);
        int j = ???[1];
        int i = j;
        if (h.getChildCount() > 0) {
          i = j + h.getLastVisiblePosition() * h.getChildAt(0).getHeight();
        }
        ??? = s;
        int k = ???.getMeasuredHeight();
        int i2 = ???.getMeasuredWidth();
        int i3 = ???.getDrawable().getIntrinsicHeight();
        int i4 = ???.getDrawable().getIntrinsicWidth();
        j = k;
        if (k / i3 > i2 / i4) {
          j = i3 * i2 / i4;
        }
        if (i1 < i + j)
        {
          f = 0.3F;
          if (r.getAlpha() != f) {
            r.animate().alpha(f).setDuration(400L).setListener(new Animator.AnimatorListener()
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
          this.j.setText(2131493503);
          this.k.setText(2131492921);
          return;
        }
      }
      float f = 0.1F;
    }
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
    return 2130968582;
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
        boolean bool = false;
        if (c == AndroidNotificationManager.Type.ADDFRIEND)
        {
          Timber.c("AddNearbyFriendsFrag", "Dropping non-silent add friend notification for user: " + a, new Object[0]);
          bool = true;
        }
        return bool;
      }
    };
  }
  
  protected final afe l()
  {
    return new afg(c, m);
  }
  
  protected final void m()
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
  }
  
  protected final FriendListProperty n()
  {
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.WHITE_TEXT);
    j = true;
    g = true;
    return localFriendListProperty;
  }
  
  protected final Integer o()
  {
    return Integer.valueOf(2130968581);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AddNearbyFriendsFragment.a(AddNearbyFriendsFragment.this);
      }
    });
    r();
    q = c(2131361889);
    p = new FindNearbyFriendsWorker(getActivity(), this);
    r = ((ImageView)c(2131361891));
    s = ((ImageView)c(2131361890));
    x = SystemClock.elapsedRealtime();
    y = 0;
    z = 0;
    EasyMetric.EasyMetricFactory.a("ANF_LOAD_VIEW").b(true);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    if (p.b()) {
      p.a(FindNearbyFriendsWorker.InterruptReason.INTENTIONAL);
    }
    t();
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    super.a(parambcw);
    Friend localFriend = mFriend;
    if (localFriend != null) {
      switch (7.a[mAction.ordinal()])
      {
      }
    }
    for (;;)
    {
      ban.a().a(new bbp());
      return;
      l.remove(localFriend);
      g.a(localFriend);
      z += 1;
      EasyMetric.EasyMetricFactory.a("ANF_BLOCK").a("name", localFriend.h()).b(true);
      continue;
      b.add(localFriend.h());
      y += 1;
      EasyMetric.EasyMetricFactory.a("ANF_ADD").a("name", localFriend.h()).b(true);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    p.a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.clear();
    b.clear();
    c.clear();
    EasyMetric.EasyMetricFactory.a("ANF_SESSION_END").a("snapchattersFound", Integer.valueOf(l.size())).a("snapchattersAdded", Integer.valueOf(y)).a("snapchattersBlocked", Integer.valueOf(z)).a("sessionDuration", Long.valueOf(SystemClock.elapsedRealtime() - x)).b(true);
  }
  
  @boh
  public void onSyncAllCompletedEvent(beh parambeh)
  {
    r();
  }
  
  public final void p()
  {
    j.setText(2131493383);
    k.setText(2131492921);
    q.setVisibility(0);
  }
  
  public final void q()
  {
    j.setText(2131493503);
    k.setText(2131492921);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddNearbyFriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */