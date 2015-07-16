package com.snapchat.android.fragments.sendto;

import aas;
import aeb;
import ahd;
import ahd.a;
import ahh;
import aji;
import ajw;
import ajy;
import akg;
import akk;
import akp;
import akr;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import aoz;
import apa;
import apb;
import aqj;
import aqz;
import aqz.a;
import ars;
import atu;
import auk;
import avr;
import awf;
import azy;
import bbo;
import bbq;
import bbs;
import bbt;
import bbu;
import bbx;
import bdo;
import bdw;
import bdx;
import beo;
import bet;
import bev;
import bfk;
import bpi;
import bqs;
import bqt;
import chc;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import com.snapchat.android.model.Friend.a;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.SendToBottomPanelView;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import javax.inject.Inject;
import ns;
import of;
import xyz.danoz.recyclerviewfastscroller.vertical.VerticalRecyclerViewFastScroller;

public class SendToFragment
  extends SnapchatFragment
  implements ahd.a
{
  private static aji b;
  @Inject
  public aas a;
  private View c;
  private View d;
  private ahd e;
  private Handler f = new Handler();
  private InputMethodManager g;
  private EditText h;
  private View i;
  private boolean j = false;
  private akp k;
  private LinkedHashSet<Friend> l = new LinkedHashSet();
  private ArrayList<ajy> m = new ArrayList();
  private SendToBottomPanelView n;
  private final of o = of.a();
  private final NetworkAnalytics p = NetworkAnalytics.a();
  private final DiscoverUsageAnalytics q = new DiscoverUsageAnalytics();
  private final ns r = new ns();
  
  public SendToFragment()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public static SendToFragment a(@chc aji paramaji)
  {
    b = paramaji;
    return new SendToFragment();
  }
  
  private void n()
  {
    Runnable local2 = new Runnable()
    {
      public final void run()
      {
        SendToFragment.q(SendToFragment.this).getScrollView().fullScroll(66);
        if ((SendToFragment.b(SendToFragment.this).isEmpty()) && (SendToFragment.c(SendToFragment.this).isEmpty()))
        {
          SendToFragment.r(SendToFragment.this);
          return;
        }
        if (SendToFragment.q(SendToFragment.this).getVisibility() == 8)
        {
          SendToFragment.s(SendToFragment.this);
          return;
        }
        SendToFragment.q(SendToFragment.this).a(true);
      }
    };
    f.post(local2);
  }
  
  private void o()
  {
    c.setVisibility(0);
    d.setVisibility(0);
    h.setText("");
    h.clearFocus();
    g.hideSoftInputFromWindow(mFragmentLayout.getWindowToken(), 0);
    h.setVisibility(4);
    j = false;
    a(WindowConfiguration.StatusBarDrawMode.DRAW_BACKGROUND_BEHIND);
  }
  
  public final void a(ahh paramahh, boolean paramBoolean)
  {
    final Object localObject;
    if ((paramahh instanceof Friend))
    {
      paramahh = (Friend)paramahh;
      localObject = o;
      boolean bool = j;
      mNumTotalActions += 1;
      if (bool)
      {
        mNumSearchedFriends += 1;
        if (!paramBoolean) {
          break label197;
        }
        if (l.size() >= 200) {
          break label175;
        }
        l.add(paramahh);
      }
    }
    for (;;)
    {
      e.a.b();
      i();
      return;
      if (paramahh.j())
      {
        mNumBestFriends += 1;
        break;
      }
      if (mIsRecent)
      {
        mNumRecentFriends += 1;
        break;
      }
      if (mJustAdded)
      {
        mNumJustAddedFriends += 1;
        break;
      }
      mNumOtherFriends += 1;
      break;
      label175:
      bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492953));
      continue;
      label197:
      l.remove(paramahh);
      continue;
      if ((paramahh instanceof ajy))
      {
        int i1;
        if (paramBoolean)
        {
          localObject = (ajy)paramahh;
          if (!(localObject instanceof ajw)) {
            break label406;
          }
          if (akr.P()) {
            break label426;
          }
          i1 = 1;
          label242:
          if (i1 != 0)
          {
            localObject = (ajy)paramahh;
            if (!(localObject instanceof ajw)) {
              break label431;
            }
            localObject = new AlertDialog.Builder(getActivity());
            View localView = LayoutInflater.from(getActivity()).inflate(2130968711, null);
            CheckBox localCheckBox = (CheckBox)localView.findViewById(2131362543);
            ((LinearLayout)localView).removeView(localCheckBox);
            ((AlertDialog.Builder)localObject).setInverseBackgroundForced(true);
            ((AlertDialog.Builder)localObject).setView(localView).setTitle(2131492904).setNegativeButton(2131492952, null).setPositiveButton(2131492866, null);
            ((AlertDialog.Builder)localObject).create().show();
          }
        }
        for (;;)
        {
          paramahh = (ajy)paramahh;
          localObject = o;
          mNumTotalActions += 1;
          mNumStories += 1;
          if (!paramBoolean) {
            break label464;
          }
          m.add(paramahh);
          break;
          label406:
          if (!a.a(mStoryId))
          {
            i1 = 1;
            break label242;
          }
          label426:
          i1 = 0;
          break label242;
          label431:
          new aqz(getActivity(), (ajy)localObject, a, new aqz.a()
          {
            public final void a(boolean paramAnonymousBoolean)
            {
              if (!paramAnonymousBoolean)
              {
                SendToFragment.c(SendToFragment.this).remove(localObject);
                ka.b();
                i();
              }
            }
          }).show();
        }
        label464:
        m.remove(paramahh);
      }
    }
  }
  
  public final boolean a(ahh paramahh)
  {
    if ((paramahh instanceof Friend)) {
      return l.contains(paramahh);
    }
    if ((paramahh instanceof ajy)) {
      return m.contains(paramahh);
    }
    return false;
  }
  
  public final void e()
  {
    bbo.a().a(new bfk(TitleBarManager.Visibility.VISIBLE));
    bbo.a().a(new bet(true));
    bbo.a().a(new bbx(1));
    boolean bool = avr.a(b);
    of localof = o;
    mSelectFriendMetric = EasyMetric.EasyMetricFactory.b("SELECT_FRIEND").a("type", of.b(bool)).b();
    localof.c();
    mNumSelectFriendSession += 1;
    if (mPrepareSnapMetric != null)
    {
      mPrepareSnapMetric.a("type", of.b(bool)).a("session_number", Integer.valueOf(mNumSelectFriendSession)).b(false);
      mPrepareSnapMetric = null;
    }
  }
  
  public final void f()
  {
    super.f();
  }
  
  public final boolean f_()
  {
    return true;
  }
  
  public final boolean g()
  {
    if (j)
    {
      o();
      return true;
    }
    o.d();
    return false;
  }
  
  protected final void i()
  {
    Iterator localIterator = m.iterator();
    String str2 = "";
    Object localObject;
    for (String str1 = ""; localIterator.hasNext(); str1 = ", ")
    {
      localObject = (ajy)localIterator.next();
      str2 = str2 + str1 + mDisplayName;
    }
    localIterator = l.iterator();
    while (localIterator.hasNext())
    {
      localObject = (Friend)localIterator.next();
      str2 = str2 + str1 + ((Friend)localObject).e();
      str1 = ", ";
    }
    n.setText(str2);
    n();
  }
  
  public final boolean j_()
  {
    return true;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    g = ((InputMethodManager)getActivity().getSystemService("input_method"));
    k = akp.a(getActivity());
    l = bmMediaMailingMetadata.d();
    if (bmSnapType == Mediabryo.SnapType.SNAP) {
      m = bmMediaMailingMetadata).mPostToStories;
    }
    Object localObject = (RecyclerView)c(2131362195);
    ImageView localImageView = (ImageView)c(2131362616);
    FragmentActivity localFragmentActivity = getActivity();
    paramBundle = b;
    akp localakp = k;
    if (mSnapType == Mediabryo.SnapType.DISCOVER) {}
    for (paramBundle = new aoz(localakp);; paramBundle = new apa(localakp, akk.a()))
    {
      e = new ahd(localFragmentActivity, paramBundle, new Friend.a(), this, new ars(), new aqj(localImageView, (RecyclerView)localObject));
      getActivity();
      ((RecyclerView)localObject).setLayoutManager(new LinearLayoutManager());
      ((RecyclerView)localObject).setAdapter(e);
      ((RecyclerView)localObject).setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (SendToFragment.h(SendToFragment.this))
          {
            SendToFragment.o(SendToFragment.this).a(WindowConfiguration.StatusBarDrawMode.DRAW_BACKGROUND_BEHIND);
            SendToFragment.p(SendToFragment.this).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
          }
          return false;
        }
      });
      paramBundle = new bqs(e);
      ((RecyclerView)localObject).a(paramBundle);
      paramBundle = new bqt((RecyclerView)localObject, paramBundle);
      b = e;
      f.add(paramBundle);
      paramBundle = (VerticalRecyclerViewFastScroller)c(2131362615);
      paramBundle.setRecyclerView((RecyclerView)localObject);
      ((RecyclerView)localObject).setOnScrollListener(paramBundle.getOnScrollListener());
      c = c(2131362611);
      d = c(2131362608);
      h = ((EditText)c(2131362609));
      i = c(2131361837);
      c(2131362610).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (SendToFragment.h(SendToFragment.this)) {
            SendToFragment.i(SendToFragment.this);
          }
          paramAnonymousView = SendToFragment.a(SendToFragment.this);
          paramAnonymousView.a("add_friend");
          paramAnonymousView.c();
          bbo.a().a(new bev(new AddFriendsMenuFragment()));
        }
      });
      c.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SendToFragment.j(SendToFragment.this);
        }
      });
      h.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          SendToFragment.k(SendToFragment.this).b().filter(paramAnonymousCharSequence.toString());
          if (TextUtils.isEmpty(paramAnonymousCharSequence))
          {
            SendToFragment.l(SendToFragment.this).setVisibility(4);
            return;
          }
          SendToFragment.l(SendToFragment.this).setVisibility(0);
        }
      });
      i.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SendToFragment.m(SendToFragment.this).setText("");
        }
      });
      h.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (paramAnonymousMotionEvent.getAction() == 0) {
            SendToFragment.n(SendToFragment.this).a(WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
          }
          return false;
        }
      });
      n = ((SendToBottomPanelView)c(2131362614));
      n.setSendButtonOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          int j = 1;
          paramAnonymousView = SendToFragment.a(SendToFragment.this);
          paramAnonymousView.a("send");
          paramAnonymousView.b();
          paramAnonymousView = (LandingPageActivity)getActivity();
          if ((paramAnonymousView == null) || ((SendToFragment.b(SendToFragment.this).isEmpty()) && (SendToFragment.c(SendToFragment.this).isEmpty()))) {
            return;
          }
          SendToFragment.a(SendToFragment.this, WindowConfiguration.StatusBarDrawMode.DRAW_BACKGROUND_BEHIND);
          if (!SendToFragment.b(SendToFragment.this).isEmpty()) {
            SendToFragment.d(SendToFragment.this).e();
          }
          Object localObject1 = mmMediaMailingMetadata;
          ((MediaMailingMetadata)localObject1).a(SendToFragment.b(SendToFragment.this));
          boolean bool1;
          Object localObject2;
          boolean bool2;
          label174:
          label200:
          int i;
          if (mmSnapType == Mediabryo.SnapType.SNAP) {
            if (!SendToFragment.c(SendToFragment.this).isEmpty())
            {
              akr.Q();
              if (paramAnonymousView.g() != null)
              {
                bool1 = true;
                localObject2 = SendToFragment.m();
                if (SendToFragment.b(SendToFragment.this).isEmpty()) {
                  break label368;
                }
                bool2 = true;
                AnalyticsEvents.a((aji)localObject2, bool1, bool2, "SEND_TO_SCREEN");
              }
            }
            else
            {
              mPostToStories = SendToFragment.c(SendToFragment.this);
              localObject1 = SendToFragment.f(SendToFragment.this);
              localObject2 = mmClientId;
              if (SendToFragment.b(SendToFragment.this).size() <= 0) {
                break label412;
              }
              i = 1;
              label232:
              if (SendToFragment.c(SendToFragment.this).size() <= 0) {
                break label417;
              }
            }
          }
          for (;;)
          {
            if (i != 0) {
              ((NetworkAnalytics)localObject1).a("SNAP_SENT_DELAY", (String)localObject2, "send_to_screen");
            }
            if (j != 0) {
              ((NetworkAnalytics)localObject1).a("STORY_POST_DELAY", (String)localObject2, "send_to_screen");
            }
            bbo.a().a(new beo(SendToFragment.m(), false));
            bbo.a().a(new bbu());
            bbo.a().a(new bbs(false, false));
            bbo.a().a(new bbt((byte)0));
            bbo.a().a(new bbq(CameraDisplayState.SHOW));
            awf.a(paramAnonymousView, SendToFragment.g(SendToFragment.this));
            return;
            bool1 = false;
            break;
            label368:
            bool2 = false;
            break label174;
            if (mmSnapType != Mediabryo.SnapType.DISCOVER) {
              break label200;
            }
            SendToFragment.e(SendToFragment.this);
            SendToFragment.a(SendToFragment.this, (aeb)mmMediaExtras);
            break label200;
            label412:
            i = 0;
            break label232;
            label417:
            j = 0;
          }
        }
      });
      n.setSendButtonOnTouchListener(new atu(n.getSendButton()));
      n();
      c(2131362606).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SendToFragment.a(SendToFragment.this).d();
          getActivity().onBackPressed();
        }
      });
      paramBundle = l.iterator();
      while (paramBundle.hasNext())
      {
        localObject = (Friend)paramBundle.next();
        if (!auk.f(((Friend)localObject).l(), k)) {
          mSuggestionState = Friend.SuggestState.PENDING;
        }
      }
    }
    if ((l.size() > 0) || (m.size() > 0)) {
      i();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968725, paramViewGroup, false);
    return mFragmentLayout;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    Iterator localIterator = k.o().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (mJustAdded) {
        mJustAdded = false;
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    MediaMailingMetadata localMediaMailingMetadata = bmMediaMailingMetadata;
    localMediaMailingMetadata.a(l);
    if (bmSnapType == Mediabryo.SnapType.SNAP) {
      mPostToStories = m;
    }
  }
  
  @bpi
  public void onPostToStoriesUpdatedEvent(bdo parambdo)
  {
    parambdo = e;
    e = c.a();
    a.b();
    e.b().filter(h.getText().toString());
  }
  
  @bpi
  public void onRefreshFriendExistsTask(bdx parambdx)
  {
    e.a.b();
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    int i1 = 0;
    Friend localFriend = mFriend;
    parambdw = mAction;
    if (localFriend != null)
    {
      if (FriendAction.ADD != parambdw) {
        break label94;
      }
      mJustAdded = true;
      parambdw = e;
      if (e.indexOf(localFriend) == -1)
      {
        e.add(0, localFriend);
        f = e;
        a.b();
      }
    }
    for (;;)
    {
      e.b().filter(h.getText().toString());
      return;
      label94:
      if (FriendAction.DELETE == parambdw)
      {
        parambdw = e;
        if ((e.remove(localFriend)) || (f.remove(localFriend))) {
          i1 = 1;
        }
        if (i1 != 0) {
          a.b();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */