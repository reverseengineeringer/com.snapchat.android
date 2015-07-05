package com.snapchat.android.fragments.stories;

import abg;
import abh;
import abz;
import abz.a;
import acy;
import aeh;
import afl;
import agw;
import ahb;
import ahc;
import ahd;
import ahr;
import ajb;
import ajg;
import ajn;
import ajo;
import ajq;
import ajr;
import ajv;
import ajv.a;
import ajx;
import ala;
import alw;
import alx;
import alx.a;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import aop;
import aoq;
import aos;
import apz;
import aqb;
import aql;
import aqn;
import atj;
import atx;
import auh;
import aup;
import auy;
import auz;
import avb;
import avl;
import aza;
import azm;
import azu;
import baa;
import baj;
import ban;
import bap;
import bat;
import bbg;
import bbs;
import bby;
import bcf;
import bcj;
import bcn;
import bct;
import bcv;
import bcw;
import bcx;
import bcz;
import bda;
import bdc;
import bdd;
import bdh;
import bdi;
import bdt;
import bdv;
import bdw;
import bdy;
import bdz;
import beb;
import bed;
import beh;
import bem;
import ber;
import bfa;
import bfd;
import bgp;
import bgr;
import bgr.a;
import boh;
import bur;
import caq;
import cgb;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;
import com.snapchat.android.discover.ui.DiscoverButtonView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import com.snapchat.android.model.Friend.SuggestType;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryCollection.StoriesFragmentRecentsPriority;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.stories.ui.animation.DismissAnimationView;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.emoji.Emoji;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import in.srain.cube.views.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import javax.inject.Provider;
import lh;
import li;
import lo;
import lt;
import nf;
import ng;
import pb.a;
import pb.b;
import pg;
import pu;
import yt;
import zd;

@avl
public class StoriesFragment
  extends SnapchatFragment
  implements LoaderManager.LoaderCallbacks<Cursor>, StoriesAdapter.b, pb.b
{
  private StickyListHeadersListView A;
  private SnapchatPtrFrameLayout B;
  private final yt C;
  private final ajn D;
  private String E = null;
  private int F;
  private final ahr G;
  private boolean H = false;
  private final CameraEventAnalytics I;
  private final aop J;
  private final NetworkAnalytics K;
  private final DictionaryEasyMetric L;
  private final ng M;
  private final HashMap<String, Boolean> N = new HashMap();
  private final baa O;
  private final Bus P;
  private final abz Q;
  private bfa R;
  private ajg S;
  private View T;
  private View U;
  private bgr<View> V;
  private ImageView W;
  private DiscoverButtonView X;
  private DismissAnimationView Y;
  private final azm Z;
  protected ajg a;
  private aup aa;
  private final pb.a ab = new pb.a(this);
  private final ajx ac;
  private final aeh ad;
  private acy ae;
  private boolean af = false;
  protected List<ajg> b = new ArrayList();
  protected ajq c;
  protected List<Friend> d = new ArrayList();
  @Inject
  public abh e;
  protected StoriesAdapter f;
  protected final ArrayList<ahb> g = new ArrayList();
  protected boolean h;
  boolean i = false;
  protected bgr<EditText> j;
  protected View k;
  protected bgr<View> l;
  protected bgr<Button> m;
  protected bgr<View> n;
  protected TextView o;
  protected final auy p;
  protected boolean q = false;
  protected final Runnable r = new Runnable()
  {
    public final void run()
    {
      if (StoriesFragment.a(StoriesFragment.this) != null)
      {
        StoriesFragment.a(StoriesFragment.this).setSelection(0);
        localObject = StoriesFragment.a(StoriesFragment.this).getChildAt(0);
        if (localObject != null) {
          ((View)localObject).requestFocus();
        }
      }
      Object localObject = StoriesFragment.p(StoriesFragment.this).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((aoq)((Iterator)localObject).next()).n();
      }
    }
  };
  private final HashMap<String, StoryGroup> s = new HashMap();
  private final HashSet<String> t = new HashSet();
  private final Set<afl> u = Collections.newSetFromMap(new ConcurrentHashMap());
  private final Provider<ajv> v;
  private final zd w;
  private final List<Friend> x = new ArrayList();
  private final List<aoq> y = new ArrayList();
  private InputMethodManager z;
  
  public StoriesFragment()
  {
    this(new yt(), NetworkAnalytics.a(), abz.a(), DictionaryEasyMetric.a(), ng.a(), ajn.a(), ajq.a(), ban.a(), ahr.a(), CameraEventAnalytics.a(), ajv.UNSAFE_USER_PROVIDER, auy.a(), zd.a(), aop.a(), baa.a(), azm.a(), aeh.a(), aup.d(), ajx.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private StoriesFragment(yt paramyt, NetworkAnalytics paramNetworkAnalytics, abz paramabz, DictionaryEasyMetric paramDictionaryEasyMetric, ng paramng, ajn paramajn, ajq paramajq, Bus paramBus, ahr paramahr, CameraEventAnalytics paramCameraEventAnalytics, Provider<ajv> paramProvider, auy paramauy, zd paramzd, aop paramaop, baa parambaa, azm paramazm, aeh paramaeh, aup paramaup, ajx paramajx)
  {
    SnapchatApplication.b().c().a(this);
    C = paramyt;
    K = paramNetworkAnalytics;
    Q = paramabz;
    L = paramDictionaryEasyMetric;
    M = paramng;
    D = paramajn;
    c = paramajq;
    P = paramBus;
    G = paramahr;
    I = paramCameraEventAnalytics;
    v = paramProvider;
    p = paramauy;
    w = paramzd;
    J = paramaop;
    O = parambaa;
    Z = paramazm;
    ad = paramaeh;
    aa = paramaup;
    ac = paramajx;
  }
  
  private void A()
  {
    StoryCollection localStoryCollection = c.b(a.h());
    if (localStoryCollection == null)
    {
      a = null;
      return;
    }
    int i2 = 0;
    int i5 = 0;
    int i3 = 0;
    if (i2 < b.size())
    {
      Object localObject = ((ajg)b.get(i2)).h();
      int i4 = i5;
      if (i5 == 0)
      {
        i4 = i5;
        if (TextUtils.equals((CharSequence)localObject, a.h())) {
          i4 = 1;
        }
      }
      localObject = c.b((String)localObject);
      int i1 = i3;
      if (localObject != null)
      {
        if (localStoryCollection.F() != ((StoryCollection)localObject).F()) {
          break label184;
        }
        i1 = i3;
        if (((ajr)((StoryCollection)localObject).e().get(0)).W() > ((ajr)localStoryCollection.e().get(0)).W()) {
          i1 = i2 + 1;
        }
      }
      for (;;)
      {
        i2 += 1;
        i5 = i4;
        i3 = i1;
        break;
        label184:
        i1 = i3;
        if (localStoryCollection.F().ordinal() > ((StoryCollection)localObject).F().ordinal()) {
          i1 = i2 + 1;
        }
      }
    }
    if (i5 == 0)
    {
      if (i3 == b.size())
      {
        b.add(a);
        return;
      }
      b.add(i3, a);
      return;
    }
    a = null;
  }
  
  @avl
  private void B()
  {
    Iterator localIterator = y.iterator();
    while (localIterator.hasNext()) {
      ((aoq)localIterator.next()).f();
    }
    localIterator = b.iterator();
    int i2 = 0;
    int i1 = 0;
    ajg localajg;
    int i4;
    int i3;
    int i5;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localajg = (ajg)localIterator.next();
        if (!localajg.e().isEmpty()) {
          if (localajg.E())
          {
            if (i2 >= 2) {
              break label187;
            }
            i4 = i2 + 1;
            i3 = 1;
            i5 = 0;
            i2 = i1;
            i1 = i4;
            i4 = i5;
          }
        }
      }
    }
    for (;;)
    {
      if ((i3 != 0) || (i4 != 0)) {
        w.a(localajg, 3, null, false, StoryLoadingContext.AUTO_LOADED);
      }
      if ((i2 != 3) || (i1 != 2))
      {
        i3 = i2;
        i2 = i1;
        i1 = i3;
        break;
        if (i1 >= 3) {
          break label187;
        }
        i5 = i1 + 1;
        i3 = 0;
        i4 = 1;
        i1 = i2;
        i2 = i5;
        continue;
      }
      return;
      label187:
      i5 = i1;
      i3 = 0;
      i4 = 0;
      i1 = i2;
      i2 = i5;
    }
  }
  
  @avl
  private void C()
  {
    T.setVisibility(0);
    U.setVisibility(0);
    if (j.b())
    {
      ((EditText)j.a()).setText("");
      ((EditText)j.a()).clearFocus();
      z.hideSoftInputFromWindow(getView().getWindowToken(), 0);
      j.a(4);
    }
    h = false;
    x.clear();
    q();
    o();
    Iterator localIterator = ((ajv)v.get()).o().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (mSuggestionState == Friend.SuggestState.EXISTS) {
        mSuggestionState = Friend.SuggestState.NOT_SUGGESTION;
      }
    }
  }
  
  @avl
  private void D()
  {
    Iterator localIterator = N.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (((Boolean)N.get(str)).booleanValue()) {
        N.put(str, Boolean.valueOf(false));
      }
    }
  }
  
  private void E()
  {
    Iterator localIterator = u.iterator();
    while (localIterator.hasNext()) {
      if (((afl)localIterator.next()).b()) {
        localIterator.remove();
      }
    }
  }
  
  @avl
  private void F()
  {
    int i1 = b.size();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      StoryCollection localStoryCollection = (StoryCollection)localIterator.next();
      if ((localStoryCollection instanceof ajo)) {
        ((ajo)localStoryCollection).q();
      }
      if ((localStoryCollection == null) || (localStoryCollection.w().isEmpty())) {
        localIterator.remove();
      }
    }
    if (b.size() != i1) {
      q();
    }
  }
  
  private void G()
  {
    A.post(r);
  }
  
  private List<ahb> J()
  {
    ArrayList localArrayList = new ArrayList();
    if (A != null)
    {
      int i1 = Math.min(A.getCount(), g.size());
      int i2 = Math.min(A.getLastVisiblePosition() + 1, i1);
      i1 = A.getFirstVisiblePosition();
      while (i1 < i2)
      {
        localArrayList.add((ahb)A.getItemAtPosition(i1));
        i1 += 1;
      }
    }
    return localArrayList;
  }
  
  private List<ahb> a(@cgb ahd paramahd, @cgb StoryGroup paramStoryGroup)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramahd);
    if (t.contains(paramStoryGroup.c())) {
      localArrayList.addAll(paramStoryGroup.a(true));
    }
    return localArrayList;
  }
  
  private void a(int paramInt)
  {
    l.a(paramInt);
    m.a(paramInt);
  }
  
  @avl
  private void a(ajv paramajv)
  {
    d.clear();
    d.addAll(paramajv.i());
  }
  
  private void a(beh parambeh)
  {
    Object localObject = (ajv)v.get();
    if (localObject == null) {}
    label362:
    do
    {
      do
      {
        return;
        boolean bool1 = mWasSuccessful;
        if ((mSyncAllResult != null) && (mSyncAllResult.mStoriesUpdated)) {}
        for (int i1 = 1;; i1 = 0)
        {
          boolean bool2 = mCalledOnLoginOrOnResume;
          parambeh = mUUID;
          if ((B != null) && (B.b()))
          {
            B.e();
            K.a(parambeh);
          }
          k.setVisibility(8);
          if (!bool1) {
            break label362;
          }
          if (i1 == 0) {
            break;
          }
          z();
          y();
          a((ajv)localObject);
          if (a != null) {
            A();
          }
          q();
          E();
          if ((bool2) && (getUserVisibleHint()))
          {
            K.a(NetworkAnalytics.PageContext.STORY, parambeh);
            if ((b.size() == 0) || (((ajg)b.get(0)).C())) {
              K.b(NetworkAnalytics.PageContext.STORY, parambeh);
            }
          }
          B();
          parambeh = b.iterator();
          while (parambeh.hasNext())
          {
            localObject = (ajg)parambeh.next();
            if (((ajg)localObject).b()) {
              w.a((StoryCollection)localObject);
            }
          }
        }
        parambeh = c.f().iterator();
        while (parambeh.hasNext())
        {
          localObject = (StorySnapLogbook)parambeh.next();
          if ((!mStorySnap.L()) && (!mStorySnap.R())) {
            w.b(mStorySnap);
          }
        }
      } while (!getUserVisibleHint());
      c.m();
      P.a(new bcv());
      return;
    } while (!((LandingPageActivity)getActivity()).c());
    AlertDialogUtils.a(2131493084, getActivity());
  }
  
  @avl
  private void a(final StoryGroup paramStoryGroup, boolean paramBoolean)
  {
    if (paramStoryGroup == null) {
      return;
    }
    t.remove(paramStoryGroup.c());
    int i3 = paramStoryGroup.k();
    int i4;
    int i2;
    int i1;
    Object localObject1;
    if ((paramBoolean) && (i3 > 0))
    {
      i4 = A.getFirstVisiblePosition();
      i2 = A.getLastVisiblePosition();
      i1 = 0;
      if (i1 >= i2 - i4) {
        break label436;
      }
      localObject1 = A.getWrappedView(i1).getTag()).P;
      if ((!(localObject1 instanceof ahd)) || (!TextUtils.equals(((ahd)localObject1).b(), paramStoryGroup.c()))) {}
    }
    for (;;)
    {
      localObject1 = new ArrayList(i3);
      int i5 = Math.min(i1 + i3, A.getChildCount() - 1);
      i2 = i1 + 1;
      Object localObject3;
      for (;;)
      {
        if (i2 <= i5)
        {
          localObject2 = A.getWrappedView(i2);
          localObject3 = ValueAnimator.ofInt(new int[] { ((View)localObject2).getMeasuredHeight(), 0 });
          ((ValueAnimator)localObject3).addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
          {
            public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
            {
              int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
              paramAnonymousValueAnimator = localObject2.getLayoutParams();
              height = i;
              localObject2.setLayoutParams(paramAnonymousValueAnimator);
            }
          });
          ((List)localObject1).add(localObject3);
          i2 += 1;
          continue;
          i1 += 1;
          break;
        }
      }
      final Object localObject2 = new ArrayList();
      i2 = i4 + i5 + 1;
      while (i2 <= i4 + i1 + i3)
      {
        ((ArrayList)localObject2).add(g.get(i2));
        i2 += 1;
      }
      localObject2 = ((ArrayList)localObject2).iterator();
      label377:
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (ahb)((Iterator)localObject2).next();
        i2 = i4 + i1 + 1;
        for (;;)
        {
          if (i2 > i4 + i1 + i3) {
            break label377;
          }
          ahb localahb = (ahb)g.get(i2);
          if (((localahb instanceof StorySnapLogbook)) && (((StorySnapLogbook)localahb).equals(localObject3)))
          {
            g.remove(i2);
            break;
          }
          i2 += 1;
        }
      }
      f.notifyDataSetChanged();
      localObject2 = new AnimatorSet();
      ((AnimatorSet)localObject2).playTogether((Collection)localObject1);
      ((AnimatorSet)localObject2).setDuration(300L);
      ((AnimatorSet)localObject2).addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          o();
          q();
          StoriesFragment.a(StoriesFragment.this, null);
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          StoriesFragment.a(StoriesFragment.this, paramStoryGroup.c());
        }
      });
      ((AnimatorSet)localObject2).start();
      return;
      q();
      return;
      label436:
      i1 = 0;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      g.addAll(d);
    }
    for (;;)
    {
      return;
      if ((!azm.d()) || (d.size() > 12)) {
        break;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        StoryCollection localStoryCollection = c.b(localFriend.h());
        if ((localStoryCollection != null) && (localStoryCollection.w().size() != localStoryCollection.e().size())) {
          g.add(localFriend);
        }
      }
    }
    g.addAll(d);
  }
  
  protected static int n()
  {
    return 2130837804;
  }
  
  @avl
  private void t()
  {
    final FragmentActivity localFragmentActivity = getActivity();
    Iterator localIterator = J().iterator();
    while (localIterator.hasNext())
    {
      ahb localahb = (ahb)localIterator.next();
      if ((localahb instanceof aoq)) {
        ((aoq)localahb).d();
      } else if (localahb.m() != null) {
        bgp.b(new Runnable()
        {
          public final void run()
          {
            p.a(localFragmentActivity, b);
          }
        });
      }
    }
  }
  
  @avl
  private void u()
  {
    if (!ajx.aQ())
    {
      n.a(0);
      return;
    }
    n.a(8);
  }
  
  @avl
  private void v()
  {
    ajv localajv = (ajv)v.get();
    if (localajv == null) {
      return;
    }
    a(localajv);
    x();
    y();
    z();
    q();
  }
  
  private void w()
  {
    T.setVisibility(4);
    U.setVisibility(8);
    j.a(0);
    ((EditText)j.a()).requestFocus();
    z.showSoftInput(j.a(), 0);
    h = true;
  }
  
  private void x()
  {
    Iterator localIterator = y.iterator();
    while (localIterator.hasNext()) {
      ((aoq)localIterator.next()).b();
    }
  }
  
  @avl
  private void y()
  {
    b.clear();
    b.addAll(c.o());
  }
  
  @avl
  private void z()
  {
    s.clear();
    s.putAll(c.mStories);
  }
  
  public final void a(ajg paramajg)
  {
    if (paramajg.equals(S))
    {
      I.a(CameraEventAnalytics.CameraContext.DOUBLE_TAP);
      P.a(new bcz(paramajg.h(), 3, true));
    }
    for (;;)
    {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          StoriesFragment.m(StoriesFragment.this);
        }
      }, 450L);
      return;
      S = paramajg;
    }
  }
  
  public final void a(StorySnapLogbook paramStorySnapLogbook)
  {
    paramStorySnapLogbook = mStorySnap.mClientId;
    D.a(paramStorySnapLogbook, C);
    d();
  }
  
  public final void a(ArrayList<afl> paramArrayList)
  {
    u.clear();
    u.addAll(paramArrayList);
    E();
    q();
  }
  
  public final boolean a(Friend paramFriend)
  {
    return x.contains(paramFriend);
  }
  
  public final boolean a(String paramString)
  {
    return t.contains(paramString);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void d()
  {
    z();
    q();
  }
  
  protected final void e()
  {
    nf.d();
    M.b("move_to_page", "story");
    super.e();
    AnalyticsEvents.c();
    if ((getActivity() instanceof LandingPageActivity)) {
      getActivityq.a(NotificationAnalytics.NotificationDestinationType.MY_FRIENDS);
    }
    if (!H)
    {
      G.b();
      H = true;
    }
    P.a(new bat());
    c.m();
    P.a(new bcv());
    P.a(new bdd());
    getActivity().setVolumeControlStream(3);
    t();
    u();
    if (!ajx.bz())
    {
      ajx.bA();
      P.a(new bbg(getString(2131493534), null, getResources().getColor(2131230784), -1, false, "StoriesFragment"));
    }
    if (azu.b()) {
      azu.a(getActivity());
    }
    i = true;
    Iterator localIterator = J().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (ahb)localIterator.next();
      if ((localObject1 instanceof ajo))
      {
        localObject1 = ((ajo)localObject1).r();
        if (localObject1 != null)
        {
          Object localObject2 = (Boolean)N.get(localObject1);
          if ((localObject2 == null) || (!((Boolean)localObject2).booleanValue())) {
            N.put(localObject1, Boolean.valueOf(false));
          }
          if (i)
          {
            localObject1 = N.keySet().iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject2 = (String)((Iterator)localObject1).next();
              if (!((Boolean)N.get(localObject2)).booleanValue())
              {
                AnalyticsEvents.e((String)localObject2);
                N.put(localObject2, Boolean.valueOf(true));
              }
            }
          }
        }
      }
    }
    nf.e();
  }
  
  public final void e(boolean paramBoolean)
  {
    P.a(new bap(CameraDisplayState.SHOW));
  }
  
  protected final void f()
  {
    super.f();
    AnalyticsEvents.d();
    L.a("FIRST_MEDIA_OPENED");
    M.c("exit_page", "story");
    Object localObject1 = new ArrayList();
    Object localObject2 = g.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      ahb localahb = (ahb)((Iterator)localObject2).next();
      if ((localahb instanceof StoryCollection)) {
        ((ArrayList)localObject1).add(((StoryCollection)localahb).h());
      }
    }
    localObject2 = avb.a((Collection)localObject1, ",");
    long l1 = ((ArrayList)localObject1).size();
    if (l1 == 0L) {
      ScAnalyticsEventEngine.a(new lh());
    }
    localObject1 = new li();
    posterId = ((String)localObject2);
    storyCellCount = Long.valueOf(l1);
    ScAnalyticsEventEngine.a((lt)localObject1);
    localObject1 = new ArrayList(t).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      a((StoryGroup)s.get(localObject2), false);
    }
    t.clear();
    if (A != null) {
      A.setSelectionAfterHeaderView();
    }
    if (h) {
      C();
    }
    F();
    a = null;
    u();
    azu.a();
    i = false;
    D();
  }
  
  public final boolean g()
  {
    if (aa.g()) {
      return true;
    }
    if (h)
    {
      C();
      return true;
    }
    return ad.b();
  }
  
  protected final ala h()
  {
    return new ala(new String[] { "STORIES" });
  }
  
  public final AnalyticsEvents.AnalyticsContext i()
  {
    return AnalyticsEvents.AnalyticsContext.STORIES;
  }
  
  public final String j()
  {
    return "StoriesFragment";
  }
  
  protected final boolean j_()
  {
    return super.isAdded();
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
  
  public final boolean l()
  {
    return h;
  }
  
  public final List<aoq> m()
  {
    return y;
  }
  
  protected final void o()
  {
    if (f == null) {
      return;
    }
    if ((g.size() != 0) || (f.getCount() != 0) || (h) || (!q))
    {
      a(8);
      return;
    }
    a(0);
  }
  
  public void onAttach(Activity paramActivity)
  {
    nf.d();
    super.onAttach(paramActivity);
    R = ((bfa)paramActivity);
    nf.e();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActivity().getSupportLoaderManager().initLoader$71be8de6(1001, this);
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new CursorLoader(getActivity(), SnapchatProvider.b, PublisherAndEditionVirtualTable.a, null);
  }
  
  public View onCreateView(LayoutInflater arg1, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    mFragmentLayout = ???.inflate(2130968752, paramViewGroup, false);
    z = ((InputMethodManager)getActivity().getSystemService("input_method"));
    ??? = y;
    ae = new acy(getActivity(), ad, (OpenChannelAnimationView)c(2131362267));
    paramViewGroup = new ArrayList();
    paramViewGroup.add(ae);
    paramViewGroup.add(new aos(getActivity(), w));
    ???.addAll(paramViewGroup);
    T = c(2131362760);
    U = c(2131362757);
    X = ((DiscoverButtonView)c(2131362759));
    j = new bgr(mFragmentLayout, 2131362758, 2131362778, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((EditText)j.a()).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymous2Editable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
          
          public final void onTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            if (TextUtils.isEmpty(paramAnonymous2CharSequence))
            {
              StoriesFragment.a(StoriesFragment.this).setFastScrollAlwaysVisible(true);
              StoriesFragment.a(StoriesFragment.this).setFastScrollEnabled(true);
              StoriesFragment.b(StoriesFragment.this).a(4);
            }
            for (;;)
            {
              p();
              r();
              return;
              StoriesFragment.c(StoriesFragment.this).a(paramAnonymous2CharSequence.toString());
              StoriesFragment.a(StoriesFragment.this).setFastScrollAlwaysVisible(false);
              StoriesFragment.a(StoriesFragment.this).setFastScrollEnabled(false);
              StoriesFragment.b(StoriesFragment.this).a(0);
            }
          }
        });
      }
    });
    V = new bgr(mFragmentLayout, 2131362758, 2131361836, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        StoriesFragment.b(StoriesFragment.this).a().setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymous2View)
          {
            ((EditText)j.a()).setText("");
          }
        });
      }
    });
    n = new bgr(mFragmentLayout, 2131362768, 2131362770, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        o = ((TextView)StoriesFragment.d(StoriesFragment.this).findViewById(2131362771));
        o.setText(getResources().getString(2131493138, new Object[] { baj.a(Emoji.GRINNING_FACE_WITH_SMILING_EYES) }));
      }
    });
    X.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (h) {
          StoriesFragment.e(StoriesFragment.this);
        }
        StoriesFragment.f(StoriesFragment.this).a(4, true);
      }
    });
    paramViewGroup = Q;
    paramBundle = new abz.a()
    {
      @caq
      public final void a(final boolean paramAnonymousBoolean)
      {
        StoriesFragment.g(StoriesFragment.this).post(new Runnable()
        {
          public final void run()
          {
            if (paramAnonymousBoolean)
            {
              StoriesFragment.g(StoriesFragment.this).a();
              StoriesFragment.g(StoriesFragment.this).setContentDescription("Pulsing");
              return;
            }
            DiscoverButtonView localDiscoverButtonView = StoriesFragment.g(StoriesFragment.this);
            if (paramAnonymousBoolean)
            {
              a = false;
              localDiscoverButtonView.removeCallbacks(b);
              localDiscoverButtonView.invalidate();
            }
            StoriesFragment.g(StoriesFragment.this).setContentDescription("Not Pulsing");
          }
        });
      }
    };
    for (;;)
    {
      synchronized (a)
      {
        a.add(paramBundle);
        if (Q.b()) {
          X.a();
        }
        T.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            StoriesFragment.h(StoriesFragment.this);
          }
        });
        c(2131362756).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            getActivity().onBackPressed();
          }
        });
        u();
        W = ((ImageView)c(2131362764));
        k = c(2131362767);
        Y = ((DismissAnimationView)c(2131362769));
        l = new bgr(mFragmentLayout, 2131362765, 2131362774);
        m = new bgr(mFragmentLayout, 2131362766, 2131362773, new bgr.a()
        {
          public final void a(View paramAnonymousView)
          {
            paramAnonymousView = m.a();
            getActivity().getAssets();
            atj.a(paramAnonymousView);
            ((Button)m.a()).setBackgroundResource(StoriesFragment.n());
            ((Button)m.a()).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymous2View)
              {
                ban.a().a(new bdw(new AddFriendsFragment()));
              }
            });
          }
        });
        if (v.get() == null)
        {
          k.setVisibility(0);
          f = new StoriesAdapter(getActivity(), g, this, p);
          v();
          A = ((StickyListHeadersListView)c(2131362763));
          A.setAdapter(f);
          A.setFastScrollAlwaysVisible(true);
          A.setTextFilterEnabled(true);
          registerForContextMenu(A);
          A.setOnTouchListener(new View.OnTouchListener()
          {
            public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
            {
              if (h) {
                StoriesFragment.i(StoriesFragment.this).hideSoftInputFromWindow(getView().getWindowToken(), 0);
              }
              return false;
            }
          });
          ??? = new ArrayList(2);
          ???.add(new AbsListView.OnScrollListener()
          {
            public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
            
            public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
            {
              if (paramAnonymousInt != 0) {
                return;
              }
              StoriesFragment.j(StoriesFragment.this);
            }
          });
          ???.add(new aql(O, "Stories"));
          ??? = new aqn(???);
          A.setOnScrollListener(???);
          B = ((SnapchatPtrFrameLayout)c(2131362762));
          B.setPtrHandler(new bur()
          {
            public final void a(PtrFrameLayout paramAnonymousPtrFrameLayout)
            {
              StoriesFragment.k(StoriesFragment.this).a(NetworkAnalytics.PageContext.STORY);
              StoriesFragment.l(StoriesFragment.this);
            }
            
            public final boolean a()
            {
              return bfd.a(StoriesFragment.a(StoriesFragment.this));
            }
          });
          ??? = new TypedValue();
          paramViewGroup = new DisplayMetrics();
          paramBundle = getActivity();
          if ((paramBundle == null) || (paramBundle.getTheme() == null)) {
            break label743;
          }
          paramBundle.getTheme().resolveAttribute(16842829, ???, true);
          ((WindowManager)paramBundle.getSystemService("window")).getDefaultDisplay().getMetrics(paramViewGroup);
          i1 = (int)TypedValue.complexToDimension(data, paramViewGroup);
          F = i1;
          nf.e();
          return mFragmentLayout;
        }
      }
      k.setVisibility(8);
      continue;
      label743:
      int i1 = 0;
    }
  }
  
  @boh
  public void onGetLocationDataTaskCompletedEvent(bbs parambbs)
  {
    a(new beh(null, true, false, new ajv.a(false, false, true, false)));
  }
  
  @boh
  public void onHideSnapStoryEvent(bby parambby)
  {
    a(WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND);
    f.notifyDataSetChanged();
    P.a(new bdt(true));
  }
  
  @boh
  public void onLoadStoryMediaCompleteEvent(bcf parambcf)
  {
    parambcf = b;
    if ((parambcf.size() > 0) && (((ajg)parambcf.get(0)).C())) {
      K.b(NetworkAnalytics.PageContext.STORY, null);
    }
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    if ((ae == null) || (!azm.d())) {
      return;
    }
    ae.a(null, false);
  }
  
  public void onPause()
  {
    super.onPause();
    a = null;
  }
  
  @boh
  public void onPostStorySnapRequestCompleteEvent(bcn parambcn)
  {
    d();
  }
  
  @boh
  public void onRecentStoryCollectionCompletedViewingEvent(bct parambct)
  {
    Iterator localIterator = b.iterator();
    ajg localajg;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localajg = (ajg)localIterator.next();
    } while ((!localajg.w().isEmpty()) || (!TextUtils.equals(localajg.h(), mStorySnap.mUsername)));
    for (parambct = localajg;; parambct = null)
    {
      if (parambct != null)
      {
        if ((a != null) && (!TextUtils.equals(a.h(), parambct.h())))
        {
          g.remove(a);
          b.remove(a);
        }
        a = parambct;
      }
      x();
      f.notifyDataSetChanged();
      t();
      B();
      return;
    }
  }
  
  @boh
  public void onRefreshFriendExistsTask(bcx parambcx)
  {
    f.notifyDataSetChanged();
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    Friend localFriend = mFriend;
    if ((localFriend != null) && (mAction == FriendAction.ADD))
    {
      x.add(localFriend);
      if (!TextUtils.equals(localFriend.h(), y_())) {
        break label56;
      }
    }
    label56:
    for (mSuggestType = Friend.SuggestType.USERNAME;; mSuggestType = Friend.SuggestType.ADDRESS_BOOK)
    {
      v();
      return;
    }
  }
  
  @boh
  public void onResetStoriesFragmentScrollEvent(bda parambda)
  {
    G();
  }
  
  public void onResume()
  {
    nf.d();
    super.onResume();
    H = false;
    Object localObject = (ajv)v.get();
    if (localObject != null)
    {
      if (!mStoryViewRecordsSinceLastServerChange.isEmpty()) {
        new pg().executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      }
      v();
    }
    G();
    localObject = getActivity().getIntent();
    String str = abh.a((Intent)localObject);
    if (str != null)
    {
      if (localObject != null) {
        ((Intent)localObject).setData(null);
      }
      w();
      ((EditText)j.a()).setText(str);
      if (!ajv.a(getActivity()).c(str)) {
        new abg(getActivity(), str).show();
      }
    }
    nf.e();
  }
  
  @boh
  public void onSanitizeStoriesFragmentEvent(bdc parambdc)
  {
    parambdc = (ajv)v.get();
    if (parambdc == null) {
      return;
    }
    y();
    a(parambdc);
    if (a != null) {
      A();
    }
    q();
  }
  
  @boh
  public void onSharedStoryButtonClickedEvent(bdh parambdh)
  {
    StoryGroup localStoryGroup = storyGroup;
    String str = localStoryGroup.e();
    if (localStoryGroup.f()) {}
    for (parambdh = localStoryGroup.g();; parambdh = null)
    {
      Object localObject = parambdh;
      if (TextUtils.isEmpty(parambdh)) {
        localObject = atx.a(null, 2131493275, new Object[] { localStoryGroup.e() });
      }
      parambdh = new apz(getActivity(), (String)localObject)
      {
        protected final void a() {}
      };
      parambdh.setTitle(str);
      parambdh.show();
      return;
    }
  }
  
  @boh
  public void onSharedStoryFriendButtonClickedEvent(final bdi parambdi)
  {
    final Friend localFriend = friend;
    Object localObject2 = mCustomTitle;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      if (mIsSharedStory) {
        localObject1 = localFriend.k();
      }
    }
    for (;;)
    {
      final StoryCollection localStoryCollection = c.b(friend.h());
      String str = mCustomDescription;
      localObject2 = str;
      if (TextUtils.isEmpty(str)) {
        localObject2 = atx.a(null, 2131492907, new Object[] { localFriend.k() });
      }
      parambdi = new aqb(getActivity(), (String)localObject2, atx.a(null, 2131493269, new Object[0]), atx.a(null, 2131493199, new Object[0]))
      {
        protected final void a() {}
        
        protected final void b()
        {
          new pu(localFriend.h()).f();
          StoriesFragment.o(StoriesFragment.this);
          StoryCollection localStoryCollection = localStoryCollection;
          boolean bool = parambdiisInRecentUpdates;
          if ((localStoryCollection == null) || (localStoryCollection.e().size() == 0)) {}
          for (;;)
          {
            StoriesFragment.a(StoriesFragment.this, localFriend);
            return;
            ajr localajr = (ajr)localStoryCollection.e().get(0);
            lo locallo = new lo();
            viewLocation = Long.valueOf(aop.a(bool));
            storyType = aop.c(localajr);
            posterId = localStoryCollection.h();
            if (localajr.aw()) {
              sponsor = localajr.ax();
            }
            if (aop.a(localStoryCollection.h())) {
              geoFence = "LOCAL";
            }
            ScAnalyticsEventEngine.a(locallo);
          }
        }
      };
      parambdi.setTitle((CharSequence)localObject1);
      parambdi.show();
      return;
      localObject2 = localFriend.h();
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(localFriend.a())) {
        localObject1 = (String)localObject2 + " (" + localFriend.a() + ")";
      }
    }
  }
  
  @boh
  public void onSponsoredStoryViewingStartedEvent(bdv parambdv)
  {
    f.notifyDataSetChanged();
  }
  
  @boh
  public void onStoriesNotifyDatasetChangedEvent(bdy parambdy)
  {
    f.notifyDataSetChanged();
    t();
  }
  
  @boh
  public void onStoryDismissAnimationEvent(bdz parambdz)
  {
    Y.a.start();
  }
  
  @boh
  public void onStorySnapDeleteEvent(bcj parambcj)
  {
    d();
  }
  
  @boh
  public void onStorySnapPostEvent(beb parambeb)
  {
    d();
  }
  
  @boh
  public void onStoryThumbnailLoadedEvent(bed parambed)
  {
    Object localObject = mStoriesThumbnailCacheItem;
    if (azm.d()) {
      f.notifyDataSetChanged();
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 <= A.getChildCount())
      {
        parambed = A.getWrappedView(i1);
        if (parambed == null) {
          break label244;
        }
        parambed = (ImageView)parambed.findViewById(2131362455);
        if ((parambed == null) || (!parambed.getTag().equals(mCacheKey))) {
          break label244;
        }
        localObject = p.a((auz)localObject);
        if (localObject != null)
        {
          parambed.setImageBitmap((Bitmap)localObject);
          localObject = new AnimationSet(true);
          ScaleAnimation localScaleAnimation = new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 0.5F, 0.5F);
          localScaleAnimation.setDuration(200L);
          localScaleAnimation.setFillAfter(true);
          TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.25F, 1, 0.0F, 1, 0.25F, 1, 0.0F);
          localTranslateAnimation.setDuration(200L);
          RotateAnimation localRotateAnimation = new RotateAnimation(90.0F, 0.0F, 1, 0.5F, 1, 0.5F);
          localRotateAnimation.setDuration(200L);
          AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
          localAlphaAnimation.setDuration(230L);
          ((AnimationSet)localObject).addAnimation(localScaleAnimation);
          ((AnimationSet)localObject).addAnimation(localTranslateAnimation);
          ((AnimationSet)localObject).addAnimation(localRotateAnimation);
          ((AnimationSet)localObject).addAnimation(localAlphaAnimation);
          parambed.startAnimation((Animation)localObject);
        }
      }
      return;
      label244:
      i1 += 1;
    }
  }
  
  @boh
  public void onSyncAllCompletedEvent(beh parambeh)
  {
    a(parambeh);
  }
  
  @boh
  public void onToggleStoryEvent(bem parambem)
  {
    if (E != null) {
      return;
    }
    final StoryGroup localStoryGroup = mStoryGroup;
    if (t.contains(localStoryGroup.c()))
    {
      a(localStoryGroup, true);
      return;
    }
    t.add(localStoryGroup.c());
    int i4 = localStoryGroup.k();
    if (i4 == 0)
    {
      f.notifyDataSetChanged();
      return;
    }
    int i3 = 0;
    int i2 = 0;
    int i1;
    for (;;)
    {
      i1 = i2;
      if (i3 >= A.getLastVisiblePosition() - A.getFirstVisiblePosition()) {
        break;
      }
      parambem = A.getChildAt(i3);
      ahb localahb = A.getWrappedView(i3).getTag()).P;
      i2 += Math.min(parambem.getBottom(), A.getHeight()) - Math.max(parambem.getTop(), 0);
      if ((localahb instanceof ahd))
      {
        i1 = i2;
        if (((ahd)localahb).d().equals(localStoryGroup)) {
          break;
        }
      }
      i3 += 1;
    }
    if (B.b()) {}
    for (i2 = B.getHeaderHeight() + i1;; i2 = i1)
    {
      parambem = (RelativeLayout.LayoutParams)W.getLayoutParams();
      if (parambem != null)
      {
        parambem.setMargins(0, i1, 0, 0);
        W.setLayoutParams(parambem);
        mFragmentLayout.requestLayout();
      }
      q();
      a(8);
      B.setDrawingCacheEnabled(true);
      parambem = B.getDrawingCache();
      if (parambem == null) {
        parambem = null;
      }
      while (parambem != null)
      {
        W.setImageBitmap(parambem);
        W.setVisibility(0);
        parambem = new TranslateAnimation(0.0F, 0.0F, 0.0F, F * i4);
        parambem.setDuration(300L);
        parambem.setAnimationListener(new Animation.AnimationListener()
        {
          public final void onAnimationEnd(Animation paramAnonymousAnimation)
          {
            StoriesFragment.n(StoriesFragment.this).setVisibility(8);
            StoriesFragment.a(StoriesFragment.this, null);
          }
          
          public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationStart(Animation paramAnonymousAnimation)
          {
            StoriesFragment.a(StoriesFragment.this, localStoryGroup.c());
          }
        });
        W.startAnimation(parambem);
        return;
        parambem = Bitmap.createBitmap(parambem, 0, i2, parambem.getWidth(), parambem.getHeight() - i2);
        B.setDrawingCacheEnabled(false);
      }
      break;
    }
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    v();
    f.notifyDataSetChanged();
    k.setVisibility(8);
    q = true;
  }
  
  protected final void p()
  {
    Object localObject1 = (ajv)v.get();
    if ((localObject1 == null) || (!super.isAdded())) {
      return;
    }
    boolean bool;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    if ((h) && (!TextUtils.isEmpty(((EditText)j.a()).getText())))
    {
      bool = true;
      g.clear();
      if (!bool)
      {
        localObject2 = g;
        localObject3 = new ArrayList();
        localObject4 = s.values().iterator();
      }
    }
    else
    {
      for (;;)
      {
        if (!((Iterator)localObject4).hasNext()) {
          break label186;
        }
        localObject5 = (StoryGroup)((Iterator)localObject4).next();
        if (((StoryGroup)localObject5).k() > 0)
        {
          if ((localObject5 instanceof ajb))
          {
            ((List)localObject3).addAll(0, a(new agw(), (StoryGroup)localObject5));
            continue;
            bool = false;
            break;
          }
          ((List)localObject3).addAll(a(new ahd((StoryGroup)localObject5), (StoryGroup)localObject5));
        }
      }
      label186:
      ((ArrayList)localObject2).addAll((Collection)localObject3);
    }
    if ((!bool) && (azm.d()))
    {
      localObject2 = y.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (aoq)((Iterator)localObject2).next();
        if (!((aoq)localObject3).m_()) {
          g.add(localObject3);
        }
      }
    }
    if (!bool) {
      g.addAll(b);
    }
    a(bool);
    if (bool)
    {
      localObject4 = new ArrayList();
      localObject2 = new HashSet(d);
      localObject3 = new HashSet(((ajv)localObject1).o());
      localObject5 = ((ajv)localObject1).n().iterator();
      while (((Iterator)localObject5).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject5).next();
        if ((!mIsBlocked) && (!TextUtils.equals(ajx.l(), localFriend.h())) && (!((Set)localObject2).contains(localFriend)) && (!((Set)localObject3).contains(localFriend))) {
          ((List)localObject4).add(localFriend);
        }
      }
      ((List)localObject4).addAll(((ajv)localObject1).m());
      Collections.sort((List)localObject4);
      g.addAll((Collection)localObject4);
      localObject1 = new ArrayList();
      localObject3 = ((Set)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Friend)((Iterator)localObject3).next();
        if ((!mIsBlocked) && (!TextUtils.equals(ajx.l(), ((Friend)localObject4).h())) && (!((Set)localObject2).contains(localObject4))) {
          ((List)localObject1).add(localObject4);
        }
      }
      Collections.sort((List)localObject1);
      g.addAll((Collection)localObject1);
    }
    t();
  }
  
  @avl
  protected final void q()
  {
    p();
    r();
    f.notifyDataSetChanged();
    o();
    t();
  }
  
  @avl
  protected final void r()
  {
    if (h)
    {
      g.addAll(u);
      f.getFilter().filter(y_());
    }
  }
  
  @cgb
  public final String y_()
  {
    if (!j.b()) {
      return "";
    }
    return ((EditText)j.a()).getText().toString();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */