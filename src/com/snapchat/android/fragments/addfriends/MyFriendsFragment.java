package com.snapchat.android.fragments.addfriends;

import afa;
import afn;
import ajv;
import ajx;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bbd;
import bbo;
import bcw;
import bcx;
import boh;
import cgb;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;

public class MyFriendsFragment
  extends AddFriendsFragment
{
  public MyFriendsFragment() {}
  
  @SuppressLint({"ValidFragment"})
  public MyFriendsFragment(WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
  }
  
  protected final void B()
  {
    TextView localTextView = u;
    if (d.isEmpty()) {}
    for (int i = 0;; i = 8)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  protected final void a(@cgb ajv paramajv)
  {
    f.clear();
    paramajv = paramajv.o().iterator();
    while (paramajv.hasNext())
    {
      Friend localFriend = (Friend)paramajv.next();
      if ((!TextUtils.equals(ajx.l(), localFriend.h())) && (!mIsBlocked) && (!localFriend.r())) {
        f.add(localFriend);
      }
    }
    Collections.sort(f);
  }
  
  protected final void b(@cgb ajv paramajv)
  {
    a(paramajv);
    f.addAll(0, mBests);
  }
  
  protected final void i()
  {
    w();
    q();
  }
  
  protected final int l()
  {
    return 2131493239;
  }
  
  public final boolean l_()
  {
    return true;
  }
  
  protected final FriendListProperty n()
  {
    boolean bool2 = false;
    FriendListProperty localFriendListProperty = new FriendListProperty(FriendListProperty.TouchMode.TAPPABLE_FRIENDS, FriendListProperty.Style.TRANSPARENT_CHECKBOX);
    c = true;
    localFriendListProperty = localFriendListProperty.a(true);
    if (a != FriendListProperty.TouchMode.NON_TAPPABLE) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      e = bool1;
      bool1 = bool2;
      if (a != FriendListProperty.TouchMode.NON_TAPPABLE) {
        bool1 = true;
      }
      f = bool1;
      h = true;
      return localFriendListProperty;
    }
  }
  
  @boh
  public void onContactsOnSnapchatUpdatedEvent(bbd parambbd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambbd);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    C = AnalyticsEvents.AnalyticsContext.PROFILE_MY_FRIENDS_PAGE;
    b = new a(this.i);
    c = new FriendSectionizer.b();
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    m.setText(2131493239);
    d.e = new afn();
    d.g = true;
    d.h = true;
    u.setText(2131493254);
    paramViewGroup = getArguments();
    final int i;
    if (paramViewGroup != null)
    {
      paramViewGroup = paramViewGroup.getString("selected_friend_username");
      if (TextUtils.isEmpty(paramViewGroup)) {
        break label227;
      }
      i = 0;
      if (i >= f.size()) {
        break label227;
      }
      if (!TextUtils.equals(((Friend)f.get(i)).h(), paramViewGroup)) {
        break label218;
      }
    }
    for (;;)
    {
      Timber.c("MyFriendsFragment", "restorePreviousSelectionStatus() selected_friend_username: " + paramViewGroup + " selectedFriendIndex: " + i, new Object[0]);
      if (i >= 0)
      {
        d.a(i);
        t.post(new Runnable()
        {
          public final void run()
          {
            t.setSelection(i);
          }
        });
      }
      return paramLayoutInflater;
      label218:
      i += 1;
      break;
      label227:
      i = -1;
    }
  }
  
  @boh
  public void onFriendProfileUpdateCompleteEvent(bbo parambbo)
  {
    d.notifyDataSetChanged();
  }
  
  @boh
  public void onRefreshFriendExistsTask(bcx parambcx)
  {
    super.onRefreshFriendExistsTask(parambcx);
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    Friend localFriend = mFriend;
    if ((localFriend != null) && (mAction == FriendAction.DELETE))
    {
      d.a(localFriend);
      return;
    }
    C();
  }
  
  protected final String t()
  {
    return super.t() + "_FOR_MY_FRIENDS";
  }
  
  public static final class a
    extends FriendSectionizer<Friend>
  {
    private final Provider<ajv> a;
    
    public a(Provider<ajv> paramProvider)
    {
      a = paramProvider;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.MyFriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */