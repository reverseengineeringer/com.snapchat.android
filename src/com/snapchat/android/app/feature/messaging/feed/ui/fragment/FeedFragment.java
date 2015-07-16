package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import ajj;
import ajk;
import aka;
import akl;
import akp;
import akr;
import akx;
import alk;
import alv;
import amt;
import amu;
import amu.a;
import android.animation.AnimatorSet;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.j;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.TextView;
import aph;
import arj;
import arl;
import arn;
import ash;
import atq;
import aut;
import ava;
import avn;
import avn.a;
import avn.d;
import awf;
import ayg;
import azy;
import ban;
import bat;
import bbb;
import bce;
import bck;
import bed;
import bfg;
import bfm;
import bfq;
import bhk;
import bhp;
import bhr;
import bhr.a;
import bpi;
import bvs;
import chc;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.controller.countdown.SnapCountdownController;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.stories.ui.animation.DismissAnimationView;
import com.snapchat.android.ui.InAppPromptFlipper;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.1;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.a;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.b;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.c;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.d;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import dr;
import in.srain.cube.views.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import nw;
import nx;
import vj;
import vk;
import vm;
import vm.a;
import vn;
import vo;
import vp;
import vq;
import vr;
import vs;
import vt;
import vu;
import vw;
import vx;
import wa;
import wc;
import wc.a;
import zi;
import zq;
import zt;
import zu;

public class FeedFragment
  extends SnapchatFragment
  implements SharedPreferences.OnSharedPreferenceChangeListener, SwipeableRecyclerViewItemTouchListener.a<vt>, SwipeableRecyclerViewItemTouchListener.b<vt>, SwipeableRecyclerViewItemTouchListener.c<vt>, SwipeableRecyclerViewItemTouchListener.d<vt>, vm.a, wa, wc.a, zq, zu
{
  private static final Set<AndroidNotificationManager.Type> U = dr.a(AndroidNotificationManager.Type.ADDFRIEND, AndroidNotificationManager.Type.TYPING);
  private final SnapCountdownController A;
  private final DictionaryEasyMetric B;
  private final nx C;
  private final CameraEventAnalytics D;
  private final NetworkAnalytics E;
  private final bbb F;
  private final bhk G;
  private final akr H;
  private float I;
  private final List<vp> J;
  private final vu K;
  private a L;
  private vr M;
  private vm N;
  private SwipeableRecyclerViewItemTouchListener.d<vs> O;
  private vp P;
  private boolean Q;
  private boolean R;
  private boolean S;
  private Map<String, vp> T;
  private final Runnable V = new Runnable()
  {
    public final void run()
    {
      if ((akp)FeedFragment.p(FeedFragment.this).get() != null)
      {
        FeedFragment.q(FeedFragment.this).a(NetworkAnalytics.PageContext.FEED);
        FeedFragment.r(FeedFragment.this).a("feed", "pull_to_refresh");
        FeedFragment.s(FeedFragment.this).f();
      }
    }
  };
  @Inject
  public ban a;
  private SnapView b;
  private SnapchatPtrFrameLayout c;
  private RecyclerView d;
  private LinearLayoutManager e;
  private FeedAdapter f;
  private wc g;
  private View h;
  private View i;
  private bhr<EditText> j;
  private bhr<View> k;
  private View l;
  private bhr<TextView> m;
  private bhr<View> n;
  private bhr<View> o;
  private bhr<DismissAnimationView> p;
  private bhr<InAppPromptFlipper> q;
  private bhr<TextView> r;
  private bhr<TextView> s;
  private final aph t;
  private final vq u;
  private final avn v;
  private final arn w;
  private final vo x;
  private final vn y;
  private final Provider<akp> z;
  
  public FeedFragment()
  {
    this(aph.a(), akx.c(), avn.d(), akp.UNSAFE_USER_PROVIDER, SnapCountdownController.a(), DictionaryEasyMetric.a(), CameraEventAnalytics.a(), nx.a(), NetworkAnalytics.a(), bbb.b(), new bhk(), akr.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private FeedFragment(aph paramaph, vq paramvq, avn paramavn, Provider<akp> paramProvider, SnapCountdownController paramSnapCountdownController, DictionaryEasyMetric paramDictionaryEasyMetric, CameraEventAnalytics paramCameraEventAnalytics, nx paramnx, NetworkAnalytics paramNetworkAnalytics, bbb parambbb, bhk parambhk, akr paramakr)
  {
    SnapchatApplication.b().c().a(this);
    t = paramaph;
    u = paramvq;
    v = paramavn;
    z = paramProvider;
    A = paramSnapCountdownController;
    B = paramDictionaryEasyMetric;
    D = paramCameraEventAnalytics;
    C = paramnx;
    E = paramNetworkAnalytics;
    G = parambhk;
    H = paramakr;
    F = parambbb;
    J = paramvq.a();
    x = new vo();
    y = new vk(this);
    x.a = y;
    K = new vu();
    T = new ArrayMap();
    w = new arn()
    {
      public final void a(aka paramAnonymousaka)
      {
        if (isAdded())
        {
          paramAnonymousaka = zi.b(paramAnonymousaka.j());
          if (paramAnonymousaka != null) {}
        }
        else
        {
          return;
        }
        FeedFragment.a(FeedFragment.this, paramAnonymousaka, getResources().getColor(2131230763));
      }
    };
  }
  
  private int a(String paramString)
  {
    int i1 = 0;
    while (i1 < J.size())
    {
      if (TextUtils.equals(paramString, ((vp)J.get(i1)).A_())) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  private void a(final int paramInt)
  {
    String str = akr.l();
    if (!TextUtils.isEmpty(str))
    {
      str = ayg.a(str, aut.a("teamsnapchat"));
      int i1 = 0;
      while (i1 < J.size())
      {
        if (TextUtils.equals(((vp)J.get(i1)).A_(), str))
        {
          vs localvs = (vs)d.a(i1, false);
          if (localvs != null) {
            a(localvs, new Runnable()
            {
              public final void run()
              {
                if ((!FeedFragment.v(FeedFragment.this)) && (paramInt > 0))
                {
                  FeedFragment.a(FeedFragment.this, paramInt - 1);
                  return;
                }
                FeedFragment.t(FeedFragment.this);
                akr.bB();
              }
            });
          }
        }
        i1 += 1;
      }
    }
  }
  
  private void a(vp paramvp, int paramInt)
  {
    int i1 = a(paramvp.A_());
    if (i1 != -1)
    {
      paramvp = (vt)d.a(i1, false);
      if (paramvp != null) {
        paramvp.b(paramInt);
      }
    }
  }
  
  private void a(final vs paramvs, final Runnable paramRunnable)
  {
    paramvs = k;
    final TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, I, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(100L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramAnonymousAnimation = new TranslateAnimation(FeedFragment.u(FeedFragment.this), 0.0F, 0.0F, 0.0F);
        paramAnonymousAnimation.setInterpolator(new BounceInterpolator());
        paramAnonymousAnimation.setDuration(400L);
        if (paramRunnable != null) {
          paramAnonymousAnimation.setAnimationListener(new Animation.AnimationListener()
          {
            public final void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              a.run();
            }
            
            public final void onAnimationRepeat(Animation paramAnonymous2Animation) {}
            
            public final void onAnimationStart(Animation paramAnonymous2Animation) {}
          });
        }
        paramvs.startAnimation(paramAnonymousAnimation);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramvs.post(new Runnable()
    {
      public final void run()
      {
        paramvs.startAnimation(localTranslateAnimation);
      }
    });
  }
  
  private void m()
  {
    boolean bool1 = getActivity().getIntent().getBooleanExtra("makeSyncRequest", false);
    boolean bool2 = akr.ae();
    new StringBuilder("Make Sync syncreq = ").append(bool1).append(" ").append(bool2);
    if ((bool1) || (bool2))
    {
      akp localakp = (akp)z.get();
      if ((d != null) && (localakp != null))
      {
        t.f();
        akr.g(false);
      }
    }
  }
  
  private void n()
  {
    if (M == null) {
      M = new alk(u, z);
    }
    if (g == null)
    {
      g = new wc(M.a(), this, a);
      g.a(x);
    }
    M.c();
    i.setVisibility(4);
    l.setVisibility(8);
    h.setVisibility(8);
    m.a(8);
    j.a(0);
    ((EditText)j.a()).requestFocus();
    awf.g(getActivity());
    Q = true;
    n.a(8);
    d.a(g);
  }
  
  private void o()
  {
    i.setVisibility(0);
    l.setVisibility(0);
    h.setVisibility(0);
    if (j.b())
    {
      ((EditText)j.a()).setText("");
      ((EditText)j.a()).clearFocus();
      j.a(4);
    }
    o.a(8);
    awf.a(getActivity(), mFragmentLayout);
    Q = false;
    p();
    d.a(f);
  }
  
  private void p()
  {
    akp localakp = (akp)z.get();
    if (!Q)
    {
      if ((localakp != null) && (mInitialized) && (J.isEmpty())) {
        n.a(0);
      }
    }
    else {
      return;
    }
    n.a(8);
  }
  
  private void q()
  {
    int i2 = 1;
    if ((ReleaseManager.f()) && (ava.a(SharedPreferenceKey.DEVELOPER_OPTIONS_UPGRADE_PROMPT_ENABLED.getKey(), false)))
    {
      ava.a(SharedPreferenceKey.SUGGESTION_PROMPT_TEXT.getKey(), "Upgrade your app");
      ava.a(SharedPreferenceKey.SUGGESTION_PROMPT_LINK.getKey(), getString(2131493231));
    }
    label94:
    while (i2 == 0)
    {
      return;
      if (System.currentTimeMillis() - akr.ba() >= akr.bb()) {}
      for (int i1 = 1;; i1 = 0)
      {
        if ((akr.aX()) && (akr.aV()) && (i1 != 0)) {
          break label94;
        }
        i2 = 0;
        break;
      }
    }
    String str = akr.aZ();
    if (!TextUtils.isEmpty(str)) {
      ((TextView)s.a()).setText(str);
    }
    ((TextView)s.a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getActivity();
        FeedFragment.t(FeedFragment.this);
        String str = akr.aW();
        try
        {
          paramAnonymousView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
          return;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          atq.a(paramAnonymousView);
        }
      }
    });
    if (akr.aX()) {
      ((TextView)r.a()).setText(Html.fromHtml(akr.aY()));
    }
    ((InAppPromptFlipper)q.a()).a();
  }
  
  private void r()
  {
    if (P != null) {
      a(P, getResources().getColor(2131230813));
    }
  }
  
  public final void a(@chc ajk paramajk) {}
  
  public final void a(aka paramaka)
  {
    ((vp)T.remove(paramaka.d())).a(paramaka, FeedIconChangeType.VIEWED);
  }
  
  public final void a(aka paramaka, long paramLong)
  {
    ((vp)T.get(paramaka.d())).a(paramaka, FeedIconChangeType.VIEWING);
  }
  
  public final void a(@chc aka paramaka, @chc ajk paramajk) {}
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    r();
    if ((!(paramaka instanceof akl)) && (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED)) {
      p.a()).a.start();
    }
  }
  
  public final void a(List<vp> paramList)
  {
    if ((Q) && ((paramList == null) || (paramList.isEmpty())))
    {
      o.a(0);
      return;
    }
    o.a(8);
  }
  
  public final void a(vs paramvs)
  {
    O.d(paramvs);
  }
  
  public final void a(vs paramvs, MotionEvent paramMotionEvent)
  {
    if (TextUtils.equals(n.mTheirUsername, "teamsnapchat"))
    {
      S = true;
      k.clearAnimation();
    }
    O.a(paramvs, paramMotionEvent);
  }
  
  public final void a(vs paramvs, boolean paramBoolean)
  {
    O.a(paramvs, paramBoolean);
  }
  
  public final boolean a(vs paramvs, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return O.a(paramvs, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public final void a_()
  {
    if (!N.c()) {
      N.b();
    }
  }
  
  public final float b(vs paramvs)
  {
    return O.c(paramvs);
  }
  
  public final void b(aka paramaka)
  {
    ((vp)T.remove(paramaka.d())).a(paramaka, FeedIconChangeType.VIEWED);
  }
  
  public final void b_()
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        ma = false;
        boolean bool = FeedFragment.n(FeedFragment.this).remove(FeedFragment.m(FeedFragment.this));
        FeedFragment.n(FeedFragment.this).add(FeedFragment.m(FeedFragment.this));
        if (bool)
        {
          FeedFragment.o(FeedFragment.this).c(FeedFragment.n(FeedFragment.this).size() - 1);
          return;
        }
        FeedAdapter localFeedAdapter = FeedFragment.o(FeedFragment.this);
        int i = FeedFragment.n(FeedFragment.this).size();
        a.a(i - 1);
      }
    });
  }
  
  public final void c(aka paramaka)
  {
    ((vp)T.remove(paramaka.d())).a(paramaka, FeedIconChangeType.VIEWED);
  }
  
  public final boolean c(vs paramvs)
  {
    return O.b(paramvs);
  }
  
  public final void c_()
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        ma = false;
        FeedFragment.n(FeedFragment.this).remove(FeedFragment.m(FeedFragment.this));
        FeedFragment.o(FeedFragment.this).d(FeedFragment.n(FeedFragment.this).size());
      }
    });
  }
  
  public final int d(vs paramvs)
  {
    return O.a(paramvs);
  }
  
  public final void d()
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        ma = false;
        FeedFragment.n(FeedFragment.this).remove(FeedFragment.m(FeedFragment.this));
        FeedFragment.o(FeedFragment.this).d(FeedFragment.n(FeedFragment.this).size());
      }
    });
  }
  
  public final void d(@chc aka paramaka)
  {
    r();
    T.put(paramaka.d(), P);
    SnapCountdownController localSnapCountdownController = A;
    paramaka.d();
    synchronized (a)
    {
      paramaka = localSnapCountdownController.b(paramaka);
      if (paramaka != null) {
        paramaka.a(this);
      }
      return;
    }
  }
  
  public final void d_()
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        ma = true;
        FeedFragment.o(FeedFragment.this).c(FeedFragment.n(FeedFragment.this).size() - 1);
      }
    });
  }
  
  public final void e()
  {
    nw.d();
    C.b("move_to_page", "feed");
    super.e();
    b.a(this);
    avn localavn = v;
    arn localarn = w;
    mListeners.add(localarn);
    L.a();
    getActivity().setVolumeControlStream(3);
    if ((getActivity() instanceof LandingPageActivity)) {
      getActivityq.a(NotificationAnalytics.NotificationDestinationType.FEED);
    }
    if (akr.bA()) {
      a(2);
    }
    u.b();
    if (f != null) {
      f.a.b();
    }
    if (Q) {
      n();
    }
    for (;;)
    {
      q();
      if (bat.b()) {
        bat.a(getActivity());
      }
      nw.e();
      return;
      o();
    }
  }
  
  public final void e(vs paramvs)
  {
    int i2 = 1;
    ChatConversation localChatConversation = n;
    int i1 = i2;
    boolean bool;
    if (!localChatConversation.B())
    {
      avn localavn = v;
      aka localaka = localChatConversation.j();
      if (localaka == null) {
        break label95;
      }
      mSnapViewEventAnalytics.a(SnapViewEventAnalytics.SnapViewEventSourceType.FEED);
      bool = localavn.a(localaka, localChatConversation, "feed");
      if (bool) {
        break label101;
      }
    }
    label95:
    label101:
    for (i1 = i2;; i1 = 0)
    {
      if ((!ayg.a(localChatConversation)) && (i1 != 0)) {
        a(paramvs, null);
      }
      y.b(paramvs);
      return;
      bool = false;
      break;
    }
  }
  
  public final void f()
  {
    super.f();
    B.a("FIRST_MEDIA_OPENED");
    C.c("exit_page", "feed");
    b.b(this);
    avn localavn = v;
    arn localarn = w;
    mListeners.remove(localarn);
    l.setVisibility(0);
    m.a(8);
    y.a();
    f.a.b();
    if (Q) {
      o();
    }
    if (q.b()) {
      ((InAppPromptFlipper)q.a()).b();
    }
    bat.a();
  }
  
  public final void f(vs paramvs)
  {
    ChatConversation localChatConversation = n;
    avn localavn = v;
    Object localObject1 = getActivity();
    Object localObject2;
    if ((mSnapView != null) && (localChatConversation.j() == null))
    {
      localObject2 = localChatConversation.n();
      if (localObject2 == null) {
        break label68;
      }
      new avn.d(localavn, (aka)localObject2, localChatConversation, (Context)localObject1).run();
    }
    for (;;)
    {
      y.a(paramvs);
      return;
      label68:
      localObject2 = mItemsForFeedIcon;
      localObject1 = localObject2;
      if (((List)localObject2).isEmpty())
      {
        localChatConversation.r();
        localObject1 = mItemsForFeedIcon;
      }
      if (((List)localObject1).size() == 1)
      {
        localObject1 = (ChatFeedItem)((List)localObject1).get(0);
        if ((localObject1 instanceof ajj))
        {
          localObject1 = mActionUrl;
          if (!TextUtils.isEmpty((CharSequence)localObject1)) {
            new avn.a(localavn, (String)localObject1).run();
          }
        }
      }
    }
  }
  
  public final boolean g()
  {
    if (Q)
    {
      o();
      return true;
    }
    return false;
  }
  
  protected final alv h()
  {
    return new alv(new String[] { "FEED" });
  }
  
  public final void i()
  {
    if (!b.b()) {
      D.a(CameraEventAnalytics.CameraContext.DOUBLE_TAP);
    }
  }
  
  public final amt k()
  {
    new amt()
    {
      public final boolean a(amu.a paramAnonymousa)
      {
        return FeedFragment.l().contains(c);
      }
      
      public final boolean b(amu.a paramAnonymousa)
      {
        return amu.h.contains(c);
      }
    };
  }
  
  @bpi
  public void onConversationListUpdatedEvent(bce parambce)
  {
    f.a.b();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    N = new vj(getActivity(), akx.c(), this);
    O = new vw();
    I = awf.a(32.0F, getActivity());
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968677, paramViewGroup, false);
    m = new bhr(mFragmentLayout, 2131362330, 2131362352, new bhr.a()
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
    l = c(2131362329);
    l.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FeedFragment.c(FeedFragment.this).a(CameraEventAnalytics.CameraContext.CAMERA_BUTTON);
        getActivity().onBackPressed();
      }
    });
    l.setOnLongClickListener(new View.OnLongClickListener()
    {
      public final boolean onLongClick(View paramAnonymousView)
      {
        paramAnonymousView.setVisibility(8);
        ((TextView)FeedFragment.b(FeedFragment.this).a()).setText(akr.d() + " | " + akr.c());
        FeedFragment.b(FeedFragment.this).a(0);
        return true;
      }
    });
    c(2131362328).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    h = c(2131362333);
    h.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FeedFragment.d(FeedFragment.this).b();
      }
    });
    i = c(2131362332);
    j = new bhr(mFragmentLayout, 2131362331, 2131362353, new bhr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((EditText)FeedFragment.g(FeedFragment.this).a()).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymous2Editable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
          
          public final void onTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            FeedFragment.e(FeedFragment.this).getFilter().filter(paramAnonymous2CharSequence.toString().trim());
            if (TextUtils.isEmpty(paramAnonymous2CharSequence))
            {
              FeedFragment.f(FeedFragment.this).a(4);
              return;
            }
            FeedFragment.f(FeedFragment.this).a(0);
          }
        });
      }
    });
    k = new bhr(mFragmentLayout, 2131362331, 2131361837, new bhr.a()
    {
      public final void a(View paramAnonymousView)
      {
        FeedFragment.f(FeedFragment.this).a().setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymous2View)
          {
            ((EditText)FeedFragment.g(FeedFragment.this).a()).setText("");
          }
        });
      }
    });
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FeedFragment.h(FeedFragment.this);
      }
    });
    n = new bhr(mFragmentLayout, 2131362336, 2131362351);
    o = new bhr(mFragmentLayout, 2131362337, 2131362350);
    p = new bhr(mFragmentLayout, 2131362078, 2131362278);
    q = new bhr(mFragmentLayout, 2131362338, 2131362354);
    int i1 = (int)getResources().getDimension(2131296417);
    ((InAppPromptFlipper)q.a()).setTranslationY((float)(-1L * i1));
    s = new bhr(mFragmentLayout, 2131362338, 2131362357);
    r = new bhr(mFragmentLayout, 2131362338, 2131362356);
    c = ((SnapchatPtrFrameLayout)c(2131362358));
    c.setPtrHandler(new bvs()
    {
      public final void a(PtrFrameLayout paramAnonymousPtrFrameLayout)
      {
        paramAnonymousPtrFrameLayout.post(FeedFragment.j(FeedFragment.this));
      }
      
      public final boolean a()
      {
        Object localObject = FeedFragment.i(FeedFragment.this);
        localObject = ((LinearLayoutManager)localObject).a(0, ((LinearLayoutManager)localObject).l(), true);
        if (localObject == null) {}
        for (int i = -1; i == 0; i = LinearLayoutManager.a((View)localObject)) {
          return true;
        }
        return false;
      }
    });
    d = ((RecyclerView)c(2131362359));
    getActivity();
    e = new LinearLayoutManager();
    d.setLayoutManager(e);
    f = new FeedAdapter(J);
    f.a(x);
    d.setAdapter(f);
    paramLayoutInflater = new SwipeableRecyclerViewItemTouchListener(d, SwipeableRecyclerViewItemTouchListener.SwipeDirection.RIGHT, this);
    e = this;
    f = this;
    g = this;
    b = true;
    d.setOnTouchListener(paramLayoutInflater);
    paramViewGroup = new ArrayList();
    paramViewGroup.add(new RecyclerView.j()
    {
      private int d;
      
      public final void a(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt)
      {
        a.a(paramAnonymousRecyclerView, paramAnonymousInt);
        if (paramAnonymousInt == 0) {
          paramLayoutInflater.a(true);
        }
        for (;;)
        {
          d = paramAnonymousInt;
          return;
          if (d == 0)
          {
            paramLayoutInflater.a(false);
            FeedFragment.d(FeedFragment.this).c();
          }
          awf.a(getActivity(), FeedFragment.k(FeedFragment.this));
        }
      }
      
      public final void a(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a.a(paramAnonymousRecyclerView, paramAnonymousInt1, paramAnonymousInt2);
        if (!FeedFragment.l(FeedFragment.this).c())
        {
          paramAnonymousInt2 = FeedFragment.i(FeedFragment.this).l();
          paramAnonymousRecyclerView = FeedFragment.i(FeedFragment.this);
          if (q == null) {
            break label95;
          }
          paramAnonymousRecyclerView = q.getAdapter();
          if (paramAnonymousRecyclerView == null) {
            break label100;
          }
        }
        label95:
        label100:
        for (paramAnonymousInt1 = paramAnonymousRecyclerView.a();; paramAnonymousInt1 = 0)
        {
          if (paramAnonymousInt2 + FeedFragment.i(FeedFragment.this).h() >= paramAnonymousInt1 - 5) {
            FeedFragment.l(FeedFragment.this).b();
          }
          return;
          paramAnonymousRecyclerView = null;
          break;
        }
      }
    });
    paramViewGroup.add(new arj(F, "Feed"));
    paramLayoutInflater = new arl(paramViewGroup);
    d.setOnScrollListener(paramLayoutInflater);
    try
    {
      b = ((ash)getActivity()).l();
      p();
      nw.e();
      return mFragmentLayout;
    }
    catch (ClassCastException paramLayoutInflater)
    {
      throw new ClassCastException(getActivity().toString() + " must implement SnapViewProvider");
    }
  }
  
  @bpi
  public void onFeedIconChangedEvent(bck parambck)
  {
    new StringBuilder("FEEDICON-LOG: onFeedIconChangedEvent ").append(mFeedItemId);
    int i1 = a(mFeedItemId);
    if (i1 != -1) {
      f.c(i1);
    }
  }
  
  @bpi
  public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent paramSnapMessageFeedRefreshedEvent)
  {
    f.a.b();
    p();
    if ((c != null) && (c.a()))
    {
      c.e();
      E.a(mUUID);
    }
  }
  
  @bpi
  public void onLoadSnapMediaEvent(LoadSnapMediaEvent paramLoadSnapMediaEvent)
  {
    if (mType == LoadSnapMediaEvent.LoadSnapMediaEventType.ENDED)
    {
      paramLoadSnapMediaEvent = u.a();
      if (!paramLoadSnapMediaEvent.isEmpty())
      {
        Object localObject = (vp)paramLoadSnapMediaEvent.get(0);
        if ((localObject instanceof ChatConversation))
        {
          localObject = (ChatConversation)localObject;
          if ((paramLoadSnapMediaEvent.size() > 0) && ((((ChatConversation)localObject).m() == 0) || ((((ChatConversation)localObject).j() != null) && (((ChatConversation)localObject).j().M())))) {
            E.b(NetworkAnalytics.PageContext.FEED, null);
          }
        }
      }
    }
    f.a.b();
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    try
    {
      L = ((vx)getActivity()).k();
      aph localaph = t;
      FragmentActivity localFragmentActivity = getActivity();
      Intent localIntent = localaph.b(localFragmentActivity);
      localIntent.putExtra("op_code", 1000);
      localIntent.putExtra("clear", true);
      localIntent.putExtra("notification_type", null);
      localaph.a(localFragmentActivity, localIntent);
      m();
      nw.e();
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(getActivity().toString() + " must implement FeedDelegateProvider");
    }
  }
  
  @bpi
  public void onScrollFeedToTopEvent(bed parambed)
  {
    parambed = e;
    l = 0;
    m = 0;
    if (n != null) {
      n.a = -1;
    }
    parambed.i();
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (TextUtils.equals(SharedPreferenceKey.SHOULD_SHOW_SUGGESTION_PROMPT.getKey(), paramString)) {
      q();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    akr.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    akr.b(this);
  }
  
  @bpi
  public void onSyncAllCompletedEvent(bfg parambfg)
  {
    if ((mCalledOnLoginOrOnResume) && (getUserVisibleHint()))
    {
      E.a(NetworkAnalytics.PageContext.FEED, mUUID);
      if (!J.isEmpty())
      {
        if (!(J.get(0) instanceof ChatConversation)) {
          break label107;
        }
        ChatConversation localChatConversation = (ChatConversation)J.get(0);
        if ((localChatConversation.m() != 0) && (!localChatConversation.j().M())) {
          break label108;
        }
      }
    }
    label107:
    label108:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        E.b(NetworkAnalytics.PageContext.FEED, mUUID);
      }
      return;
    }
  }
  
  @bpi
  public void onUpdateFeedEvent(bfm parambfm)
  {
    f.a.b();
    p();
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    if ((parambfq != null) && (user != null)) {
      m();
    }
    f.a.b();
    p();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(vp paramvp);
    
    public abstract void a(vp paramvp, View paramView, boolean paramBoolean);
    
    public abstract void b();
    
    public abstract void b(vp paramvp);
    
    public abstract void c();
    
    public abstract void c(vp paramvp);
    
    public abstract void d(vp paramvp);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */