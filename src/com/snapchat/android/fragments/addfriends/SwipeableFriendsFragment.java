package com.snapchat.android.fragments.addfriends;

import aga;
import aga.a;
import age;
import agf;
import akp;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import aph;
import bbo;
import bdw;
import bfk;
import bgy;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.model.Friend;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.b;
import com.snapchat.android.util.FriendSectionizer.c;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.inject.Provider;
import kf;
import nw;
import r;

public abstract class SwipeableFriendsFragment
  extends SnapchatFragment
  implements aga.a, LeftSwipeContainerFragment.a, SwipeableListItemTouchListener.b
{
  private String a;
  protected final aph d;
  protected final Provider<akp> e;
  protected final bgy f;
  protected aga g;
  protected StickyListHeadersListView h;
  protected View i;
  protected View j;
  protected TextView k;
  protected TextView l;
  protected final List<Friend> m = Collections.synchronizedList(new ArrayList());
  
  public SwipeableFriendsFragment()
  {
    this(aph.a(), akp.UNSAFE_USER_PROVIDER, bgy.a());
  }
  
  SwipeableFriendsFragment(aph paramaph, Provider<akp> paramProvider)
  {
    this(paramaph, paramProvider, bgy.a());
  }
  
  SwipeableFriendsFragment(aph paramaph, Provider<akp> paramProvider, bgy parambgy)
  {
    d = paramaph;
    e = paramProvider;
    f = parambgy;
  }
  
  private int c(View paramView)
  {
    if ((h == null) || (paramView == null) || (paramView.getParent() == null)) {
      return -1;
    }
    try
    {
      int n = h.getPositionForView(paramView);
      int i1 = h.getHeaderViewsCount();
      return n - i1;
    }
    catch (NullPointerException paramView) {}
    return -1;
  }
  
  public void H()
  {
    a(kf.SWIPE_LEFT);
  }
  
  public final float a(View paramView)
  {
    if (paramView == null) {}
    do
    {
      return 0.0F;
      paramView = paramView.findViewById(2131361858);
    } while (paramView == null);
    return paramView.getTranslationX();
  }
  
  public void a(int paramInt)
  {
    g.a(paramInt);
  }
  
  public final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    aga localaga = g;
    Friend localFriend;
    if (paramBoolean)
    {
      localFriend = null;
      c = localFriend;
      d = null;
      paramView = paramView.getTag();
      if ((paramView instanceof agf))
      {
        paramView = (agf)paramView;
        if (paramBoolean) {
          break label74;
        }
      }
    }
    label74:
    for (paramBoolean = true;; paramBoolean = false)
    {
      paramView.b(paramBoolean);
      localaga.notifyDataSetChanged();
      return;
      localFriend = (Friend)localaga.getItem(paramInt);
      break;
    }
  }
  
  protected final void a(bdw parambdw)
  {
    Friend localFriend = mFriend;
    if (localFriend != null) {}
    switch (2.a[mAction.ordinal()])
    {
    default: 
      n();
      return;
    }
    g.a(localFriend);
  }
  
  protected void a(kf paramkf) {}
  
  public final boolean a(View paramView, float paramFloat)
  {
    if (paramView == null) {
      return false;
    }
    View localView1 = paramView.findViewById(2131361858);
    if (localView1 != null)
    {
      localView1.setTranslationX(paramFloat);
      localView1 = paramView.findViewById(2131361849);
      View localView2 = paramView.findViewById(2131361850);
      paramFloat = Math.max(b(paramView) + paramFloat, 0.0F);
      localView1.setTranslationX(paramFloat);
      localView2.setTranslationX(-paramFloat);
      int n = c(paramView);
      if (n != -1)
      {
        paramView = g;
        d = ((Friend)paramView.getItem(n));
      }
    }
    return true;
  }
  
  public boolean a(Friend paramFriend)
  {
    return false;
  }
  
  public final int b(@r View paramView)
  {
    if (getActivity() == null) {}
    for (;;)
    {
      return 0;
      if (paramView == null) {}
      for (paramView = null; paramView != null; paramView = paramView.findViewById(2131361850)) {
        return paramView.getMeasuredWidth();
      }
    }
  }
  
  public final int d()
  {
    return 0;
  }
  
  public boolean g()
  {
    a(kf.BACK_BUTTON);
    return super.g();
  }
  
  protected abstract int i();
  
  protected Integer l()
  {
    return null;
  }
  
  protected abstract age m();
  
  protected abstract void n();
  
  protected FriendListProperty o()
  {
    return new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.OPAQUE_CHECKBOX).a(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    paramBundle = getActivity();
    mFragmentLayout = paramLayoutInflater.inflate(i(), paramViewGroup, false);
    bbo.a().a(new bfk(TitleBarManager.Visibility.VISIBLE));
    h = ((StickyListHeadersListView)c(2131361879));
    if (l() != null)
    {
      i = paramLayoutInflater.inflate(l().intValue(), null, false);
      h.addHeaderView(i);
    }
    if (p() != null)
    {
      j = paramLayoutInflater.inflate(p().intValue(), null, false);
      k = ((TextView)j.findViewById(2131361889));
      l = ((TextView)j.findViewById(2131361890));
      h.addFooterView(j);
    }
    g = new aga(paramBundle, m, new FriendSectionizer.c(), this, m(), e, o(), f);
    h.setAdapter(g);
    paramLayoutInflater = new SwipeableListItemTouchListener(h, SwipeableListItemTouchListener.SwipeDirection.LEFT, this);
    d = true;
    h.setOnTouchListener(paramLayoutInflater);
    h.setOnScrollListener(paramLayoutInflater.a());
    c(2131361823).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    nw.e();
    return mFragmentLayout;
  }
  
  protected Integer p()
  {
    return null;
  }
  
  public final boolean q_()
  {
    return false;
  }
  
  public final String r_()
  {
    if (a == null) {
      return "UNKNOWN";
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.SwipeableFriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */