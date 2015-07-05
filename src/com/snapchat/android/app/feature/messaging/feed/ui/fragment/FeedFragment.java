package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import ain;
import aio;
import aje;
import ajr;
import ajv;
import ajx;
import akc;
import akp;
import ala;
import alw;
import alx;
import alx.a;
import android.animation.AnimatorSet;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.j;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
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
import aol;
import aqm;
import aqo;
import ari;
import atv;
import aup;
import aup.a;
import aup.d;
import avh;
import axi;
import aza;
import azo;
import baa;
import bbe;
import bbk;
import bbl;
import bdd;
import beh;
import ben;
import ber;
import bgk;
import bgp;
import bgr;
import bgr.a;
import boh;
import bur;
import cgb;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.stories.ui.animation.DismissAnimationView;
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
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import di;
import in.srain.cube.views.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import nf;
import ng;
import ni;
import uq;
import us;
import us.a;
import ut;
import uu;
import uv;
import uw;
import ux;
import uy;
import va;
import vb;
import ve;
import vg;
import vg.a;
import yn;
import yu;

public class FeedFragment
  extends SnapchatFragment
  implements SwipeableRecyclerViewItemTouchListener.a<ux>, SwipeableRecyclerViewItemTouchListener.b<ux>, SwipeableRecyclerViewItemTouchListener.c<ux>, SwipeableRecyclerViewItemTouchListener.d<ux>, us.a, ve, vg.a, yu
{
  private static final Set<AndroidNotificationManager.Type> M = di.a(AndroidNotificationManager.Type.ADDFRIEND, AndroidNotificationManager.Type.TYPING);
  private final ajx A;
  private final ni B;
  private float C;
  private final List<ut> D;
  private final uy E;
  private a F;
  private ut G;
  private uv H;
  private us I;
  private SwipeableRecyclerViewItemTouchListener.d<uw> J;
  private boolean K;
  private boolean L;
  private final Runnable N = new Runnable()
  {
    public final void run()
    {
      if ((ajv)FeedFragment.p(FeedFragment.this).get() != null) {
        FeedFragment.q(FeedFragment.this).f();
      }
    }
  };
  @Inject
  public azo a;
  private SnapView b;
  private SnapchatPtrFrameLayout c;
  private RecyclerView d;
  private LinearLayoutManager e;
  private FeedAdapter f;
  private vg g;
  private View h;
  private View i;
  private bgr<EditText> j;
  private bgr<View> k;
  private View l;
  private bgr<TextView> m;
  private bgr<View> n;
  private bgr<View> o;
  private bgr<DismissAnimationView> p;
  private final aol q;
  private final uu r;
  private final aup s;
  private final Provider<ajv> t;
  private final DictionaryEasyMetric u;
  private final ng v;
  private final CameraEventAnalytics w;
  private final NetworkAnalytics x;
  private final baa y;
  private final bgk z;
  
  public FeedFragment()
  {
    this(aol.a(), akc.b(), aup.d(), ajv.UNSAFE_USER_PROVIDER, DictionaryEasyMetric.a(), CameraEventAnalytics.a(), ng.a(), NetworkAnalytics.a(), ni.a(), baa.a(), new bgk(), ajx.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private FeedFragment(aol paramaol, uu paramuu, aup paramaup, Provider<ajv> paramProvider, DictionaryEasyMetric paramDictionaryEasyMetric, CameraEventAnalytics paramCameraEventAnalytics, ng paramng, NetworkAnalytics paramNetworkAnalytics, ni paramni, baa parambaa, bgk parambgk, ajx paramajx)
  {
    SnapchatApplication.b().c().a(this);
    q = paramaol;
    r = paramuu;
    s = paramaup;
    t = paramProvider;
    u = paramDictionaryEasyMetric;
    w = paramCameraEventAnalytics;
    v = paramng;
    x = paramNetworkAnalytics;
    z = parambgk;
    A = paramajx;
    B = paramni;
    y = parambaa;
    D = paramuu.a();
    E = new uy();
  }
  
  private void a(final int paramInt)
  {
    String str = ajx.l();
    if (!TextUtils.isEmpty(str))
    {
      str = axi.a(str, atv.a("teamsnapchat"));
      int i1 = 0;
      while (i1 < D.size())
      {
        if (TextUtils.equals(((ut)D.get(i1)).B_(), str))
        {
          uw localuw = (uw)d.a(i1, false);
          if (localuw != null) {
            a(localuw, new Runnable()
            {
              public final void run()
              {
                if ((!FeedFragment.s(FeedFragment.this)) && (paramInt > 0))
                {
                  FeedFragment.a(FeedFragment.this, paramInt - 1);
                  return;
                }
                SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
                localEditor.remove(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey());
                localEditor.apply();
              }
            });
          }
        }
        i1 += 1;
      }
    }
  }
  
  private void a(final uw paramuw, final Runnable paramRunnable)
  {
    paramuw = k;
    final TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, C, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(100L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramAnonymousAnimation = new TranslateAnimation(FeedFragment.r(FeedFragment.this), 0.0F, 0.0F, 0.0F);
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
        paramuw.startAnimation(paramAnonymousAnimation);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramuw.post(new Runnable()
    {
      public final void run()
      {
        paramuw.startAnimation(localTranslateAnimation);
      }
    });
  }
  
  private void m()
  {
    if (H == null) {
      H = new akp(r, t);
    }
    if (g == null) {
      g = new vg(H.a(), this, a);
    }
    H.b();
    i.setVisibility(4);
    l.setVisibility(8);
    h.setVisibility(8);
    m.a(8);
    j.a(0);
    ((EditText)j.a()).requestFocus();
    avh.g(getActivity());
    K = true;
    n.a(8);
    d.a(g);
  }
  
  private void n()
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
    avh.a(getActivity(), mFragmentLayout);
    K = false;
    o();
    d.a(f);
  }
  
  private void o()
  {
    ajv localajv = (ajv)t.get();
    if ((localajv != null) && (mInitialized) && (D.isEmpty()))
    {
      n.a(0);
      return;
    }
    n.a(8);
  }
  
  public final void a(@cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje) {}
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if ((!(paramaje instanceof ajr)) && (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED)) {
      p.a()).a.start();
    }
  }
  
  public final void a(List<ut> paramList)
  {
    if ((K) && ((paramList == null) || (paramList.isEmpty())))
    {
      o.a(0);
      return;
    }
    o.a(8);
  }
  
  public final void a(uw paramuw)
  {
    J.d(paramuw);
  }
  
  public final void a(uw paramuw, boolean paramBoolean)
  {
    J.a(paramuw, paramBoolean);
  }
  
  public final boolean a(uw paramuw, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (TextUtils.equals(l.mTheirUsername, "teamsnapchat"))
    {
      L = true;
      k.clearAnimation();
    }
    return J.a(paramuw, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public final float b(uw paramuw)
  {
    return J.c(paramuw);
  }
  
  public final void b_()
  {
    if (!I.c()) {
      I.b();
    }
  }
  
  public final boolean c(uw paramuw)
  {
    return J.b(paramuw);
  }
  
  public final void c_()
  {
    bgp.a(new Runnable()
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
  
  public final int d(uw paramuw)
  {
    return J.a(paramuw);
  }
  
  public final void d()
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        ma = false;
        FeedFragment.n(FeedFragment.this).remove(FeedFragment.m(FeedFragment.this));
        FeedFragment.o(FeedFragment.this).d(FeedFragment.n(FeedFragment.this).size());
      }
    });
  }
  
  public final void d_()
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        ma = false;
        FeedFragment.n(FeedFragment.this).remove(FeedFragment.m(FeedFragment.this));
        FeedFragment.o(FeedFragment.this).d(FeedFragment.n(FeedFragment.this).size());
      }
    });
  }
  
  public final void e()
  {
    nf.d();
    v.b("move_to_page", "feed");
    super.e();
    b.a(this);
    F.a();
    getActivity().setVolumeControlStream(3);
    if ((getActivity() instanceof LandingPageActivity)) {
      getActivityq.a(NotificationAnalytics.NotificationDestinationType.FEED);
    }
    if (f != null) {
      f.a.b();
    }
    if (K) {
      m();
    }
    for (;;)
    {
      if (PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey(), false)) {
        a(2);
      }
      nf.e();
      return;
      n();
    }
  }
  
  public final void e(uw paramuw)
  {
    ChatConversation localChatConversation = l;
    if (TextUtils.equals(mTheirUsername, "teamsnapchat"))
    {
      L = true;
      k.clearAnimation();
    }
    if (!localChatConversation.A()) {
      s.a(localChatConversation);
    }
    if (!axi.a(localChatConversation)) {
      a(paramuw, null);
    }
  }
  
  public final void e_()
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        ma = true;
        FeedFragment.o(FeedFragment.this).c(FeedFragment.n(FeedFragment.this).size() - 1);
      }
    });
  }
  
  public final void f()
  {
    super.f();
    b.b(this);
    l.setVisibility(0);
    m.a(8);
    if (K) {
      n();
    }
  }
  
  public final void f(uw paramuw)
  {
    ChatConversation localChatConversation = l;
    aup localaup = s;
    paramuw = getActivity();
    Object localObject;
    if ((mSnapView != null) && (localChatConversation.j() == null))
    {
      localObject = localChatConversation.n();
      if (localObject == null) {
        break label57;
      }
      new aup.d(localaup, (aje)localObject, localChatConversation, paramuw).run();
    }
    label57:
    do
    {
      do
      {
        return;
        localObject = mItemForFeedIcon;
        paramuw = (uw)localObject;
        if (localObject == null)
        {
          mFeedIconManager.a(localChatConversation, true);
          paramuw = mItemForFeedIcon;
        }
      } while (!(paramuw instanceof ain));
      paramuw = mActionUrl;
    } while (TextUtils.isEmpty(paramuw));
    new aup.a(localaup, paramuw).run();
  }
  
  public final boolean g()
  {
    if (K)
    {
      n();
      return true;
    }
    return false;
  }
  
  protected final ala h()
  {
    return new ala(new String[] { "FEED" });
  }
  
  public final void i()
  {
    w.a(CameraEventAnalytics.CameraContext.DOUBLE_TAP);
  }
  
  public final alw k()
  {
    new alw()
    {
      public final boolean a(alx.a paramAnonymousa)
      {
        return FeedFragment.l().contains(c);
      }
      
      public final boolean b(alx.a paramAnonymousa)
      {
        return alx.h.contains(c);
      }
    };
  }
  
  @boh
  public void onConversationListUpdatedEvent(bbe parambbe)
  {
    Timber.c("FeedFragmentV2", "FEED-LOG: onConversationListUpdatedEvent", new Object[0]);
    f.a.b();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    I = new uq(getActivity(), akc.b(), this);
    J = new va();
    C = avh.a(32.0F, getActivity());
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968676, paramViewGroup, false);
    m = new bgr(mFragmentLayout, 2131362332, 2131362354, new bgr.a()
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
    l = c(2131362331);
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
    h = c(2131362335);
    h.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FeedFragment.d(FeedFragment.this).b();
      }
    });
    i = c(2131362334);
    j = new bgr(mFragmentLayout, 2131362333, 2131362355, new bgr.a()
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
    k = new bgr(mFragmentLayout, 2131362333, 2131361836, new bgr.a()
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
    n = new bgr(mFragmentLayout, 2131362338, 2131362353);
    o = new bgr(mFragmentLayout, 2131362339, 2131362352);
    p = new bgr(mFragmentLayout, 2131362078, 2131362280);
    c = ((SnapchatPtrFrameLayout)c(2131362360));
    c.setPtrHandler(new bur()
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
    d = ((RecyclerView)c(2131362361));
    getActivity();
    e = new LinearLayoutManager();
    d.setLayoutManager(e);
    f = new FeedAdapter(D);
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
          avh.a(getActivity(), FeedFragment.k(FeedFragment.this));
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
    paramViewGroup.add(new aqm(y, "Feed"));
    paramLayoutInflater = new aqo(paramViewGroup);
    d.setOnScrollListener(paramLayoutInflater);
    try
    {
      b = ((ari)getActivity()).l();
      o();
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
    Timber.c("FeedFragmentV2", "FEED-LOG: onFeedIconRefreshedEvent", new Object[0]);
    f.a.b();
  }
  
  @boh
  public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent paramSnapMessageFeedRefreshedEvent)
  {
    f.a.b();
    o();
    if ((c != null) && (c.b()))
    {
      c.e();
      x.a(mUUID);
    }
  }
  
  @boh
  public void onFeedTimerChangeEvent(bbl parambbl)
  {
    String str = ajx.l();
    int i1;
    if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(mFriendUsername)))
    {
      parambbl = axi.a(str, Arrays.asList(new String[] { mFriendUsername }));
      i1 = 0;
      if (i1 >= D.size()) {
        break label101;
      }
      if (!TextUtils.equals(parambbl, ((ut)D.get(i1)).B_())) {
        break label94;
      }
    }
    for (;;)
    {
      if (i1 != -1) {
        f.c(i1);
      }
      return;
      label94:
      i1 += 1;
      break;
      label101:
      i1 = -1;
    }
  }
  
  @boh
  public void onLoadSnapMediaEvent(LoadSnapMediaEvent paramLoadSnapMediaEvent)
  {
    if (mType == LoadSnapMediaEvent.LoadSnapMediaEventType.ENDED)
    {
      paramLoadSnapMediaEvent = r.a();
      Object localObject = (ut)paramLoadSnapMediaEvent.get(0);
      if ((localObject instanceof ChatConversation))
      {
        localObject = (ChatConversation)localObject;
        if ((paramLoadSnapMediaEvent.size() > 0) && ((((ChatConversation)localObject).m() == 0) || ((((ChatConversation)localObject).j() != null) && (((ChatConversation)localObject).j().L())))) {
          x.b(NetworkAnalytics.PageContext.FEED, null);
        }
      }
    }
    f.a.b();
  }
  
  public void onResume()
  {
    super.onResume();
    try
    {
      F = ((vb)getActivity()).k();
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(getActivity().toString() + " must implement FeedDelegateProvider");
    }
  }
  
  @boh
  public void onScrollFeedToTopEvent(bdd parambdd)
  {
    parambdd = e;
    l = 0;
    m = 0;
    if (n != null) {
      n.a = -1;
    }
    parambdd.i();
  }
  
  @boh
  public void onSyncAllCompletedEvent(beh parambeh)
  {
    Timber.c("FeedFragmentV2", "FEED-LOG: onSyncAllCompletedEvent", new Object[0]);
    if ((mCalledOnLoginOrOnResume) && (getUserVisibleHint()))
    {
      x.a(NetworkAnalytics.PageContext.FEED, mUUID);
      if (!D.isEmpty())
      {
        if (!(D.get(0) instanceof ChatConversation)) {
          break label120;
        }
        ChatConversation localChatConversation = (ChatConversation)D.get(0);
        if ((localChatConversation.m() != 0) && (!localChatConversation.j().L())) {
          break label121;
        }
      }
    }
    label120:
    label121:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        x.b(NetworkAnalytics.PageContext.FEED, mUUID);
      }
      return;
    }
  }
  
  @boh
  public void onUpdateFeedEvent(ben paramben)
  {
    f.a.b();
    o();
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    if ((paramber != null) && (user != null))
    {
      boolean bool1 = getActivity().getIntent().getBooleanExtra("makeSyncRequest", false);
      boolean bool2 = ajx.af();
      Timber.c("FeedFragmentV2", "Make Sync syncreq = " + bool1 + " " + bool2, new Object[0]);
      if ((bool1) || (bool2))
      {
        Timber.c("FeedFragmentV2", "Spinning off Sync request!", new Object[0]);
        paramber = (ajv)t.get();
        if ((d != null) && (paramber != null))
        {
          q.f();
          ajx.g(false);
        }
      }
    }
    f.a.b();
    o();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(ut paramut);
    
    public abstract void a(ut paramut, View paramView, boolean paramBoolean);
    
    public abstract void b();
    
    public abstract void b(ut paramut);
    
    public abstract void c();
    
    public abstract void c(ut paramut);
    
    public abstract void d(ut paramut);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */