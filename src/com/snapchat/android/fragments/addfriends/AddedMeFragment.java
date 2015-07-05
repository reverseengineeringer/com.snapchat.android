package com.snapchat.android.fragments.addfriends;

import afa;
import afe;
import afk;
import ajv;
import ajx;
import alw;
import alx;
import alx.a;
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
import aol;
import baj;
import ban;
import bbn;
import bcw;
import bel;
import ber;
import bfy;
import boh;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.emoji.Emoji;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import nf;
import q;

public class AddedMeFragment
  extends SwipeableFriendsFragment
{
  protected TextView a;
  protected ajv b;
  private final ajx c;
  private final aol m;
  private final ProfileEventAnalytics n;
  
  public AddedMeFragment()
  {
    this(ajx.a(), aol.a(), ajv.UNSAFE_USER_PROVIDER, bfy.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private AddedMeFragment(ajx paramajx, aol paramaol, Provider<ajv> paramProvider, bfy parambfy)
  {
    super(paramaol, paramProvider, parambfy);
    c = paramajx;
    m = paramaol;
    n = ProfileEventAnalytics.a();
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE;
  }
  
  public final boolean a(@q Friend paramFriend)
  {
    return ajv.a(paramFriend);
  }
  
  protected final void e()
  {
    nf.d();
    super.e();
    ban.a().a(new bel(TitleBarManager.Visibility.VISIBLE));
    b = ajv.g();
    if (b != null) {
      m.d();
    }
    for (;;)
    {
      ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE, false);
      nf.e();
      return;
      Timber.c("AddedMeFragment", "User is not loaded yet. Need to update snaps when the user is loaded.", new Object[0]);
    }
  }
  
  protected final void f()
  {
    b = ajv.g();
    Object localObject = b;
    int i;
    if (!g.isEmpty()) {
      i = 1;
    }
    while ((localObject != null) && (i != 0))
    {
      localObject = ((ajv)localObject).q().iterator();
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
      if (ajx.a(l)) {
        m.d();
      }
    }
  }
  
  protected final int i()
  {
    return 2130968702;
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
    return new afk(true);
  }
  
  protected final void m()
  {
    b = ajv.g();
    int i;
    if (b != null) {
      i = b.h();
    }
    synchronized (l)
    {
      l.clear();
      l.addAll(b.a(null, 200));
      Timber.c("AddedMeFragment", "refreshFriendList - LastSeenAddedMeTimestamp: " + ajx.j() + " Total # of FriendsWhoAddedMe: " + b.q().size() + " # of FriendsWhoAddedMe for display: " + l.size() + " # of NewFriendRequests (should be same with the one in Profile Page): " + i, new Object[0]);
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
    if (l.isEmpty())
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
  
  protected final FriendListProperty n()
  {
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.SWIPEABLE, FriendListProperty.Style.OPAQUE_CHECKBOX).a(true);
    l = true;
    return localFriendListProperty;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a = ((TextView)c(2131362469));
    paramViewGroup = getActivity().getString(2131492890);
    a.setText(paramViewGroup + " " + baj.a(Emoji.DISAPPOINTED_FACE));
    m();
    nf.e();
    return paramLayoutInflater;
  }
  
  @boh
  public void onFriendsProfileImageLoadedEvent(bbn parambbn)
  {
    if ((parambbn == null) || (TextUtils.isEmpty(mFriendUsername))) {
      Timber.f("AddedMeFragment", "friends profile images - invalid FriendProfileImagesLoadedEvent posted!", new Object[0]);
    }
    for (;;)
    {
      return;
      Timber.c("AddedMeFragment", "friends profile images - start processing FriendProfileImagesLoadedEvent for friend: " + mFriendUsername, new Object[0]);
      int i = 0;
      while (i <= h.getChildCount())
      {
        Object localObject1 = h.getWrappedView(i);
        if (localObject1 != null)
        {
          Object localObject2 = (ViewGroup)((View)localObject1).findViewWithTag(mFriendUsername);
          if (localObject2 != null)
          {
            localObject1 = (ImageView)((ViewGroup)localObject2).findViewById(2131361873);
            ImageView localImageView = (ImageView)((ViewGroup)localObject2).findViewById(2131361874);
            localObject2 = (ImageView)((ViewGroup)localObject2).findViewById(2131361872);
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
            Timber.c("AddedMeFragment", "friends profile images - FriendProfileImagesLoadedEvent's been processed for friend:" + mFriendUsername, new Object[0]);
            return;
          }
        }
        i += 1;
      }
    }
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    super.a(parambcw);
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    if ((paramber != null) && (user != null) && (b == null))
    {
      b = user;
      Timber.c("AddedMeFragment", "Update snaps because this fragment has not updated snaps since it became visible.", new Object[0]);
      m.d();
    }
    m();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddedMeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */