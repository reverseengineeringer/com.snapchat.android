package com.snapchat.android.fragments.addfriends;

import afa;
import afa.a;
import afe;
import aff;
import ajv;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import aol;
import ban;
import bcw;
import bel;
import bfy;
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
import nf;
import r;

public abstract class SwipeableFriendsFragment
  extends SnapchatFragment
  implements afa.a, SwipeableListItemTouchListener.b
{
  private String a;
  protected final aol d;
  protected final Provider<ajv> e;
  protected final bfy f;
  protected afa g;
  protected StickyListHeadersListView h;
  protected View i;
  protected TextView j;
  protected TextView k;
  protected final List<Friend> l = Collections.synchronizedList(new ArrayList());
  
  public SwipeableFriendsFragment()
  {
    this(aol.a(), ajv.UNSAFE_USER_PROVIDER, bfy.a());
  }
  
  SwipeableFriendsFragment(aol paramaol, Provider<ajv> paramProvider)
  {
    this(paramaol, paramProvider, bfy.a());
  }
  
  SwipeableFriendsFragment(aol paramaol, Provider<ajv> paramProvider, bfy parambfy)
  {
    d = paramaol;
    e = paramProvider;
    f = parambfy;
  }
  
  private int c(View paramView)
  {
    if ((h == null) || (paramView == null) || (paramView.getParent() == null)) {
      return -1;
    }
    try
    {
      int m = h.getPositionForView(paramView);
      return m;
    }
    catch (NullPointerException paramView) {}
    return -1;
  }
  
  public final float a(View paramView)
  {
    if (paramView == null) {}
    do
    {
      return 0.0F;
      paramView = paramView.findViewById(2131361857);
    } while (paramView == null);
    return paramView.getTranslationX();
  }
  
  public void a(int paramInt)
  {
    g.a(paramInt);
  }
  
  public final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    afa localafa = g;
    Friend localFriend;
    if (paramBoolean)
    {
      localFriend = null;
      b = localFriend;
      c = null;
      paramView = paramView.getTag();
      if ((paramView instanceof aff))
      {
        paramView = (aff)paramView;
        if (paramBoolean) {
          break label74;
        }
      }
    }
    label74:
    for (paramBoolean = true;; paramBoolean = false)
    {
      paramView.b(paramBoolean);
      localafa.notifyDataSetChanged();
      return;
      localFriend = (Friend)localafa.getItem(paramInt);
      break;
    }
  }
  
  public final void a(View paramView, boolean paramBoolean) {}
  
  protected final void a(bcw parambcw)
  {
    Friend localFriend = mFriend;
    if (localFriend != null) {}
    switch (2.a[mAction.ordinal()])
    {
    default: 
      m();
      return;
    }
    g.a(localFriend);
  }
  
  public final boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramView == null) {
      return false;
    }
    View localView1 = paramView.findViewById(2131361857);
    if (localView1 != null)
    {
      localView1.setTranslationX(paramFloat1);
      localView1 = paramView.findViewById(2131361848);
      View localView2 = paramView.findViewById(2131361849);
      paramFloat1 = Math.max(b(paramView) + paramFloat1, 0.0F);
      localView1.setTranslationX(paramFloat1);
      localView2.setTranslationX(-paramFloat1);
      int m = c(paramView);
      if (m != -1)
      {
        paramView = g;
        c = ((Friend)paramView.getItem(m));
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
      for (paramView = null; paramView != null; paramView = paramView.findViewById(2131361849)) {
        return paramView.getMeasuredWidth();
      }
    }
  }
  
  public final int d()
  {
    return 0;
  }
  
  protected abstract int i();
  
  protected abstract afe l();
  
  protected abstract void m();
  
  protected FriendListProperty n()
  {
    return new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.OPAQUE_CHECKBOX).a(true);
  }
  
  protected Integer o()
  {
    return null;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    paramBundle = getActivity();
    mFragmentLayout = paramLayoutInflater.inflate(i(), paramViewGroup, false);
    ban.a().a(new bel(TitleBarManager.Visibility.VISIBLE));
    h = ((StickyListHeadersListView)c(2131361885));
    if (o() != null)
    {
      i = paramLayoutInflater.inflate(o().intValue(), null, false);
      j = ((TextView)i.findViewById(2131361887));
      k = ((TextView)i.findViewById(2131361888));
      h.addFooterView(i);
    }
    g = new afa(paramBundle, l, new FriendSectionizer.c(), this, l(), e, n(), f);
    h.setAdapter(g);
    paramLayoutInflater = new SwipeableListItemTouchListener(h, SwipeableListItemTouchListener.SwipeDirection.LEFT, this);
    d = true;
    h.setOnTouchListener(paramLayoutInflater);
    h.setOnScrollListener(paramLayoutInflater.a());
    c(2131361822).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    nf.e();
    return mFragmentLayout;
  }
  
  public final String s_()
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