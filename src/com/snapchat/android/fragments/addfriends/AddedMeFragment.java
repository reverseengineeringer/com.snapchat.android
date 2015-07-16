package com.snapchat.android.fragments.addfriends;

import aga;
import age;
import agk;
import akp;
import akr;
import amt;
import amu;
import amu.a;
import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import aph;
import bbj;
import bbo;
import bcn;
import bdw;
import bfk;
import bfq;
import bgy;
import bpi;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.AddSourceType;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.emoji.Emoji;
import com.squareup.otto.Bus;
import ip;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import kf;
import ml;
import nw;
import q;

public class AddedMeFragment
  extends SwipeableFriendsFragment
{
  protected TextView a;
  protected akp b;
  private final akr c;
  private final aph n;
  private final ProfileEventAnalytics o;
  
  public AddedMeFragment()
  {
    this(akr.a(), aph.a(), akp.UNSAFE_USER_PROVIDER, bgy.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private AddedMeFragment(akr paramakr, aph paramaph, Provider<akp> paramProvider, bgy parambgy)
  {
    super(paramaph, paramProvider, parambgy);
    c = paramakr;
    n = paramaph;
    o = ProfileEventAnalytics.a();
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE;
  }
  
  protected final void a(kf paramkf)
  {
    for (;;)
    {
      synchronized (this.m)
      {
        Iterator localIterator = this.m.iterator();
        int i = 0;
        if (localIterator.hasNext())
        {
          if (nextmAddSourceType != Friend.AddSourceType.ADDED_BY_ADDED_ME_BACK) {
            i += 1;
          }
        }
        else
        {
          int j = this.m.size();
          int k = g.a(FriendAction.ADD, false);
          int m = g.a(FriendAction.BLOCK, false);
          int i1 = g.a(FriendAction.IGNORE, false);
          int i2 = g.a(FriendAction.SET_DISPLAY_NAME, false);
          ??? = new ip();
          exitEvent = paramkf;
          totalRequestCount = Long.valueOf(j);
          newRequestCount = Long.valueOf(i);
          requestAcceptCount = Long.valueOf(k);
          requestBlockCount = Long.valueOf(m);
          requestIgnoreCount = Long.valueOf(i1);
          requestNameEditCount = Long.valueOf(i2);
          ScAnalyticsEventEngine.a((ml)???);
          return;
        }
      }
    }
  }
  
  public final boolean a(@q Friend paramFriend)
  {
    return akp.a(paramFriend);
  }
  
  protected final void e()
  {
    nw.d();
    super.e();
    bbo.a().a(new bfk(TitleBarManager.Visibility.VISIBLE));
    b = akp.g();
    if (b != null) {
      n.d();
    }
    ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE, false);
    nw.e();
  }
  
  protected final void f()
  {
    b = akp.g();
    Object localObject = b;
    int i;
    if (!g.isEmpty()) {
      i = 1;
    }
    while ((localObject != null) && (i != 0))
    {
      localObject = ((akp)localObject).q().iterator();
      long l = 0L;
      for (;;)
      {
        if (((Iterator)localObject).hasNext())
        {
          l = Math.max(nextmTheyAddedMeTimestamp, l);
          continue;
          i = 0;
          break;
        }
      }
      if (akr.a(l)) {
        n.d();
      }
    }
  }
  
  protected final int i()
  {
    return 2130968703;
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
  
  protected final age m()
  {
    return new agk(true);
  }
  
  protected final void n()
  {
    b = akp.g();
    int i;
    if (b != null) {
      i = b.h();
    }
    synchronized (m)
    {
      m.clear();
      m.addAll(b.a(null, 200));
      new StringBuilder("refreshFriendList - LastSeenAddedMeTimestamp: ").append(akr.j()).append(" Total # of FriendsWhoAddedMe: ").append(b.q().size()).append(" # of FriendsWhoAddedMe for display: ").append(m.size()).append(" # of NewFriendRequests (should be same with the one in Profile Page): ").append(i);
      if (g != null) {
        g.notifyDataSetChanged();
      }
      if ((b == null) || (!b.mInitialized))
      {
        h.setVisibility(8);
        a.setVisibility(8);
        c(2131361918).setVisibility(0);
        return;
      }
    }
    if (m.isEmpty())
    {
      h.setVisibility(8);
      a.setVisibility(0);
      c(2131361918).setVisibility(8);
      return;
    }
    h.setVisibility(0);
    a.setVisibility(8);
    c(2131361918).setVisibility(8);
  }
  
  protected final FriendListProperty o()
  {
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.OPAQUE_CHECKBOX).a(true);
    l = true;
    return localFriendListProperty;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a = ((TextView)c(2131362468));
    paramViewGroup = getActivity().getString(2131492890);
    a.setText(paramViewGroup + " " + bbj.a(Emoji.DISAPPOINTED_FACE));
    n();
    nw.e();
    return paramLayoutInflater;
  }
  
  @bpi
  public void onFriendsProfileImageLoadedEvent(bcn parambcn)
  {
    if ((parambcn == null) || (TextUtils.isEmpty(mFriendUsername))) {}
    for (;;)
    {
      return;
      new StringBuilder("friends profile images - start processing FriendProfileImagesLoadedEvent for friend: ").append(mFriendUsername);
      int i = 0;
      while (i <= h.getChildCount())
      {
        Object localObject1 = h.getWrappedView(i);
        if (localObject1 != null)
        {
          Object localObject2 = (ViewGroup)((View)localObject1).findViewWithTag(mFriendUsername);
          if (localObject2 != null)
          {
            localObject1 = (ImageView)((ViewGroup)localObject2).findViewById(2131361874);
            ImageView localImageView = (ImageView)((ViewGroup)localObject2).findViewById(2131361875);
            localObject2 = (ImageView)((ViewGroup)localObject2).findViewById(2131361873);
            Object localObject3 = f.a(mFriendUsername);
            AnimationDrawable localAnimationDrawable = new AnimationDrawable();
            localObject3 = ((List)localObject3).iterator();
            while (((Iterator)localObject3).hasNext())
            {
              Bitmap localBitmap = (Bitmap)((Iterator)localObject3).next();
              localAnimationDrawable.addFrame(new BitmapDrawable(getResources(), localBitmap), 200);
            }
            localAnimationDrawable.setOneShot(false);
            ((ImageView)localObject1).setBackgroundDrawable(localAnimationDrawable);
            localAnimationDrawable.start();
            ((ImageView)localObject1).setVisibility(0);
            localImageView.setVisibility(0);
            ((ImageView)localObject2).setVisibility(4);
            new StringBuilder("friends profile images - FriendProfileImagesLoadedEvent's been processed for friend:").append(mFriendUsername);
            return;
          }
        }
        i += 1;
      }
    }
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    super.a(parambdw);
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    if ((parambfq != null) && (user != null) && (b == null))
    {
      b = user;
      n.d();
    }
    n();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddedMeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */