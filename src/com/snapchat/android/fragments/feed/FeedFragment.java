package com.snapchat.android.fragments.feed;

import agd;
import agd.a;
import agd.b;
import ain;
import aio;
import aje;
import ajr;
import ajv;
import ajx;
import akc;
import ala;
import alw;
import alx;
import alx.a;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import aol;
import aqk;
import aqk.a;
import aql;
import aqn;
import ari;
import asr;
import atm;
import atw;
import auc;
import aup;
import avh;
import avl;
import axi;
import azu;
import baa;
import bam;
import ban;
import bap;
import bat;
import bay;
import bbb;
import bbe;
import bbg;
import bbk;
import bbl;
import bcd;
import bcg;
import bck;
import bcw;
import bcz;
import bdb;
import bdd;
import bdf;
import bdp;
import bdq;
import bdr;
import bdw;
import beh;
import ben;
import ber;
import bes;
import bfd;
import bgk;
import bgp;
import bgr;
import bgr.a;
import boh;
import bur;
import cgb;
import cgc;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api.chat.LoadFeedPageTask;
import com.snapchat.android.api.chat.LoadFeedPageTask.TaskStatus;
import com.snapchat.android.api.chat.LoadFeedPageTask.a;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.chat.ChatWithFragment;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.stories.ui.animation.DismissAnimationView;
import com.snapchat.android.ui.InAppPromptFlipper;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.ptr.DancingGhostPtrHeader;
import com.snapchat.android.ui.ptr.DancingGhostPtrHeader.a;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.RefreshError;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import di;
import in.srain.cube.views.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import nf;
import ng;
import ni;
import ym;
import yn;
import yu;

@avl
public class FeedFragment
  extends SnapchatFragment
  implements agd.a, SharedPreferences.OnSharedPreferenceChangeListener, aqk.a, LoadFeedPageTask.a, yu
{
  private static final Set<AndroidNotificationManager.Type> I = di.a(AndroidNotificationManager.Type.ADDFRIEND, AndroidNotificationManager.Type.TYPING);
  private bgr<TextView> A;
  private bgr<View> B;
  private bgr<View> C;
  private bgr<DismissAnimationView> D;
  private ViewTreeObserver.OnGlobalLayoutListener E;
  private ChatConversation F;
  private InputMethodManager G;
  private aqk H;
  private Runnable J = new Runnable()
  {
    public final void run()
    {
      if (FeedFragment.k(FeedFragment.this) == null) {
        FeedFragment.a(FeedFragment.this, ajv.g());
      }
      if (FeedFragment.k(FeedFragment.this) != null)
      {
        FeedFragment.n(FeedFragment.this).a(NetworkAnalytics.PageContext.FEED);
        FeedFragment.o(FeedFragment.this).a("feed", "pull_to_refresh");
        FeedFragment.p(FeedFragment.this).f();
      }
    }
  };
  private MotionEvent K;
  protected SnapView a;
  protected boolean b;
  private final aol c;
  private final Bus d;
  private final akc e;
  private final DictionaryEasyMetric f;
  private final ng g;
  private final CameraEventAnalytics h;
  private final NetworkAnalytics i;
  private final baa j;
  private final bgk k;
  private final ajx l;
  private agd m;
  private ListView n;
  private SnapchatPtrFrameLayout o;
  private Handler p;
  private ajv q;
  private bgr<InAppPromptFlipper> r;
  private bgr<TextView> s;
  private bgr<TextView> t;
  private View u;
  private View v;
  private bgr<EditText> w;
  private bgr<View> x;
  private View y;
  private View z;
  
  public FeedFragment()
  {
    this(ban.a(), akc.b(), DictionaryEasyMetric.a(), CameraEventAnalytics.a(), ng.a(), NetworkAnalytics.a(), baa.a(), new bgk(), ajx.a(), aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private FeedFragment(Bus paramBus, akc paramakc, DictionaryEasyMetric paramDictionaryEasyMetric, CameraEventAnalytics paramCameraEventAnalytics, ng paramng, NetworkAnalytics paramNetworkAnalytics, baa parambaa, bgk parambgk, ajx paramajx, aol paramaol)
  {
    d = paramBus;
    e = paramakc;
    f = paramDictionaryEasyMetric;
    h = paramCameraEventAnalytics;
    g = paramng;
    i = paramNetworkAnalytics;
    j = parambaa;
    k = parambgk;
    l = paramajx;
    c = paramaol;
  }
  
  private ChatConversation a(float paramFloat1, float paramFloat2)
  {
    int i2 = n.pointToPosition(Math.round(paramFloat1), Math.round(paramFloat2));
    if ((i2 >= 0) && (i2 < m.getCount() + n.getHeaderViewsCount())) {}
    for (int i1 = 1; i1 != 0; i1 = 0) {
      return (ChatConversation)n.getItemAtPosition(i2);
    }
    return null;
  }
  
  private void m()
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        if ((FeedFragment.k(FeedFragment.this) != null) && (kmInitialized) && (FeedFragment.l(FeedFragment.this).e().isEmpty()) && (!b)) {}
        for (boolean bool = true;; bool = false)
        {
          FeedFragment.a(FeedFragment.this, bool);
          return;
        }
      }
    });
  }
  
  private void n()
  {
    int i1;
    if (!b)
    {
      if (e.mIterToken != null) {
        break label41;
      }
      if (y.getVisibility() != 8) {
        break label36;
      }
      i1 = 1;
      if (i1 == 0) {
        break label41;
      }
    }
    label36:
    label41:
    do
    {
      return;
      i1 = 0;
      break;
      i1 = n.getLastVisiblePosition();
      if (q == null) {
        q = ajv.g();
      }
    } while ((q == null) || (m.isEmpty()) || (i1 <= m.getCount() - 20));
    LoadFeedPageTask.a(this, q);
  }
  
  private void o()
  {
    v.setVisibility(4);
    z.setVisibility(8);
    u.setVisibility(8);
    A.a(8);
    w.a(0);
    ((EditText)w.a()).requestFocus();
    G.showSoftInput(w.a(), 0);
    b = true;
    u();
    q();
    C.a(8);
    m.setNotifyOnChange(false);
    atw localatw1 = e.mConversationsForListView;
    atw localatw2 = ym.a();
    mAdapter = null;
    mAdapter = null;
    m.clear();
    m.addAll(localatw2);
    m.notifyDataSetChanged();
  }
  
  private void p()
  {
    v.setVisibility(0);
    z.setVisibility(0);
    u.setVisibility(0);
    if (w.b())
    {
      ((EditText)w.a()).setText("");
      ((EditText)w.a()).clearFocus();
      w.a(4);
    }
    B.a(8);
    G.hideSoftInputFromWindow(getView().getWindowToken(), 0);
    b = false;
    u();
    m();
    e.mConversationsForListView.mAdapter = m;
    akc localakc = e;
    synchronized (mConversations)
    {
      Iterator localIterator = mConversations.iterator();
      while (localIterator.hasNext())
      {
        ChatConversation localChatConversation = (ChatConversation)localIterator.next();
        if ((mIsStub) && (!mIsUserInConversation)) {
          localIterator.remove();
        }
      }
    }
    ((akc)localObject).f();
  }
  
  private void q()
  {
    ViewGroup.LayoutParams localLayoutParams = y.getLayoutParams();
    if (localLayoutParams == null) {
      return;
    }
    height = 1;
    y.setLayoutParams(localLayoutParams);
    y.setVisibility(8);
  }
  
  private void r()
  {
    boolean bool1 = getActivity().getIntent().getBooleanExtra("makeSyncRequest", false);
    boolean bool2 = ajx.af();
    Timber.c("FeedFragment", "Make Sync syncreq = " + bool1 + " " + bool2, new Object[0]);
    if ((bool1) || (bool2))
    {
      Timber.c("FeedFragment", "Spinning off Sync request!", new Object[0]);
      if ((n != null) && (q != null))
      {
        ajx.g(false);
        c.f();
      }
    }
  }
  
  private void t()
  {
    if (b)
    {
      atw localatw = ym.a();
      m.clear();
      m.addAll(localatw);
    }
    m.notifyDataSetChanged();
  }
  
  private void u()
  {
    Iterator localIterator = avh.a(n).iterator();
    while (localIterator.hasNext())
    {
      agd.b localb = (agd.b)((View)localIterator.next()).getTag();
      if (localb != null)
      {
        e = true;
        if (d != null)
        {
          d.cancel();
          d = null;
        }
        a.clearAnimation();
        b.clearAnimation();
      }
    }
  }
  
  private void v()
  {
    int i2 = 1;
    if ((ReleaseManager.f()) && (auc.a(SharedPreferenceKey.DEVELOPER_OPTIONS_UPGRADE_PROMPT_ENABLED.getKey(), false)))
    {
      auc.a(SharedPreferenceKey.SUGGESTION_PROMPT_TEXT.getKey(), "Upgrade your app");
      auc.a(SharedPreferenceKey.SUGGESTION_PROMPT_LINK.getKey(), getString(2131493231));
    }
    label94:
    while (i2 == 0)
    {
      return;
      if (System.currentTimeMillis() - ajx.bd() >= ajx.be()) {}
      for (int i1 = 1;; i1 = 0)
      {
        if ((ajx.ba()) && (ajx.aY()) && (i1 != 0)) {
          break label94;
        }
        i2 = 0;
        break;
      }
    }
    String str = ajx.bc();
    if (!TextUtils.isEmpty(str)) {
      ((TextView)t.a()).setText(str);
    }
    ((TextView)t.a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getActivity();
        FeedFragment.w(FeedFragment.this);
        String str = ajx.aZ();
        try
        {
          paramAnonymousView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
          return;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          asr.a(paramAnonymousView);
        }
      }
    });
    if (ajx.ba()) {
      ((TextView)s.a()).setText(Html.fromHtml(ajx.bb()));
    }
    ((InAppPromptFlipper)r.a()).a();
  }
  
  private void w()
  {
    if ((!ajx.bF()) && (e.g()))
    {
      bbg localbbg = new bbg(getString(2131493533), null, getResources().getColor(2131230765), getResources().getColor(2131230811), false, "FeedFragment");
      localbbg.a(10000L);
      d.a(localbbg);
      ajx.bG();
    }
  }
  
  public final float a(View paramView)
  {
    if (paramView == null) {}
    do
    {
      return 0.0F;
      paramView = paramView.findViewById(2131362346);
    } while (paramView == null);
    return paramView.getTranslationX();
  }
  
  public final ChatConversation a(MotionEvent paramMotionEvent)
  {
    ChatConversation localChatConversation = a(paramMotionEvent.getX(), paramMotionEvent.getY());
    Object localObject2 = new StringBuilder("TTV-LOG: onTouch (");
    int i1 = paramMotionEvent.getActionMasked();
    int i2;
    Object localObject1;
    switch (i1)
    {
    case 5: 
    case 6: 
    default: 
      i2 = (0xFF00 & i1) >> 8;
      switch (i1 & 0xFF)
      {
      default: 
        localObject1 = Integer.toString(i1);
        localObject2 = ((StringBuilder)localObject2).append((String)localObject1).append(") on conversation ");
        if (localChatConversation == null)
        {
          localObject1 = null;
          label157:
          Timber.c("FeedFragment", (String)localObject1, new Object[0]);
          if (paramMotionEvent.getAction() == 0)
          {
            K = paramMotionEvent;
            if (localChatConversation != null)
            {
              localObject2 = aup.d();
              paramMotionEvent = getActivity();
              if ((mSnapView != null) && (localChatConversation.j() == null))
              {
                localObject1 = localChatConversation.n();
                if (localObject1 == null) {
                  break label383;
                }
                ((aup)localObject2).a(paramMotionEvent, (Snap)localObject1, localChatConversation);
              }
            }
          }
        }
        break;
      }
      break;
    }
    label383:
    do
    {
      return localChatConversation;
      localObject1 = "ACTION_DOWN";
      break;
      localObject1 = "ACTION_UP";
      break;
      localObject1 = "ACTION_CANCEL";
      break;
      localObject1 = "ACTION_OUTSIDE";
      break;
      localObject1 = "ACTION_MOVE";
      break;
      localObject1 = "ACTION_HOVER_MOVE";
      break;
      localObject1 = "ACTION_SCROLL";
      break;
      localObject1 = "ACTION_HOVER_ENTER";
      break;
      localObject1 = "ACTION_HOVER_EXIT";
      break;
      localObject1 = "ACTION_POINTER_DOWN(" + i2 + ")";
      break;
      localObject1 = "ACTION_POINTER_UP(" + i2 + ")";
      break;
      localObject1 = mId;
      break label157;
      localObject1 = mItemForFeedIcon;
      paramMotionEvent = (MotionEvent)localObject1;
      if (localObject1 == null)
      {
        mFeedIconManager.a(localChatConversation, true);
        paramMotionEvent = mItemForFeedIcon;
      }
    } while (!(paramMotionEvent instanceof ain));
    ((aup)localObject2).a((ain)paramMotionEvent);
    return localChatConversation;
  }
  
  public final void a(@cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje) {}
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio)
  {
    d.a(new bcd("FeedFragment"));
  }
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if ((!(paramaje instanceof ajr)) && (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED)) {
      D.a()).a.start();
    }
  }
  
  public final void a(View paramView, int paramInt, boolean paramBoolean) {}
  
  public final void a(View paramView, boolean paramBoolean)
  {
    d.a(new bam(true));
    d.a(new bes(paramView, paramBoolean));
  }
  
  public final void a(LoadFeedPageTask.TaskStatus paramTaskStatus)
  {
    ViewGroup.LayoutParams localLayoutParams = y.getLayoutParams();
    if (localLayoutParams == null) {
      return;
    }
    switch (14.a[paramTaskStatus.ordinal()])
    {
    default: 
      return;
    case 1: 
      height = -2;
      y.setLayoutParams(localLayoutParams);
      y.setVisibility(0);
      y.findViewById(2131362083).setVisibility(0);
      y.findViewById(2131362343).setVisibility(4);
      return;
    case 2: 
      height = -2;
      y.setLayoutParams(localLayoutParams);
      y.setVisibility(0);
      y.findViewById(2131362083).setVisibility(4);
      y.findViewById(2131362343).setVisibility(0);
      return;
    }
    q();
  }
  
  public final void a(@cgc List<ChatConversation> paramList)
  {
    if ((b) && ((paramList == null) || (paramList.isEmpty())))
    {
      B.a(0);
      return;
    }
    B.a(8);
  }
  
  public final boolean a()
  {
    return b;
  }
  
  public final boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramView == null) {}
    View localView;
    int i1;
    do
    {
      do
      {
        return false;
        localView = paramView.findViewById(2131362346);
      } while (localView == null);
      if ((K != null) && (paramFloat1 > 0.0F))
      {
        Object localObject = a(paramFloat2, paramFloat3);
        if (localObject != null)
        {
          localObject = atm.b(((ChatConversation)localObject).i(), q);
          d.a(new bay((Friend)localObject));
        }
        K = null;
      }
      paramFloat1 = 1.5F * paramFloat1;
      i1 = b(null);
    } while ((Math.abs(paramFloat1) >= i1) && (a(paramView) >= i1));
    if ((Math.abs(paramFloat1) >= i1) && (a(paramView) < i1)) {
      localView.setTranslationX(i1);
    }
    for (;;)
    {
      return true;
      localView.setTranslationX(paramFloat1);
    }
  }
  
  public final int b(@cgc View paramView)
  {
    paramView = getActivity();
    if (paramView == null) {}
    Resources.Theme localTheme;
    do
    {
      return 0;
      localTheme = paramView.getTheme();
    } while (localTheme == null);
    TypedValue localTypedValue = new TypedValue();
    localTheme.resolveAttribute(16842829, localTypedValue, true);
    TypedValue.coerceToString(type, data);
    return (int)localTypedValue.getDimension(paramView.getResources().getDisplayMetrics());
  }
  
  public final boolean b(MotionEvent paramMotionEvent)
  {
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    i1 = n.pointToPosition(i1, i2);
    paramMotionEvent = (ChatConversation)n.getItemAtPosition(i1);
    if (axi.a(paramMotionEvent)) {}
    while (a.c()) {
      return false;
    }
    if (paramMotionEvent.equals(F))
    {
      h.a(CameraEventAnalytics.CameraContext.DOUBLE_TAP);
      d.a(new bcz(mTheirUsername, 1, true));
    }
    for (;;)
    {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          FeedFragment.v(FeedFragment.this);
        }
      }, 450L);
      return false;
      F = paramMotionEvent;
    }
  }
  
  protected final void e()
  {
    nf.d();
    g.b("move_to_page", "feed");
    super.e();
    a.a(this);
    d.a(new bat());
    getActivity().setVolumeControlStream(3);
    if ((getActivity() instanceof LandingPageActivity)) {
      getActivityq.a(NotificationAnalytics.NotificationDestinationType.FEED);
    }
    if (H != null) {
      H.a(true);
    }
    int i1;
    if (PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey(), false))
    {
      ??? = e.e();
      i1 = 0;
      while ((i1 < ((List)???).size()) && (!TextUtils.equals(getmTheirUsername, "teamsnapchat"))) {
        i1 += 1;
      }
      ??? = n.getChildAt(i1 + n.getHeaderViewsCount());
      if (H != null) {
        H.a((View)???, 2);
      }
    }
    Object localObject2 = e;
    for (;;)
    {
      synchronized (mConversations)
      {
        localObject2 = mConversations.iterator();
        if (!((Iterator)localObject2).hasNext()) {
          break label355;
        }
        ChatConversation localChatConversation = (ChatConversation)((Iterator)localObject2).next();
        if ((mMyLastSeqNum == 0L) && (mTheirLastSeqNum == 0L) && (mLastTimestampOfReceivedSnapReadReceiptIReleased == 0L) && (mLastTimestampOfSentSnapReadReceiptIReleased == 0L) && (mLastChatFromServer == null) && (mLastCashFromServer == null))
        {
          if (mLastSnapFromServer == null) {
            break label414;
          }
          if ((mLastSnapFromServer.q()) && (localChatConversation.v()))
          {
            break label414;
            if ((i1 == 0) || (!localChatConversation.v())) {
              continue;
            }
            ((Iterator)localObject2).remove();
          }
        }
      }
      i1 = 0;
      continue;
      label355:
      if (m != null) {
        m.notifyDataSetChanged();
      }
      if (b) {
        o();
      }
      for (;;)
      {
        v();
        w();
        if (azu.b()) {
          azu.a(getActivity());
        }
        nf.e();
        return;
        p();
      }
      label414:
      i1 = 1;
    }
  }
  
  public final void e(boolean paramBoolean)
  {
    if (paramBoolean) {
      d.a(new bap(CameraDisplayState.SHOW));
    }
    d.a(new bcd("FeedFragment"));
  }
  
  protected final void f()
  {
    f.a("FIRST_MEDIA_OPENED");
    g.c("exit_page", "feed");
    a.b(this);
    if (m != null)
    {
      m.a.clear();
      m.notifyDataSetChanged();
    }
    z.setVisibility(0);
    A.a(8);
    if (b) {
      p();
    }
    u();
    if (r.b()) {
      ((InAppPromptFlipper)r.a()).b();
    }
    azu.a();
  }
  
  public final boolean g()
  {
    if (b)
    {
      p();
      return true;
    }
    return false;
  }
  
  protected final ala h()
  {
    return new ala(new String[] { "FEED" });
  }
  
  public final boolean h_()
  {
    return mIsVisible;
  }
  
  public final alw k()
  {
    new alw()
    {
      public final boolean a(alx.a paramAnonymousa)
      {
        return FeedFragment.i().contains(c);
      }
      
      public final boolean b(alx.a paramAnonymousa)
      {
        return alx.h.contains(c);
      }
    };
  }
  
  @boh
  public void onClosePtrEvent(bbb parambbb)
  {
    o.a();
  }
  
  @boh
  public void onConversationsUpdatedFromServer(bbe parambbe)
  {
    Timber.c("FeedFragment", "SNAP-LOG: Refreshing feed on ConversationListUpdatedEvent", new Object[0]);
    t();
    m();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968667, paramViewGroup, false);
    G = ((InputMethodManager)getActivity().getSystemService("input_method"));
    q = ajv.g();
    A = new bgr(mFragmentLayout, 2131362332, 2131362354, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((TextView)FeedFragment.b(FeedFragment.this).a()).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymous2View)
          {
            paramAnonymous2View.setVisibility(8);
            FeedFragment.a(FeedFragment.this).setVisibility(0);
          }
        });
      }
    });
    z = c(2131362331);
    z.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FeedFragment.c(FeedFragment.this).a(CameraEventAnalytics.CameraContext.CAMERA_BUTTON);
        getActivity().onBackPressed();
      }
    });
    z.setOnLongClickListener(new View.OnLongClickListener()
    {
      public final boolean onLongClick(View paramAnonymousView)
      {
        paramAnonymousView.setVisibility(8);
        ((TextView)FeedFragment.b(FeedFragment.this).a()).setText(ajx.d() + " | " + ajx.c());
        FeedFragment.b(FeedFragment.this).a(0);
        return true;
      }
    });
    c(2131362330).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    u = c(2131362335);
    v = c(2131362334);
    w = new bgr(mFragmentLayout, 2131362333, 2131362355, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((EditText)FeedFragment.h(FeedFragment.this).a()).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymous2Editable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
          
          public final void onTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            ViewTreeObserver localViewTreeObserver = FeedFragment.d(FeedFragment.this).getViewTreeObserver();
            if (localViewTreeObserver == null) {
              throw new NullPointerException();
            }
            localViewTreeObserver.addOnGlobalLayoutListener(FeedFragment.e(FeedFragment.this));
            FeedFragment.f(FeedFragment.this).getFilter().filter(paramAnonymous2CharSequence.toString().trim());
            if (TextUtils.isEmpty(paramAnonymous2CharSequence))
            {
              FeedFragment.g(FeedFragment.this).a(4);
              return;
            }
            FeedFragment.g(FeedFragment.this).a(0);
          }
        });
      }
    });
    x = new bgr(mFragmentLayout, 2131362333, 2131361836, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        FeedFragment.g(FeedFragment.this).a().setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymous2View)
          {
            ((EditText)FeedFragment.h(FeedFragment.this).a()).setText("");
          }
        });
      }
    });
    E = new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public final void onGlobalLayout()
      {
        ViewTreeObserver localViewTreeObserver = FeedFragment.d(FeedFragment.this).getViewTreeObserver();
        if (localViewTreeObserver == null) {
          throw new NullPointerException();
        }
        if (Build.VERSION.SDK_INT >= 16) {
          localViewTreeObserver.removeOnGlobalLayoutListener(this);
        }
        for (;;)
        {
          FeedFragment.i(FeedFragment.this);
          return;
          localViewTreeObserver.removeGlobalOnLayoutListener(this);
        }
      }
    };
    r = new bgr(mFragmentLayout, 2131362340, 2131362356);
    int i1 = (int)getResources().getDimension(2131296416);
    ((InAppPromptFlipper)r.a()).setTranslationY((float)(-1L * i1));
    t = new bgr(mFragmentLayout, 2131362340, 2131362359);
    s = new bgr(mFragmentLayout, 2131362340, 2131362358);
    u.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(new ChatWithFragment()));
      }
    });
    v.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FeedFragment.j(FeedFragment.this);
      }
    });
    C = new bgr(mFragmentLayout, 2131362338, 2131362353);
    B = new bgr(mFragmentLayout, 2131362339, 2131362352);
    D = new bgr(mFragmentLayout, 2131362078, 2131362280);
    o = ((SnapchatPtrFrameLayout)c(2131362336));
    o.setPtrHandler(new bur()
    {
      public final void a(PtrFrameLayout paramAnonymousPtrFrameLayout)
      {
        FeedFragment.r(FeedFragment.this).post(FeedFragment.q(FeedFragment.this));
      }
      
      public final boolean a()
      {
        return bfd.a(FeedFragment.d(FeedFragment.this));
      }
    });
    paramLayoutInflater = o.getPtrHeader();
    paramViewGroup = new DancingGhostPtrHeader.a()
    {
      public final void a()
      {
        FeedFragment.s(FeedFragment.this).a(true);
      }
    };
    a.add(paramViewGroup);
    p = new Handler();
    paramLayoutInflater = e.mConversationsForListView;
    m = agd.a(getActivity(), paramLayoutInflater, yn.a(), this);
    n = ((ListView)c(2131362337));
    y = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130968668, null);
    y.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (FeedFragment.k(FeedFragment.this) == null) {
          FeedFragment.a(FeedFragment.this, ajv.g());
        }
        if ((FeedFragment.k(FeedFragment.this) != null) && (!FeedFragment.f(FeedFragment.this).isEmpty())) {
          LoadFeedPageTask.a(FeedFragment.this, FeedFragment.k(FeedFragment.this));
        }
      }
    });
    n.addFooterView(y, null, false);
    n.setAdapter(m);
    n.setTextFilterEnabled(true);
    H = new aqk(n, SwipeableListItemTouchListener.SwipeDirection.RIGHT, this, getActivity(), m, yn.a(), ni.a());
    H.e = true;
    n.setOnTouchListener(H);
    paramViewGroup = H.a();
    paramLayoutInflater = new ArrayList(2);
    paramLayoutInflater.add(new AbsListView.OnScrollListener()
    {
      private int c;
      
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        paramViewGroup.onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        paramViewGroup.onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
        if (paramAnonymousInt == 0) {
          FeedFragment.s(FeedFragment.this).a(true);
        }
        for (;;)
        {
          c = paramAnonymousInt;
          FeedFragment.i(FeedFragment.this);
          return;
          if (c == 0)
          {
            FeedFragment.s(FeedFragment.this).a(false);
            FeedFragment.t(FeedFragment.this).a(new bam(false));
          }
          avh.a(getActivity(), FeedFragment.u(FeedFragment.this));
        }
      }
    });
    paramViewGroup = new aqn(paramLayoutInflater);
    paramLayoutInflater.add(new aql(j, "Feed"));
    n.setOnScrollListener(paramViewGroup);
    try
    {
      a = ((ari)getActivity()).l();
      m();
      nf.e();
      return mFragmentLayout;
    }
    catch (ClassCastException paramLayoutInflater)
    {
      throw new ClassCastException(getActivity().toString() + " must implement SnapViewProvider");
    }
  }
  
  @boh
  public void onFeedIconRefreshedEvent(bbk parambbk)
  {
    t();
  }
  
  @boh
  public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent paramSnapMessageFeedRefreshedEvent)
  {
    Object localObject = n.getViewTreeObserver();
    if (localObject == null) {
      return;
    }
    ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(E);
    t();
    localObject = getActivity();
    switch (com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.1.$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError[mError.ordinal()])
    {
    default: 
      localObject = "";
    }
    for (;;)
    {
      if (!((String)localObject).equals(""))
      {
        ban.a().a(new bbg((String)localObject, "FeedFragment"));
        if (mError == SnapMessageFeedRefreshedEvent.RefreshError.AUTHENTICATION_ERROR)
        {
          q.v();
          asr.a(getActivity());
        }
      }
      if ((o != null) && (o.b()))
      {
        o.e();
        i.a(mUUID);
      }
      m();
      return;
      localObject = ((Context)localObject).getString(2131493068);
      continue;
      localObject = ((Context)localObject).getString(2131493083);
      continue;
      localObject = ((Context)localObject).getString(2131493606);
      continue;
      localObject = ((Context)localObject).getString(2131493252);
      continue;
      localObject = ((Context)localObject).getString(2131493014);
      continue;
      localObject = ((Context)localObject).getString(2131493083);
      continue;
      localObject = "";
    }
  }
  
  @boh
  public void onFeedTimerChangeEvent(bbl parambbl)
  {
    Object localObject = ajx.l();
    int i2;
    int i3;
    int i1;
    if ((localObject != null) && (mFriendUsername != null))
    {
      parambbl = axi.a((String)localObject, mFriendUsername);
      i2 = n.getFirstVisiblePosition();
      i3 = n.getLastVisiblePosition();
      i1 = i2;
    }
    for (;;)
    {
      if (i1 <= i3)
      {
        localObject = n.getItemAtPosition(i1);
        if (((localObject instanceof ChatConversation)) && (mId.equals(parambbl)))
        {
          parambbl = n.getChildAt(i1 - i2);
          n.getAdapter().getView(i1, parambbl, n);
        }
      }
      else
      {
        return;
      }
      i1 += 1;
    }
  }
  
  @boh
  public void onLoadSnapMediaEvent(LoadSnapMediaEvent paramLoadSnapMediaEvent)
  {
    if (mType == LoadSnapMediaEvent.LoadSnapMediaEventType.ENDED)
    {
      paramLoadSnapMediaEvent = e.e();
      if ((paramLoadSnapMediaEvent.size() > 0) && ((((ChatConversation)paramLoadSnapMediaEvent.get(0)).m() == 0) || ((((ChatConversation)paramLoadSnapMediaEvent.get(0)).j() != null) && (((ChatConversation)paramLoadSnapMediaEvent.get(0)).j().L())))) {
        i.b(NetworkAnalytics.PageContext.FEED, null);
      }
    }
    m.notifyDataSetChanged();
  }
  
  @boh
  public void onLockScreenOpenedEvent(bcg parambcg)
  {
    onResume();
  }
  
  @boh
  public void onNewChatMessageReceived(bck parambck)
  {
    t();
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    t();
  }
  
  public void onResume()
  {
    nf.d();
    super.onResume();
    q = ajv.g();
    if (!((PowerManager)c("power")).isScreenOn()) {}
    while (((KeyguardManager)c("keyguard")).inKeyguardRestrictedInputMode()) {
      return;
    }
    aol localaol = c;
    FragmentActivity localFragmentActivity = getActivity();
    Intent localIntent = localaol.b(localFragmentActivity);
    localIntent.putExtra("op_code", 1000);
    localIntent.putExtra("clear", true);
    localIntent.putExtra("notification_type", null);
    localaol.a(localFragmentActivity, localIntent);
    r();
    m.notifyDataSetChanged();
    nf.e();
  }
  
  @boh
  public void onRetryFailedSnapEvent(bdb parambdb)
  {
    m.notifyDataSetChanged();
  }
  
  @boh
  public void onScrollFeedToTopEvent(bdd parambdd)
  {
    n.post(new Runnable()
    {
      public final void run()
      {
        FeedFragment.d(FeedFragment.this).setSelection(0);
        View localView = FeedFragment.d(FeedFragment.this).getChildAt(0);
        if (localView != null) {
          localView.requestFocus();
        }
      }
    });
  }
  
  @boh
  public void onSendSnapRequestCompleteEvent(bdf parambdf)
  {
    m.notifyDataSetChanged();
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (TextUtils.equals(SharedPreferenceKey.SHOULD_SHOW_SUGGESTION_PROMPT.getKey(), paramString)) {
      v();
    }
  }
  
  @boh
  public void onSnapSelectedForReplayEvent(bdp parambdp)
  {
    m.notifyDataSetChanged();
  }
  
  @boh
  public void onSnapSelectedForRetryEvent(bdq parambdq)
  {
    m.notifyDataSetChanged();
  }
  
  @boh
  public void onSnapSendInitiated(bdr parambdr)
  {
    m.notifyDataSetChanged();
  }
  
  public void onStart()
  {
    super.onStart();
    ajx.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    ajx.b(this);
  }
  
  @boh
  public void onSyncAllCompletedEvent(beh parambeh)
  {
    List localList = e.e();
    if ((mCalledOnLoginOrOnResume) && (getUserVisibleHint()))
    {
      i.a(NetworkAnalytics.PageContext.FEED, mUUID);
      if ((localList.size() == 0) || (((ChatConversation)localList.get(0)).m() == 0) || (((ChatConversation)localList.get(0)).j().L())) {
        i.b(NetworkAnalytics.PageContext.FEED, mUUID);
      }
    }
  }
  
  @boh
  public void onUpdateFeedEvent(ben paramben)
  {
    t();
    n();
    m();
    if (mIsVisible) {
      w();
    }
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    if ((paramber != null) && (user != null) && (q == null))
    {
      q = user;
      r();
    }
    q();
    t();
    m();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */