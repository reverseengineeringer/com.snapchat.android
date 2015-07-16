package com.snapchat.android.fragments.stories;

import acg;
import ach;
import acz;
import acz.a;
import ady;
import adz;
import aea;
import aej;
import aej.a;
import afh;
import agl;
import aht;
import ahy;
import ahz;
import aia;
import ain;
import ajx;
import akc;
import aki;
import akk;
import akl;
import akp;
import akp.a;
import akr;
import alv;
import amt;
import amu;
import amu.a;
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
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
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
import apl;
import apm;
import apo;
import aqy;
import ara;
import ari;
import ark;
import auh;
import auv;
import avf;
import avn;
import avw;
import avx;
import avz;
import awj;
import azy;
import bal;
import bat;
import bbb;
import bbo;
import bbq;
import bbu;
import bcs;
import bcy;
import bdf;
import bdj;
import bdn;
import bdt;
import bdv;
import bdw;
import bdx;
import bdz;
import bea;
import bec;
import bed;
import beh;
import bei;
import bet;
import bev;
import bex;
import bey;
import bfa;
import bfc;
import bfg;
import bfl;
import bfq;
import bfz;
import bgd;
import bhp;
import bhr;
import bhr.a;
import bpi;
import bvs;
import cbr;
import chc;
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
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.discover.model.ChannelPage;
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
import lz;
import ma;
import mg;
import ml;
import nw;
import nx;
import org.lucasr.twowayview.TwoWayView;
import ps.a;
import ps.b;
import px;
import ql;
import zp;
import zz;

@awj
public class StoriesFragment
  extends SnapchatFragment
  implements aej.a, StoriesAdapter.b, ps.b
{
  private InputMethodManager A;
  private StickyListHeadersListView B;
  private SnapchatPtrFrameLayout C;
  private final zp D;
  private final aki E;
  private String F = null;
  private int G;
  private final ain H;
  private boolean I = false;
  private final CameraEventAnalytics J;
  private final apl K;
  private final NetworkAnalytics L;
  private final DictionaryEasyMetric M;
  private final nx N;
  private final bbb O;
  private final Bus P;
  private final acz Q;
  private bfz R;
  private akc S;
  private Friend T;
  private View U;
  private View V;
  private bhr<View> W;
  private ImageView X;
  private DiscoverButtonView Y;
  private DismissAnimationView Z;
  protected akc a;
  private final bal aa;
  private avn ab;
  private final ps.a ac = new ps.a(this);
  private final akr ad;
  protected List<akc> b = new ArrayList();
  protected akk c;
  protected List<Friend> d = new ArrayList();
  @Inject
  public ach e;
  protected StoriesAdapter f;
  protected final ArrayList<ahy> g = new ArrayList();
  protected boolean h;
  protected bhr<EditText> i;
  protected View j;
  protected bhr<View> k;
  protected bhr<Button> l;
  protected final avw m;
  protected boolean n = false;
  protected final Runnable o = new Runnable()
  {
    public final void run()
    {
      if (StoriesFragment.a(StoriesFragment.this) != null)
      {
        StoriesFragment.a(StoriesFragment.this).setSelection(0);
        localObject1 = StoriesFragment.a(StoriesFragment.this).getChildAt(0);
        if (localObject1 != null) {
          ((View)localObject1).requestFocus();
        }
      }
      Object localObject1 = StoriesFragment.p(StoriesFragment.this).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (apm)((Iterator)localObject1).next();
        if (e != null)
        {
          e.setSelection(0);
          localObject2 = e.getChildAt(0);
          if (localObject2 != null) {
            ((View)localObject2).requestFocus();
          }
        }
      }
    }
  };
  private final HashMap<String, StoryGroup> p = new HashMap();
  private final HashSet<String> q = new HashSet();
  private final Set<agl> r = Collections.newSetFromMap(new ConcurrentHashMap());
  private final Provider<akp> s;
  private final zz t;
  private final List<Friend> u = new ArrayList();
  private final List<apm> v = new ArrayList();
  private final afh w;
  private final aej x;
  private ady y;
  private int z = 2;
  
  public StoriesFragment()
  {
    this(new zp(), NetworkAnalytics.a(), acz.a(), DictionaryEasyMetric.a(), nx.a(), aki.a(), akk.a(), bbo.a(), ain.a(), CameraEventAnalytics.a(), akp.UNSAFE_USER_PROVIDER, avw.a(), zz.a(), apl.a(), bbb.b(), bal.a(), afh.a(), avn.d(), akr.a(), aej.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private StoriesFragment(zp paramzp, NetworkAnalytics paramNetworkAnalytics, acz paramacz, DictionaryEasyMetric paramDictionaryEasyMetric, nx paramnx, aki paramaki, akk paramakk, Bus paramBus, ain paramain, CameraEventAnalytics paramCameraEventAnalytics, Provider<akp> paramProvider, avw paramavw, zz paramzz, apl paramapl, bbb parambbb, bal parambal, afh paramafh, avn paramavn, akr paramakr, aej paramaej)
  {
    SnapchatApplication.b().c().a(this);
    D = paramzp;
    L = paramNetworkAnalytics;
    Q = paramacz;
    M = paramDictionaryEasyMetric;
    N = paramnx;
    E = paramaki;
    c = paramakk;
    P = paramBus;
    H = paramain;
    J = paramCameraEventAnalytics;
    s = paramProvider;
    m = paramavw;
    t = paramzz;
    K = paramapl;
    O = parambbb;
    aa = parambal;
    w = paramafh;
    ab = paramavn;
    ad = paramakr;
    x = paramaej;
  }
  
  private void A()
  {
    StoryCollection localStoryCollection = c.b(a.l());
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
      Object localObject = ((akc)b.get(i2)).l();
      int i4 = i5;
      if (i5 == 0)
      {
        i4 = i5;
        if (TextUtils.equals((CharSequence)localObject, a.l())) {
          i4 = 1;
        }
      }
      localObject = c.b((String)localObject);
      int i1 = i3;
      if (localObject != null)
      {
        if (localStoryCollection.B() != ((StoryCollection)localObject).B()) {
          break label166;
        }
        i1 = i3;
        if (((StoryCollection)localObject).d().U() > localStoryCollection.d().U()) {
          i1 = i2 + 1;
        }
      }
      for (;;)
      {
        i2 += 1;
        i5 = i4;
        i3 = i1;
        break;
        label166:
        i1 = i3;
        if (localStoryCollection.B().ordinal() > ((StoryCollection)localObject).B().ordinal()) {
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
  
  @awj
  private void B()
  {
    Iterator localIterator = v.iterator();
    while (localIterator.hasNext()) {
      ((apm)localIterator.next()).f();
    }
    localIterator = b.iterator();
    int i2 = 0;
    int i1 = 0;
    akc localakc;
    int i4;
    int i3;
    int i5;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localakc = (akc)localIterator.next();
        if (localakc.e() != 0) {
          if (localakc.A())
          {
            if (i2 >= t.e()) {
              break label212;
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
        t.a(localakc, t.b(), null, false, StoryLoadingContext.AUTO_LOADED);
      }
      if ((i2 != t.d()) || (i1 != t.e()))
      {
        i3 = i2;
        i2 = i1;
        i1 = i3;
        break;
        if (i1 >= t.d()) {
          break label212;
        }
        i5 = i1 + 1;
        i3 = 0;
        i4 = 1;
        i1 = i2;
        i2 = i5;
        continue;
      }
      return;
      label212:
      i5 = i1;
      i3 = 0;
      i4 = 0;
      i1 = i2;
      i2 = i5;
    }
  }
  
  @awj
  private void C()
  {
    U.setVisibility(0);
    V.setVisibility(0);
    if (i.b())
    {
      ((EditText)i.a()).setText("");
      ((EditText)i.a()).clearFocus();
      A.hideSoftInputFromWindow(getView().getWindowToken(), 0);
      i.a(4);
    }
    h = false;
    u.clear();
    r();
    p();
    Iterator localIterator = ((akp)s.get()).o().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (mSuggestionState == Friend.SuggestState.EXISTS) {
        mSuggestionState = Friend.SuggestState.NOT_SUGGESTION;
      }
    }
  }
  
  private void D()
  {
    Iterator localIterator = r.iterator();
    while (localIterator.hasNext()) {
      if (((agl)localIterator.next()).b()) {
        localIterator.remove();
      }
    }
  }
  
  @awj
  private void E()
  {
    int i1 = b.size();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      StoryCollection localStoryCollection = (StoryCollection)localIterator.next();
      if ((localStoryCollection == null) || (localStoryCollection.s() == 0)) {
        localIterator.remove();
      }
    }
    if (b.size() != i1) {
      r();
    }
  }
  
  private void F()
  {
    B.post(o);
  }
  
  private List<ahy> a(@chc aia paramaia, @chc StoryGroup paramStoryGroup)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramaia);
    if (q.contains(paramStoryGroup.c())) {
      localArrayList.addAll(paramStoryGroup.a(true));
    }
    return localArrayList;
  }
  
  private void a(int paramInt)
  {
    k.a(paramInt);
    l.a(paramInt);
  }
  
  @awj
  private void a(akp paramakp)
  {
    d.clear();
    d.addAll(paramakp.i());
  }
  
  private void a(bfg parambfg)
  {
    Object localObject = (akp)s.get();
    if (localObject == null) {}
    label315:
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
          parambfg = mUUID;
          if ((C != null) && (C.a()))
          {
            C.e();
            L.a(parambfg);
          }
          j.setVisibility(8);
          if (!bool1) {
            break label315;
          }
          if (i1 == 0) {
            break;
          }
          z();
          x();
          y();
          a((akp)localObject);
          if (a != null) {
            A();
          }
          r();
          D();
          if ((bool2) && (getUserVisibleHint()))
          {
            L.a(NetworkAnalytics.PageContext.STORY, parambfg);
            if ((b.size() == 0) || (((akc)b.get(0)).z())) {
              L.b(NetworkAnalytics.PageContext.STORY, parambfg);
            }
          }
          B();
          parambfg = c.f().iterator();
          while (parambfg.hasNext())
          {
            localObject = (StorySnapLogbook)parambfg.next();
            if ((!mStorySnap.M()) && (!mStorySnap.S())) {
              t.b(mStorySnap);
            }
          }
        }
      } while (!getUserVisibleHint());
      c.m();
      P.a(new bdv());
      return;
    } while (!((LandingPageActivity)getActivity()).c());
    AlertDialogUtils.a(2131493084, getActivity());
  }
  
  @awj
  private void a(final StoryGroup paramStoryGroup, boolean paramBoolean)
  {
    if (paramStoryGroup == null) {
      return;
    }
    q.remove(paramStoryGroup.c());
    int i3 = paramStoryGroup.k();
    int i4;
    int i2;
    int i1;
    Object localObject1;
    if ((paramBoolean) && (i3 > 0))
    {
      i4 = B.getFirstVisiblePosition();
      i2 = B.getLastVisiblePosition();
      i1 = 0;
      if (i1 >= i2 - i4) {
        break label436;
      }
      localObject1 = B.getWrappedView(i1).getTag()).O;
      if ((!(localObject1 instanceof aia)) || (!TextUtils.equals(((aia)localObject1).b(), paramStoryGroup.c()))) {}
    }
    for (;;)
    {
      localObject1 = new ArrayList(i3);
      int i5 = Math.min(i1 + i3, B.getChildCount() - 1);
      i2 = i1 + 1;
      Object localObject3;
      for (;;)
      {
        if (i2 <= i5)
        {
          localObject2 = B.getWrappedView(i2);
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
        localObject3 = (ahy)((Iterator)localObject2).next();
        i2 = i4 + i1 + 1;
        for (;;)
        {
          if (i2 > i4 + i1 + i3) {
            break label377;
          }
          ahy localahy = (ahy)g.get(i2);
          if (((localahy instanceof StorySnapLogbook)) && (((StorySnapLogbook)localahy).equals(localObject3)))
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
          p();
          r();
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
      r();
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
      if ((!bal.d()) || (d.size() > 12)) {
        break;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        StoryCollection localStoryCollection = c.b(localFriend.l());
        if ((localStoryCollection != null) && (localStoryCollection.s() != localStoryCollection.e())) {
          g.add(localFriend);
        }
      }
    }
    g.addAll(d);
  }
  
  protected static int o()
  {
    return 2130837804;
  }
  
  @awj
  private void u()
  {
    final FragmentActivity localFragmentActivity = getActivity();
    Object localObject = new ArrayList();
    if (B != null)
    {
      int i1 = Math.min(B.getCount(), g.size());
      int i2 = Math.min(B.getLastVisiblePosition() + 1, i1);
      i1 = B.getFirstVisiblePosition();
      while (i1 < i2)
      {
        ((List)localObject).add((ahy)B.getItemAtPosition(i1));
        i1 += 1;
      }
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ahy localahy = (ahy)((Iterator)localObject).next();
      if ((localahy instanceof apm)) {
        ((apm)localahy).d();
      } else if (localahy.p() != null) {
        bhp.b(new Runnable()
        {
          public final void run()
          {
            m.a(localFragmentActivity, b);
          }
        });
      }
    }
  }
  
  @awj
  private void v()
  {
    akp localakp = (akp)s.get();
    if (localakp == null) {
      return;
    }
    a(localakp);
    x();
    y();
    z();
    r();
  }
  
  private void w()
  {
    U.setVisibility(4);
    V.setVisibility(8);
    i.a(0);
    ((EditText)i.a()).requestFocus();
    A.showSoftInput(i.a(), 0);
    h = true;
  }
  
  private void x()
  {
    Iterator localIterator = v.iterator();
    while (localIterator.hasNext()) {
      ((apm)localIterator.next()).b();
    }
  }
  
  @awj
  private void y()
  {
    b.clear();
    b.addAll(c.n());
  }
  
  @awj
  private void z()
  {
    p.clear();
    p.putAll(c.mStories);
  }
  
  public final void a(akc paramakc)
  {
    if (paramakc.equals(S))
    {
      J.a(CameraEventAnalytics.CameraContext.DOUBLE_TAP);
      P.a(new bdz(paramakc.l(), 3, true));
    }
    for (;;)
    {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          StoriesFragment.l(StoriesFragment.this);
        }
      }, 450L);
      return;
      S = paramakc;
    }
  }
  
  public final void a(Friend paramFriend)
  {
    if (paramFriend.equals(T))
    {
      J.a(CameraEventAnalytics.CameraContext.DOUBLE_TAP);
      P.a(new bdz(paramFriend.l(), 3, true));
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
      T = paramFriend;
    }
  }
  
  public final void a(StorySnapLogbook paramStorySnapLogbook)
  {
    paramStorySnapLogbook = mStorySnap.mClientId;
    E.a(paramStorySnapLogbook, D);
    d();
  }
  
  public final void a(ArrayList<agl> paramArrayList)
  {
    r.clear();
    r.addAll(paramArrayList);
    D();
    r();
  }
  
  @awj
  public final void a(@chc final List<ChannelPage> paramList)
  {
    if ((y == null) || (!bal.d())) {
      return;
    }
    final int i1 = z;
    if (mFragmentLayout != null) {
      mFragmentLayout.post(new Runnable()
      {
        public final void run()
        {
          ady localady = StoriesFragment.q(StoriesFragment.this);
          List localList = paramList;
          int i = i1;
          localList = a.a(localList, i);
          b.clear();
          b.addAll(localList);
          c.notifyDataSetChanged();
          r();
        }
      });
    }
    z = 0;
  }
  
  public final boolean a(String paramString)
  {
    return q.contains(paramString);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final boolean b(Friend paramFriend)
  {
    return u.contains(paramFriend);
  }
  
  public final void d()
  {
    z();
    r();
  }
  
  protected final void e()
  {
    nw.d();
    N.b("move_to_page", "story");
    super.e();
    AnalyticsEvents.c();
    if ((getActivity() instanceof LandingPageActivity)) {
      getActivityq.a(NotificationAnalytics.NotificationDestinationType.MY_FRIENDS);
    }
    if (!I)
    {
      H.b();
      I = true;
    }
    P.a(new bbu());
    c.m();
    P.a(new bdv());
    P.a(new bed());
    getActivity().setVolumeControlStream(3);
    u();
    int i1 = 0;
    while (i1 < v.size())
    {
      ((apm)v.get(i1)).i();
      i1 += 1;
    }
    if (bat.b()) {
      bat.a(getActivity());
    }
    nw.e();
  }
  
  public final void e(boolean paramBoolean)
  {
    P.a(new bbq(CameraDisplayState.SHOW));
  }
  
  protected final void f()
  {
    super.f();
    AnalyticsEvents.d();
    M.a("FIRST_MEDIA_OPENED");
    N.c("exit_page", "story");
    Object localObject1 = new ArrayList();
    Object localObject2 = g.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      ahy localahy = (ahy)((Iterator)localObject2).next();
      if ((localahy instanceof StoryCollection)) {
        ((ArrayList)localObject1).add(((StoryCollection)localahy).l());
      }
    }
    localObject2 = avz.a((Collection)localObject1, "~");
    long l1 = ((ArrayList)localObject1).size();
    if (l1 == 0L) {
      ScAnalyticsEventEngine.a(new lz());
    }
    localObject1 = new ma();
    posterId = ((String)localObject2);
    storyCellCount = Long.valueOf(l1);
    int i1 = 0;
    while (i1 < v.size())
    {
      ((apm)v.get(i1)).a((ma)localObject1);
      i1 += 1;
    }
    ScAnalyticsEventEngine.a((ml)localObject1);
    localObject1 = new ArrayList(q).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      a((StoryGroup)p.get(localObject2), false);
    }
    q.clear();
    if (B != null) {
      B.setSelectionAfterHeaderView();
    }
    if (h) {
      C();
    }
    localObject1 = v.iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((apm)((Iterator)localObject1).next()).h();
    }
    E();
    a = null;
    bat.a();
  }
  
  public final boolean g()
  {
    if (ab.g()) {
      return true;
    }
    if (h)
    {
      C();
      return true;
    }
    return w.b();
  }
  
  protected final alv h()
  {
    return new alv(new String[] { "STORIES" });
  }
  
  protected final boolean h_()
  {
    return super.isAdded();
  }
  
  public final AnalyticsEvents.AnalyticsContext i()
  {
    return AnalyticsEvents.AnalyticsContext.STORIES;
  }
  
  public final String j()
  {
    return "StoriesFragment";
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
  
  public final boolean l()
  {
    return h;
  }
  
  public final boolean m()
  {
    if (C != null) {
      return C.b();
    }
    return false;
  }
  
  public final List<apm> n()
  {
    return v;
  }
  
  public void onAttach(Activity paramActivity)
  {
    nw.d();
    super.onAttach(paramActivity);
    R = ((bfz)paramActivity);
    nw.e();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    w.c();
  }
  
  public View onCreateView(LayoutInflater arg1, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    mFragmentLayout = ???.inflate(2130968754, paramViewGroup, false);
    A = ((InputMethodManager)getActivity().getSystemService("input_method"));
    v.clear();
    ??? = v;
    y = new ady(getActivity(), w, (OpenChannelAnimationView)c(2131362265));
    paramViewGroup = new ArrayList();
    paramViewGroup.add(y);
    paramViewGroup.add(new apo(getActivity(), t));
    ???.addAll(paramViewGroup);
    U = c(2131362757);
    V = c(2131362754);
    Y = ((DiscoverButtonView)c(2131362756));
    i = new bhr(mFragmentLayout, 2131362755, 2131362771, new bhr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((EditText)i.a()).addTextChangedListener(new TextWatcher()
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
              q();
              t();
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
    W = new bhr(mFragmentLayout, 2131362755, 2131361837, new bhr.a()
    {
      public final void a(View paramAnonymousView)
      {
        StoriesFragment.b(StoriesFragment.this).a().setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymous2View)
          {
            ((EditText)i.a()).setText("");
          }
        });
      }
    });
    Y.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (h) {
          StoriesFragment.d(StoriesFragment.this);
        }
        StoriesFragment.e(StoriesFragment.this).a(4, true);
      }
    });
    paramViewGroup = Q;
    paramBundle = new acz.a()
    {
      @cbr
      public final void a(final boolean paramAnonymousBoolean)
      {
        StoriesFragment.f(StoriesFragment.this).post(new Runnable()
        {
          public final void run()
          {
            if (paramAnonymousBoolean)
            {
              StoriesFragment.f(StoriesFragment.this).setFilled(true);
              StoriesFragment.f(StoriesFragment.this).setContentDescription("Filled");
              return;
            }
            StoriesFragment.f(StoriesFragment.this).setFilled(false);
            StoriesFragment.f(StoriesFragment.this).setContentDescription("Not Filled");
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
          Y.setFilled(true);
        }
        U.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            StoriesFragment.g(StoriesFragment.this);
          }
        });
        c(2131362753).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            getActivity().onBackPressed();
          }
        });
        X = ((ImageView)c(2131362760));
        j = c(2131362763);
        Z = ((DismissAnimationView)c(2131362764));
        k = new bhr(mFragmentLayout, 2131362761, 2131362767);
        l = new bhr(mFragmentLayout, 2131362762, 2131362766, new bhr.a()
        {
          public final void a(View paramAnonymousView)
          {
            paramAnonymousView = l.a();
            getActivity().getAssets();
            auh.a(paramAnonymousView);
            ((Button)l.a()).setBackgroundResource(StoriesFragment.o());
            ((Button)l.a()).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymous2View)
              {
                bbo.a().a(new bev(new AddFriendsFragment()));
              }
            });
          }
        });
        if (s.get() == null)
        {
          j.setVisibility(0);
          f = new StoriesAdapter(getActivity(), g, this, m);
          v();
          B = ((StickyListHeadersListView)c(2131362759));
          B.setAdapter(f);
          B.setFastScrollAlwaysVisible(true);
          B.setTextFilterEnabled(true);
          registerForContextMenu(B);
          B.setOnTouchListener(new View.OnTouchListener()
          {
            public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
            {
              if (h) {
                StoriesFragment.h(StoriesFragment.this).hideSoftInputFromWindow(getView().getWindowToken(), 0);
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
              StoriesFragment.i(StoriesFragment.this);
            }
          });
          ???.add(new ari(O, "Stories"));
          ??? = new ark(???);
          B.setOnScrollListener(???);
          C = ((SnapchatPtrFrameLayout)c(2131362758));
          C.setPtrHandler(new bvs()
          {
            public final void a(PtrFrameLayout paramAnonymousPtrFrameLayout)
            {
              StoriesFragment.j(StoriesFragment.this).a(NetworkAnalytics.PageContext.STORY);
              StoriesFragment.k(StoriesFragment.this);
            }
            
            public final boolean a()
            {
              return bgd.a(StoriesFragment.a(StoriesFragment.this));
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
          G = i1;
          x.a(this);
          x.a(new aej.a[] { this });
          nw.e();
          return mFragmentLayout;
        }
      }
      j.setVisibility(8);
      continue;
      label743:
      int i1 = 0;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    x.b(this);
  }
  
  @bpi
  public void onGetLocationDataTaskCompletedEvent(bcs parambcs)
  {
    a(new bfg(null, true, false, new akp.a(false, false, true, false)));
  }
  
  @bpi
  public void onHideSnapStoryEvent(bcy parambcy)
  {
    a(WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND);
    f.notifyDataSetChanged();
    P.a(new bet(true));
  }
  
  @bpi
  public void onLoadStoryMediaCompleteEvent(bdf parambdf)
  {
    parambdf = b;
    if ((parambdf.size() > 0) && (((akc)parambdf.get(0)).z())) {
      L.b(NetworkAnalytics.PageContext.STORY, null);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a = null;
    Iterator localIterator = v.iterator();
    while (localIterator.hasNext()) {
      ((apm)localIterator.next()).j();
    }
    z = 2;
  }
  
  @bpi
  public void onPostStorySnapRequestCompleteEvent(bdn parambdn)
  {
    d();
  }
  
  @bpi
  public void onRecentStoryCollectionCompletedViewingEvent(bdt parambdt)
  {
    akl localakl = mStorySnap;
    if ((bal.d()) && (mIsShared)) {
      return;
    }
    Iterator localIterator = b.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      parambdt = (akc)localIterator.next();
    } while ((parambdt.s() != 0) || (!TextUtils.equals(parambdt.l(), mUsername)));
    for (;;)
    {
      if (parambdt != null)
      {
        if ((a != null) && (!TextUtils.equals(a.l(), parambdt.l())))
        {
          g.remove(a);
          b.remove(a);
        }
        a = parambdt;
      }
      f.notifyDataSetChanged();
      u();
      B();
      return;
      parambdt = null;
    }
  }
  
  @bpi
  public void onRefreshFriendExistsTask(bdx parambdx)
  {
    f.notifyDataSetChanged();
  }
  
  @bpi
  public void onRefreshOnFriendActionEvent(bdw parambdw)
  {
    Friend localFriend = mFriend;
    if ((localFriend != null) && (mAction == FriendAction.ADD))
    {
      u.add(localFriend);
      if (!TextUtils.equals(localFriend.l(), x_())) {
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
  
  @bpi
  public void onResetStoriesFragmentScrollEvent(bea parambea)
  {
    F();
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    I = false;
    Object localObject = v.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((apm)((Iterator)localObject).next()).k();
    }
    localObject = (akp)s.get();
    if (localObject != null)
    {
      if (!mStoryViewRecordsSinceLastServerChange.isEmpty()) {
        new px().executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      }
      v();
    }
    F();
    localObject = getActivity().getIntent();
    String str = ach.a((Intent)localObject);
    if (str != null)
    {
      if (localObject != null) {
        ((Intent)localObject).setData(null);
      }
      w();
      ((EditText)i.a()).setText(str);
      if (!akp.a(getActivity()).c(str)) {
        new acg(getActivity(), str).show();
      }
    }
    nw.e();
  }
  
  @bpi
  public void onSanitizeStoriesFragmentEvent(bec parambec)
  {
    parambec = (akp)s.get();
    if (parambec == null) {
      return;
    }
    y();
    a(parambec);
    if (a != null) {
      A();
    }
    r();
  }
  
  @bpi
  public void onSharedStoryButtonClickedEvent(beh parambeh)
  {
    StoryGroup localStoryGroup = storyGroup;
    String str = localStoryGroup.e();
    if (localStoryGroup.f()) {}
    for (parambeh = localStoryGroup.g();; parambeh = null)
    {
      Object localObject = parambeh;
      if (TextUtils.isEmpty(parambeh)) {
        localObject = auv.a(null, 2131493275, new Object[] { localStoryGroup.e() });
      }
      parambeh = new aqy(getActivity(), (String)localObject)
      {
        protected final void a() {}
      };
      parambeh.setTitle(str);
      parambeh.show();
      return;
    }
  }
  
  @bpi
  public void onSharedStoryFriendButtonClickedEvent(final bei parambei)
  {
    final Friend localFriend = friend;
    Object localObject2 = mCustomTitle;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      if (mIsSharedStory) {
        localObject1 = localFriend.e();
      }
    }
    for (;;)
    {
      final StoryCollection localStoryCollection = c.b(friend.l());
      String str = mCustomDescription;
      localObject2 = str;
      if (TextUtils.isEmpty(str)) {
        localObject2 = auv.a(null, 2131492907, new Object[] { localFriend.e() });
      }
      parambei = new ara(getActivity(), (String)localObject2, auv.a(null, 2131493269, new Object[0]), auv.a(null, 2131493199, new Object[0]))
      {
        protected final void a() {}
        
        protected final void b()
        {
          new ql(localFriend.l()).execute();
          StoriesFragment.o(StoriesFragment.this);
          StoryCollection localStoryCollection = localStoryCollection;
          boolean bool = parambeiisInRecentUpdates;
          if (localStoryCollection != null)
          {
            akl localakl = localStoryCollection.d();
            if (localakl != null)
            {
              mg localmg = new mg();
              viewLocation = Long.valueOf(apl.b(bool));
              storyType = apl.c(localakl);
              posterId = localStoryCollection.l();
              if (apl.a(localStoryCollection.l())) {
                geoFence = "LOCAL";
              }
              ScAnalyticsEventEngine.a(localmg);
            }
          }
          StoriesFragment.a(StoriesFragment.this, localFriend);
        }
      };
      parambei.setTitle((CharSequence)localObject1);
      parambei.show();
      return;
      localObject2 = localFriend.l();
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(localFriend.a())) {
        localObject1 = (String)localObject2 + " (" + localFriend.a() + ")";
      }
    }
  }
  
  @bpi
  public void onStoriesNotifyDatasetChangedEvent(bex parambex)
  {
    f.notifyDataSetChanged();
    u();
  }
  
  @bpi
  public void onStoryDismissAnimationEvent(bey parambey)
  {
    Z.a.start();
  }
  
  @bpi
  public void onStorySnapDeleteEvent(bdj parambdj)
  {
    d();
  }
  
  @bpi
  public void onStorySnapPostEvent(bfa parambfa)
  {
    d();
  }
  
  @bpi
  public void onStoryThumbnailLoadedEvent(bfc parambfc)
  {
    Object localObject = mStoriesThumbnailCacheItem;
    if (bal.d()) {
      f.notifyDataSetChanged();
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 <= B.getChildCount())
      {
        parambfc = B.getWrappedView(i1);
        if (parambfc == null) {
          break label251;
        }
        parambfc = (ImageView)parambfc.findViewById(2131362456);
        if ((parambfc == null) || (parambfc.getTag() == null) || (!parambfc.getTag().equals(mCacheKey))) {
          break label251;
        }
        localObject = m.a((avx)localObject);
        if (localObject != null)
        {
          parambfc.setImageBitmap((Bitmap)localObject);
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
          parambfc.startAnimation((Animation)localObject);
        }
      }
      return;
      label251:
      i1 += 1;
    }
  }
  
  @bpi
  public void onSyncAllCompletedEvent(bfg parambfg)
  {
    a(parambfg);
  }
  
  @bpi
  public void onToggleStoryEvent(bfl parambfl)
  {
    if (F != null) {
      return;
    }
    final StoryGroup localStoryGroup = mStoryGroup;
    if (q.contains(localStoryGroup.c()))
    {
      a(localStoryGroup, true);
      return;
    }
    q.add(localStoryGroup.c());
    int i4 = localStoryGroup.k();
    if (i4 == 0)
    {
      f.notifyDataSetChanged();
      return;
    }
    int i5 = B.getLastVisiblePosition();
    int i6 = B.getFirstVisiblePosition();
    int i3 = 0;
    int i2 = 0;
    int i1;
    for (;;)
    {
      i1 = i2;
      if (i3 >= i5 - i6) {
        break;
      }
      parambfl = B.getChildAt(i3);
      ahy localahy = B.getWrappedView(i3).getTag()).O;
      i2 += Math.min(parambfl.getBottom(), B.getHeight()) - Math.max(parambfl.getTop(), 0);
      if ((localahy instanceof aia))
      {
        i1 = i2;
        if (((aia)localahy).d().equals(localStoryGroup)) {
          break;
        }
      }
      i3 += 1;
    }
    if (C.a()) {}
    for (i2 = C.getHeaderHeight() + i1;; i2 = i1)
    {
      parambfl = (RelativeLayout.LayoutParams)X.getLayoutParams();
      if (parambfl != null)
      {
        parambfl.setMargins(0, i1, 0, 0);
        X.setLayoutParams(parambfl);
        mFragmentLayout.requestLayout();
      }
      r();
      a(8);
      C.setDrawingCacheEnabled(true);
      parambfl = C.getDrawingCache();
      if (parambfl == null) {
        parambfl = null;
      }
      while (parambfl != null)
      {
        X.setImageBitmap(parambfl);
        X.setVisibility(0);
        parambfl = new TranslateAnimation(0.0F, 0.0F, 0.0F, G * i4);
        parambfl.setDuration(300L);
        parambfl.setAnimationListener(new Animation.AnimationListener()
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
        X.startAnimation(parambfl);
        return;
        parambfl = Bitmap.createBitmap(parambfl, 0, i2, parambfl.getWidth(), parambfl.getHeight() - i2);
        C.setDrawingCacheEnabled(false);
      }
      break;
    }
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    v();
    f.notifyDataSetChanged();
    j.setVisibility(8);
    n = true;
  }
  
  protected final void p()
  {
    if (f == null) {
      return;
    }
    if ((g.size() != 0) || (f.getCount() != 0) || (h) || (!n))
    {
      a(8);
      return;
    }
    a(0);
  }
  
  protected final void q()
  {
    Object localObject1 = (akp)s.get();
    if ((localObject1 == null) || (!super.isAdded())) {
      return;
    }
    boolean bool;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    if ((h) && (!TextUtils.isEmpty(((EditText)i.a()).getText())))
    {
      bool = true;
      g.clear();
      if (!bool)
      {
        localObject2 = g;
        localObject3 = new ArrayList();
        localObject4 = p.values().iterator();
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
          if ((localObject5 instanceof ajx))
          {
            ((List)localObject3).addAll(0, a(new aht(), (StoryGroup)localObject5));
            continue;
            bool = false;
            break;
          }
          ((List)localObject3).addAll(a(new aia((StoryGroup)localObject5), (StoryGroup)localObject5));
        }
      }
      label186:
      ((ArrayList)localObject2).addAll((Collection)localObject3);
    }
    if ((!bool) && (bal.d()))
    {
      localObject2 = v.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (apm)((Iterator)localObject2).next();
        if (!((apm)localObject3).k_()) {
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
      localObject3 = new HashSet(((akp)localObject1).o());
      localObject5 = ((akp)localObject1).n().iterator();
      while (((Iterator)localObject5).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject5).next();
        if ((!mIsBlocked) && (!TextUtils.equals(akr.l(), localFriend.l())) && (!((Set)localObject2).contains(localFriend)) && (!((Set)localObject3).contains(localFriend))) {
          ((List)localObject4).add(localFriend);
        }
      }
      ((List)localObject4).addAll(((akp)localObject1).m());
      Collections.sort((List)localObject4);
      g.addAll((Collection)localObject4);
      localObject1 = new ArrayList();
      localObject3 = ((Set)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Friend)((Iterator)localObject3).next();
        if ((!mIsBlocked) && (!TextUtils.equals(akr.l(), ((Friend)localObject4).l())) && (!((Set)localObject2).contains(localObject4))) {
          ((List)localObject1).add(localObject4);
        }
      }
      Collections.sort((List)localObject1);
      g.addAll((Collection)localObject1);
    }
    u();
  }
  
  @awj
  protected final void r()
  {
    q();
    t();
    f.notifyDataSetChanged();
    p();
    u();
  }
  
  @awj
  protected final void t()
  {
    if (h)
    {
      g.addAll(r);
      f.getFilter().filter(x_());
    }
  }
  
  @chc
  public final String x_()
  {
    if (!i.b()) {
      return "";
    }
    return ((EditText)i.a()).getText().toString();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */