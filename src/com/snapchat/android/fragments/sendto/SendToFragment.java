package com.snapchat.android.fragments.sendto;

import adb;
import agg;
import agg.a;
import agk;
import aim;
import aja;
import ajc;
import ajk;
import ajq;
import ajv;
import ajx;
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
import aoc;
import aod;
import aoe;
import aof;
import apk;
import aqa;
import aqa.a;
import aqt;
import asv;
import atm;
import avh;
import aza;
import ban;
import bap;
import bar;
import bas;
import bat;
import baw;
import bco;
import bcw;
import bcx;
import bdo;
import bdt;
import bdw;
import bel;
import boh;
import bpr;
import bps;
import cgb;
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
import nb;
import no;
import xyz.danoz.recyclerviewfastscroller.vertical.VerticalRecyclerViewFastScroller;
import zs;

public class SendToFragment
  extends SnapchatFragment
  implements agg.a
{
  private static aim b;
  @Inject
  public zs a;
  private View c;
  private View d;
  private agg e;
  private Handler f = new Handler();
  private InputMethodManager g;
  private EditText h;
  private View i;
  private boolean j = false;
  private ajv k;
  private LinkedHashSet<Friend> l = new LinkedHashSet();
  private ArrayList<ajc> m = new ArrayList();
  private SendToBottomPanelView n;
  private final no o = no.a();
  private final NetworkAnalytics p = NetworkAnalytics.a();
  private final DiscoverUsageAnalytics q = new DiscoverUsageAnalytics();
  private final nb r = new nb();
  
  public SendToFragment()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public static SendToFragment a(@cgb aim paramaim)
  {
    b = paramaim;
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
  
  public final void a(agk paramagk, boolean paramBoolean)
  {
    final Object localObject;
    if ((paramagk instanceof Friend))
    {
      paramagk = (Friend)paramagk;
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
        l.add(paramagk);
      }
    }
    for (;;)
    {
      e.a.b();
      i();
      return;
      if (paramagk.o())
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
      ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492953));
      continue;
      label197:
      l.remove(paramagk);
      continue;
      if ((paramagk instanceof ajc))
      {
        int i1;
        if (paramBoolean)
        {
          localObject = (ajc)paramagk;
          if (!(localObject instanceof aja)) {
            break label406;
          }
          if (ajx.P()) {
            break label426;
          }
          i1 = 1;
          label242:
          if (i1 != 0)
          {
            localObject = (ajc)paramagk;
            if (!(localObject instanceof aja)) {
              break label431;
            }
            localObject = new AlertDialog.Builder(getActivity());
            View localView = LayoutInflater.from(getActivity()).inflate(2130968709, null);
            CheckBox localCheckBox = (CheckBox)localView.findViewById(2131362544);
            ((LinearLayout)localView).removeView(localCheckBox);
            ((AlertDialog.Builder)localObject).setInverseBackgroundForced(true);
            ((AlertDialog.Builder)localObject).setView(localView).setTitle(2131492904).setNegativeButton(2131492952, null).setPositiveButton(2131492866, null);
            ((AlertDialog.Builder)localObject).create().show();
          }
        }
        for (;;)
        {
          paramagk = (ajc)paramagk;
          localObject = o;
          mNumTotalActions += 1;
          mNumStories += 1;
          if (!paramBoolean) {
            break label464;
          }
          m.add(paramagk);
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
          new aqa(getActivity(), (ajc)localObject, a, new aqa.a()
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
        m.remove(paramagk);
      }
    }
  }
  
  public final boolean a(agk paramagk)
  {
    if ((paramagk instanceof Friend)) {
      return l.contains(paramagk);
    }
    if ((paramagk instanceof ajc)) {
      return m.contains(paramagk);
    }
    return false;
  }
  
  public final void e()
  {
    ban.a().a(new bel(TitleBarManager.Visibility.VISIBLE));
    no localno = o;
    mSelectFriendMetric = EasyMetric.EasyMetricFactory.b("SELECT_FRIEND").b();
    localno.c();
    mNumSelectFriendSession += 1;
    ban.a().a(new bdt(true));
    ban.a().a(new baw(1));
  }
  
  public final void f()
  {
    super.f();
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
  
  public final boolean g_()
  {
    return true;
  }
  
  protected final void i()
  {
    Iterator localIterator = m.iterator();
    String str2 = "";
    Object localObject;
    for (String str1 = ""; localIterator.hasNext(); str1 = ", ")
    {
      localObject = (ajc)localIterator.next();
      str2 = str2 + str1 + mDisplayName;
    }
    localIterator = l.iterator();
    while (localIterator.hasNext())
    {
      localObject = (Friend)localIterator.next();
      str2 = str2 + str1 + ((Friend)localObject).k();
      str1 = ", ";
    }
    n.setText(str2);
    n();
  }
  
  public final boolean l_()
  {
    return true;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    g = ((InputMethodManager)getActivity().getSystemService("input_method"));
    k = ajv.a(getActivity());
    l = bmMediaMailingMetadata.d();
    if (bmSnapType == Mediabryo.SnapType.SNAP) {
      m = bmMediaMailingMetadata).mPostToStories;
    }
    Object localObject = (RecyclerView)c(2131362195);
    ImageView localImageView = (ImageView)c(2131362617);
    FragmentActivity localFragmentActivity = getActivity();
    new aof();
    paramBundle = b;
    ajv localajv = k;
    if (mSnapType == Mediabryo.SnapType.DISCOVER) {}
    for (paramBundle = new aoc(localajv);; paramBundle = new aod(localajv, ajq.a()))
    {
      e = new agg(localFragmentActivity, paramBundle, new Friend.a(), this, new aqt(), new apk(localImageView, (RecyclerView)localObject));
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
      paramBundle = new bpr(e);
      ((RecyclerView)localObject).a(paramBundle);
      paramBundle = new bps((RecyclerView)localObject, paramBundle);
      b = e;
      f.add(paramBundle);
      paramBundle = (VerticalRecyclerViewFastScroller)c(2131362616);
      paramBundle.setRecyclerView((RecyclerView)localObject);
      ((RecyclerView)localObject).setOnScrollListener(paramBundle.getOnScrollListener());
      c = c(2131362612);
      d = c(2131362609);
      h = ((EditText)c(2131362610));
      i = c(2131361836);
      c(2131362611).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (SendToFragment.h(SendToFragment.this)) {
            SendToFragment.i(SendToFragment.this);
          }
          paramAnonymousView = SendToFragment.a(SendToFragment.this);
          paramAnonymousView.a("add_friend");
          paramAnonymousView.c();
          ban.a().a(new bdw(new AddFriendsMenuFragment()));
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
      n = ((SendToBottomPanelView)c(2131362615));
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
              ajx.Q();
              if (paramAnonymousView.g() != null)
              {
                bool1 = true;
                localObject2 = SendToFragment.m();
                if (SendToFragment.b(SendToFragment.this).isEmpty()) {
                  break label368;
                }
                bool2 = true;
                AnalyticsEvents.a((aim)localObject2, bool1, bool2, "SEND_TO_SCREEN");
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
            ban.a().a(new bdo(SendToFragment.m(), false));
            ban.a().a(new bat());
            ban.a().a(new bar(false, false));
            ban.a().a(new bas((byte)0));
            ban.a().a(new bap(CameraDisplayState.SHOW));
            avh.a(paramAnonymousView, SendToFragment.g(SendToFragment.this));
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
            SendToFragment.a(SendToFragment.this, (adb)mmMediaExtras);
            break label200;
            label412:
            i = 0;
            break label232;
            label417:
            j = 0;
          }
        }
      });
      n.setSendButtonOnTouchListener(new asv(n.getSendButton()));
      n();
      c(2131362607).setOnClickListener(new View.OnClickListener()
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
        if (!atm.f(((Friend)localObject).h(), k)) {
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968723, paramViewGroup, false);
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
  
  @boh
  public void onPostToStoriesUpdatedEvent(bco parambco)
  {
    parambco = e;
    e = c.a();
    a.b();
    e.b().filter(h.getText().toString());
  }
  
  @boh
  public void onRefreshFriendExistsTask(bcx parambcx)
  {
    e.a.b();
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    int i1 = 0;
    Friend localFriend = mFriend;
    parambcw = mAction;
    if (localFriend != null)
    {
      if (FriendAction.ADD != parambcw) {
        break label94;
      }
      mJustAdded = true;
      parambcw = e;
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
      if (FriendAction.DELETE == parambcw)
      {
        parambcw = e;
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