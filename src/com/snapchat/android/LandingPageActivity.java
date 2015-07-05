package com.snapchat.android;

import abh;
import abw.b;
import adf;
import adj;
import adj.9;
import ady;
import aeh;
import aej;
import aej.1;
import aew;
import aex;
import aez;
import ahq;
import ahq.a;
import ahr;
import aim;
import ajj.a;
import ajk;
import ajn;
import ajq;
import ajv;
import ajx;
import akc;
import alx;
import alz;
import android.animation.ObjectAnimator;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DataSetObservable;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import anw;
import aol;
import apd;
import aqf;
import ari;
import asr;
import atm;
import atx;
import auh;
import aup;
import aur;
import aut;
import auu;
import auw;
import aux;
import aux.a;
import avf;
import avh;
import avl;
import awq;
import awv;
import aww;
import axi;
import aya;
import aza;
import azu;
import azz;
import baa;
import ban;
import bap;
import bar;
import bas;
import bat;
import bav;
import baw;
import bbg;
import bbj;
import bbm;
import bbr;
import bbt;
import bbv;
import bca;
import bcb;
import bcd;
import bcg;
import bch;
import bci;
import bcs;
import bcu;
import bcy;
import bcz;
import bdg;
import bdj;
import bdn;
import bdo;
import bdr;
import bdt;
import bdw;
import bec;
import bee;
import bel;
import beo;
import bep;
import bes;
import beu;
import bez;
import bfa;
import bft;
import bgp;
import bgt;
import bog;
import boh;
import cgc;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.EndReason;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.a;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPage.Form;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.discover.ui.DSnapView.2;
import com.snapchat.android.fragments.addfriends.LeftSwipeContainerFragment;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.sendto.SendToFragment;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.preview.SnapPreviewFragment;
import com.snapchat.android.receiver.ConnectivityReceiver;
import com.snapchat.android.ui.CustomVolumeView;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.SnapchatViewPager;
import com.snapchat.android.util.TitleBarManager;
import com.snapchat.android.util.TitleBarManager.LockedState;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.chat.SecureChatService;
import com.snapchat.android.util.chat.SecureChatService.1;
import com.snapchat.android.util.chat.SecureChatService.a;
import com.snapchat.android.util.chat.SecureChatSession;
import com.snapchat.android.util.eventbus.InChatSnapEvent;
import com.snapchat.android.util.eventbus.QuickSnapEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.fragment.SnapchatFragment.a;
import com.squareup.otto.Bus;
import gm;
import gq;
import gy;
import hd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import lt;
import ly;
import ma;
import ma.a;
import me;
import nf;
import ni;
import nj;
import nn;
import nq;
import pf;
import vb;
import vf;
import yf;
import ym;
import yq;
import ys;
import yt;
import yv;
import yv.1;
import yv.2;

@avl
public class LandingPageActivity
  extends SnapchatActivity
  implements ari, bfa, SnapchatFragment.a, vb
{
  static SecureChatService i;
  private static LandingPageActivity t;
  private int A;
  private boolean B = false;
  private auu C;
  private aez D;
  private boolean E = false;
  private boolean F = false;
  private boolean G = false;
  private ys H;
  private final DictionaryEasyMetric I;
  private final nf J;
  private final CameraEventAnalytics K;
  private final NetworkAnalytics L;
  private final nj M;
  private final auw N;
  private final AndroidNotificationManager O;
  private final adj P;
  private final yf Q;
  private final ConnectivityReceiver R;
  private final ahr S;
  private final ahq T;
  private final anw U;
  private final TitleBarManager V;
  private final nn W;
  private final ni X;
  private final baa Y;
  private final aol Z;
  protected SnapchatViewPager a;
  private final atm aa;
  private alx ab;
  private ViewStub ac;
  private vf ad;
  private CustomVolumeView ae;
  private SnapView af;
  private boolean ag = false;
  private boolean ah = false;
  private final Runnable ai = new Runnable()
  {
    public final void run()
    {
      LandingPageActivity.a(LandingPageActivity.this);
    }
  };
  private Handler aj = new Handler();
  private ServiceConnection ak = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      if ((paramAnonymousIBinder instanceof SecureChatService.a))
      {
        LandingPageActivity.i = this$0;
        LandingPageActivity.a(LandingPageActivity.this, true);
        if (mUser != null) {
          break label46;
        }
        LandingPageActivity.b(LandingPageActivity.this, true);
      }
      label46:
      while ((!b()) || (mUser.mMessagingGatewayInfo == null)) {
        return;
      }
      LandingPageActivity.j();
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      LandingPageActivity.i = null;
      LandingPageActivity.a(LandingPageActivity.this, false);
      LandingPageActivity.b(LandingPageActivity.this, false);
      yq.a().c();
    }
  };
  protected int b = 2;
  protected bdj c;
  protected bcz d;
  protected InChatSnapEvent e;
  protected QuickSnapEvent f;
  protected aex g;
  ProgressDialog h;
  @Inject
  public abh j;
  @Inject
  public apd k;
  protected bez l = new bez();
  protected yt m;
  protected yv n;
  protected aux o;
  protected aup p;
  public final NotificationAnalytics q = new NotificationAnalytics();
  protected Bus r;
  public ma s;
  private final me u;
  private boolean v = false;
  private float w = -1.0F;
  private float x = -1.0F;
  private int y;
  private boolean z = true;
  
  public LandingPageActivity()
  {
    this(AndroidNotificationManager.a(), new yt(), new ys(), new yv(), aux.a(), DictionaryEasyMetric.a(), nf.a(), CameraEventAnalytics.a(), NetworkAnalytics.a(), nj.a(), auw.a(), new me(), adj.a(), yf.a(), ban.a(), new ConnectivityReceiver(), ahr.a(), new ahq(), anw.a(), new TitleBarManager(), nn.a(), ni.a(), baa.a(), alx.a(), aol.a(), atm.a());
  }
  
  LandingPageActivity(AndroidNotificationManager paramAndroidNotificationManager, yt paramyt, ys paramys, yv paramyv, aux paramaux, DictionaryEasyMetric paramDictionaryEasyMetric, nf paramnf, CameraEventAnalytics paramCameraEventAnalytics, NetworkAnalytics paramNetworkAnalytics, nj paramnj, auw paramauw, me paramme, adj paramadj, yf paramyf, Bus paramBus, ConnectivityReceiver paramConnectivityReceiver, ahr paramahr, ahq paramahq, anw paramanw, TitleBarManager paramTitleBarManager, nn paramnn, ni paramni, baa parambaa, alx paramalx, aol paramaol, atm paramatm)
  {
    SnapchatApplication.b().c().a(this);
    O = paramAndroidNotificationManager;
    m = paramyt;
    H = paramys;
    n = paramyv;
    o = paramaux;
    I = paramDictionaryEasyMetric;
    J = paramnf;
    K = paramCameraEventAnalytics;
    L = paramNetworkAnalytics;
    M = paramnj;
    N = paramauw;
    u = paramme;
    r = paramBus;
    P = paramadj;
    Q = paramyf;
    R = paramConnectivityReceiver;
    S = paramahr;
    T = paramahq;
    U = paramanw;
    V = paramTitleBarManager;
    W = paramnn;
    X = paramni;
    Y = parambaa;
    ab = paramalx;
    Z = paramaol;
    aa = paramatm;
  }
  
  private static SnapchatFragment a(android.support.v4.app.FragmentManager paramFragmentManager, int paramInt)
  {
    return (SnapchatFragment)paramFragmentManager.findFragmentByTag(paramFragmentManager.getBackStackEntryAt(paramInt).getName());
  }
  
  private void a(int paramInt)
  {
    try
    {
      mFragments.popBackStackImmediate(null, 1);
      a.setPagingEnabled(true);
      if (paramInt == 0) {
        a.setChatFragmentAccessible(true);
      }
      a.setCurrentItem(paramInt, false);
      SnapchatFragment localSnapchatFragment = q();
      if (localSnapchatFragment != null) {
        localSnapchatFragment.f(true);
      }
      g = null;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;)
      {
        Timber.a("LandingPageActivity", localIllegalStateException);
      }
    }
  }
  
  private void a(aim paramaim)
  {
    Object localObject = mMediaMailingMetadata;
    if (mSnapType == Mediabryo.SnapType.SNAP)
    {
      if (mIsChatMedia)
      {
        String[] arrayOfString = mClientId.split("~");
        if (arrayOfString.length < 2) {
          return;
        }
        mClientId = arrayOfString[1];
        ((MediaMailingMetadata)localObject).a(e.mRecipients);
      }
      localObject = n;
      yv.a(mClientId);
      d.a();
      c.a(paramaim, MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE);
      localObject = new yv.1((yv)localObject, paramaim);
      yv.a.put(mClientId, localObject);
      ((aww)localObject).executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new aim[] { paramaim });
      return;
    }
    localObject = n;
    yv.b(mClientId);
    c.a(paramaim, MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE);
    d.a();
    localObject = new yv.2((yv)localObject, paramaim);
    yv.b.put(mClientId, localObject);
    ((awv)localObject).executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new aim[] { paramaim });
  }
  
  private void a(final SnapchatFragment paramSnapchatFragment, String paramString, boolean paramBoolean)
  {
    SnapchatFragment localSnapchatFragment1 = q();
    Object localObject = mFragments;
    if (((localSnapchatFragment1 instanceof SnapPreviewFragment)) && ((paramSnapchatFragment instanceof SnapPreviewFragment))) {
      ((android.support.v4.app.FragmentManager)localObject).popBackStack();
    }
    if (localSnapchatFragment1 != null) {
      localSnapchatFragment1.f(false);
    }
    int i1 = ((android.support.v4.app.FragmentManager)localObject).getBackStackEntryCount() - 1;
    if (i1 >= 0)
    {
      SnapchatFragment localSnapchatFragment2 = a((android.support.v4.app.FragmentManager)localObject, i1);
      if ((localSnapchatFragment2 instanceof LeftSwipeContainerFragment)) {
        a.setLeftSwipeEnable(false);
      }
    }
    localObject = ((android.support.v4.app.FragmentManager)localObject).beginTransaction();
    if ((paramBoolean) && (localSnapchatFragment1 != null)) {
      ((FragmentTransaction)localObject).hide(localSnapchatFragment1);
    }
    ((FragmentTransaction)localObject).add(2131362376, paramSnapchatFragment, paramString);
    ((FragmentTransaction)localObject).addToBackStack(paramString);
    try
    {
      ((FragmentTransaction)localObject).commit();
      aj.post(new Runnable()
      {
        public final void run()
        {
          paramSnapchatFragment.f(true);
        }
      });
      return;
    }
    catch (IllegalStateException paramSnapchatFragment)
    {
      Timber.a("LandingPageActivity", paramSnapchatFragment);
    }
  }
  
  private boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      r.a(new bbv(paramInt, paramKeyEvent));
      if (d()) {
        if ((paramInt != 27) && (paramInt != 25) && (paramInt != 24) && (paramInt != 66)) {
          break label181;
        }
      }
      break;
    }
    do
    {
      return true;
      if (t == null) {}
      for (boolean bool = false;; bool = avh.a(t.getWindow()))
      {
        if ((!bool) || (paramKeyEvent.getAction() != 0) || ((paramInt != 25) && (paramInt != 24))) {
          break label181;
        }
        p();
        if (paramInt != 24) {
          break;
        }
        ae.a(1);
        return true;
      }
    } while (paramInt != 25);
    ae.a(-1);
    return true;
    label181:
    return false;
  }
  
  private void b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).edit();
    localEditor.putBoolean("snapchatUserIsLoggedIn", paramBoolean);
    localEditor.apply();
  }
  
  public static SecureChatService i()
  {
    return i;
  }
  
  static void j()
  {
    if (i != null)
    {
      i.a();
      return;
    }
    Timber.f("LandingPageActivity", "Cannot start a session because sSecureChatService is null.", new Object[0]);
  }
  
  @avl
  private void n()
  {
    FragmentManagerImpl localFragmentManagerImpl = mFragments;
    while (localFragmentManagerImpl.getBackStackEntryCount() > 0) {
      localFragmentManagerImpl.popBackStackImmediate();
    }
    if (a != null) {
      a.setPagingEnabled(true);
    }
  }
  
  private void o()
  {
    B = true;
    k.b();
    Intent localIntent = new Intent(this, SnapkidzHomeActivity.class);
    localIntent.addFlags(67108864);
    startActivity(localIntent);
    finish();
  }
  
  private void p()
  {
    if (ae != null) {
      return;
    }
    ae = ((CustomVolumeView)((ViewStub)findViewById(2131362381)).inflate().findViewById(2131362197));
  }
  
  @cgc
  private SnapchatFragment q()
  {
    Object localObject = mFragments;
    int i1 = ((android.support.v4.app.FragmentManager)localObject).getBackStackEntryCount();
    if (i1 > 0)
    {
      SnapchatFragment localSnapchatFragment = a((android.support.v4.app.FragmentManager)localObject, i1 - 1);
      localObject = localSnapchatFragment;
      if ((localSnapchatFragment instanceof LeftSwipeContainerFragment)) {
        localObject = ((LeftSwipeContainerFragment)localSnapchatFragment).a();
      }
      return (SnapchatFragment)localObject;
    }
    if (a == null) {
      return null;
    }
    return a.a(a.getCurrentItem());
  }
  
  private void r()
  {
    Object localObject = getIntent();
    if ((localObject != null) && (((Intent)localObject).getBooleanExtra("fromServerNotification", false)))
    {
      q.mTimeOnPressed = SystemClock.elapsedRealtime();
      localObject = L;
      mDictionaryEasyMetric.a("FIRST_ITEM_READY", "from_notification", Boolean.valueOf(true));
      mDictionaryEasyMetric.a("CONTENT_READY", "from_notification", Boolean.valueOf(true));
    }
  }
  
  private void s()
  {
    Intent localIntent = new Intent(this, SecureChatService.class);
    startService(localIntent);
    if (!bindService(localIntent, ak, 1)) {
      stopService(localIntent);
    }
  }
  
  private void t()
  {
    getSupportLoaderManager().initLoader$71be8de6(100, U);
  }
  
  public final void a()
  {
    if (s != null) {
      return;
    }
    ((ViewStub)findViewById(2131362380)).inflate();
    s = new ma(this, findViewById(2131362396));
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt == 0) {
      a.setChatFragmentAccessible(true);
    }
    a.setCurrentItem(paramInt, paramBoolean);
  }
  
  @avl
  protected final void a(ajv paramajv)
  {
    super.a(paramajv);
    nf localnf = J;
    if ((mUserLoadMetric != null) && (mDidLoadFromDatabase)) {
      mUserLoadMetric.a(false);
    }
    mUserLoadMetric = null;
    Timber.c("LandingPageActivity", "onUserLoaded " + paramajv, new Object[0]);
    if ((mUser != null) && (b()))
    {
      b(true);
      AlertDialogUtils.b(this);
      AlertDialogUtils.a(this);
      if ((G) && (mUser.mMessagingGatewayInfo != null)) {
        j();
      }
    }
    for (;;)
    {
      if ((ajx.m()) && (F))
      {
        ajx.g(true);
        AnalyticsEvents.a();
        nf.a(getIntent());
        new alz(this).a(this);
        if (mUser != null) {
          Z.a(false, true);
        }
        t();
        F = false;
      }
      return;
      if (ajx.H())
      {
        o();
        return;
      }
      asr.a(this);
      b(false);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    a();
    s.a(paramBoolean);
  }
  
  public final boolean a(int paramInt, SnapchatFragment paramSnapchatFragment)
  {
    if (f()) {
      if ((a == null) || (a.getCurrentItem() != paramInt)) {}
    }
    while (paramSnapchatFragment == q())
    {
      return true;
      return false;
    }
    return false;
  }
  
  final boolean b()
  {
    if (ajx.v()) {}
    do
    {
      do
      {
        return false;
        if (ajx.m()) {
          break;
        }
      } while (mUser == null);
      mUser.w();
      return false;
    } while (ajx.H());
    return true;
  }
  
  public final boolean c()
  {
    return (a.getCurrentItem() == 3) && (f());
  }
  
  public final boolean d()
  {
    return (a.getCurrentItem() == 2) && (f());
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    if ((!a.mIsPagingEnabled) && (a.mIsAnimating) && (f()))
    {
      Timber.a("LandingPageActivity", "Animating pager while paging is disabled. Ignoring touch event.", new Object[0]);
      return true;
    }
    if (paramMotionEvent.getAction() == 0) {
      Y.a(a.getLastScrolledPage());
    }
    Object localObject;
    int i1;
    label179:
    label183:
    for (;;)
    {
      localObject = q();
      if (paramMotionEvent.getAction() == 0)
      {
        w = paramMotionEvent.getRawX();
        x = paramMotionEvent.getRawY();
      }
      if ((!(localObject instanceof CameraFragment)) || (!((CameraFragment)localObject).a(paramMotionEvent))) {
        break;
      }
      return true;
      if (paramMotionEvent.getAction() == 1)
      {
        if (!a.mIsScrolling)
        {
          localObject = a;
          if ((mUserSwipedIntoChatEvent == null) || (!mUserSwipedIntoChatEvent.mIsFlinging)) {
            break label179;
          }
        }
        for (i1 = 1;; i1 = 0)
        {
          if (i1 == 0) {
            break label183;
          }
          Y.mDeferPause = true;
          break;
        }
      }
    }
    label231:
    float f1;
    float f2;
    if ((a.getCurrentItem() == 1) && (f()))
    {
      i1 = 1;
      if (i1 == 0)
      {
        if ((a.getCurrentItem() != 0) || (!f())) {
          break label291;
        }
        i1 = 1;
        if (i1 == 0) {
          break label386;
        }
      }
      localObject = p;
      f1 = w;
      f2 = x;
      i1 = y;
      if (!mSnapView.c()) {
        break label297;
      }
      mTapToViewTouchListener.a(paramMotionEvent);
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      i1 = 0;
      break;
      label291:
      i1 = 0;
      break label231;
      label297:
      switch (paramMotionEvent.getActionMasked())
      {
      default: 
        break;
      case 1: 
        if (!mLongPressStarted) {}
        break;
      case 2: 
        for (;;)
        {
          ((aup)localObject).f();
          break;
          if (!mLongPressStarted) {
            break;
          }
          if (Math.abs(paramMotionEvent.getRawY() - f2) <= i1) {
            if (Math.abs(paramMotionEvent.getRawX() - f1) <= i1) {
              break;
            }
          }
        }
        label386:
        if (c())
        {
          localObject = p;
          f1 = w;
          f2 = x;
          i1 = y;
          boolean bool;
          if ((mEditionViewerLauncher.d()) || (mEditionViewerLauncher.e())) {
            bool = true;
          }
          while (bool)
          {
            return true;
            if (mSnapView.c())
            {
              i1 = i2;
              if (mVerticalSwipeMyStory != null)
              {
                i1 = i2;
                if (mVerticalSwipeMyStory.getVisibility() == 0) {
                  i1 = 1;
                }
              }
              if ((i1 != 0) && (mVerticalSwipeMyStory.dispatchTouchEvent(paramMotionEvent)))
              {
                if (paramMotionEvent.getAction() == 0) {
                  mTapToViewTouchListener.a(paramMotionEvent);
                }
                bool = true;
              }
              else
              {
                bool = mTapToViewTouchListener.a(paramMotionEvent);
              }
            }
            else
            {
              if ((paramMotionEvent.getActionMasked() == 2) && ((Math.abs(paramMotionEvent.getRawY() - f2) > i1) || (Math.abs(paramMotionEvent.getRawX() - f1) > i1))) {
                ((aup)localObject).f();
              }
              bool = false;
            }
          }
        }
        break;
      }
    }
  }
  
  protected final void e()
  {
    int i1 = C.getCount() - 1;
    if (a.getOffscreenPageLimit() != i1) {
      a.setOffscreenPageLimit(i1);
    }
  }
  
  protected final boolean f()
  {
    return mFragments.getBackStackEntryCount() == 0;
  }
  
  public final bcz g()
  {
    return d;
  }
  
  public final bdj h()
  {
    return c;
  }
  
  public final FeedFragment.a k()
  {
    return ad;
  }
  
  public final SnapView l()
  {
    return af;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    e();
    Timber.c("LandingPageActivity", "Activity Request with code %d, and Result with code %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    if (paramInt2 == 1) {
      onLogoutEvent(null);
    }
    do
    {
      return;
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      switch (paramInt1)
      {
      case 1002: 
      default: 
        return;
      case 1001: 
        if (paramInt2 == -1)
        {
          paramIntent = aur.a(paramIntent.getData(), this);
          if (paramIntent == null)
          {
            AlertDialogUtils.a(2131493329, this);
            return;
          }
          mUser = ajv.a(this);
          ajj.a locala = new ajj.a();
          mRawImageBitmap = paramIntent;
          locala = (ajj.a)locala;
          mWidth = paramIntent.getWidth();
          locala = (ajj.a)locala;
          mHeight = paramIntent.getHeight();
          paramIntent = (ajj.a)locala;
          mSnapType = Mediabryo.SnapType.SNAP;
          paramIntent = (ajj.a)paramIntent;
          mIsChatMedia = true;
          onSnapCapturedEvent(new bdj(((ajj.a)paramIntent).c(), SnapCaptureContext.PHONE_GALLERY));
          return;
        }
        break;
      }
    } while (paramInt2 != 0);
    return;
    setIntent(paramIntent);
  }
  
  public void onBackPressed()
  {
    FragmentManagerImpl localFragmentManagerImpl = mFragments;
    localFragmentManagerImpl.executePendingTransactions();
    SnapchatFragment localSnapchatFragment = q();
    if (localSnapchatFragment == null) {
      super.onBackPressed();
    }
    int i1;
    do
    {
      do
      {
        return;
      } while (localSnapchatFragment.g());
      localSnapchatFragment.f(false);
      i1 = localFragmentManagerImpl.getBackStackEntryCount();
      if (i1 != 0) {
        break;
      }
      switch (a.getCurrentItem())
      {
      case 2: 
      default: 
        a.setPagingEnabled(true);
        super.onBackPressed();
        return;
      case 0: 
        if (M.b())
        {
          a(3);
          return;
        }
        a(1);
        return;
      case 1: 
        K.a(CameraEventAnalytics.CameraContext.BACK_PRESSED);
        a(2);
        return;
      }
    } while (p.g());
    K.a(CameraEventAnalytics.CameraContext.BACK_PRESSED);
    a(2);
    return;
    a(3);
    return;
    if (i1 == 1)
    {
      a(a.getCurrentItem());
      return;
    }
    super.onBackPressed();
    a(localFragmentManagerImpl, i1 - 1 - 1).f(true);
  }
  
  @boh
  public void onCameraStateEvent(bap parambap)
  {
    if (parambap.a()) {
      p.a(SnapViewEventAnalytics.EndReason.SWIPED_DOWN);
    }
  }
  
  @boh
  public void onCancelInChatSnapEvent(bar parambar)
  {
    int i1;
    if (e != null)
    {
      i1 = e.mOriginatingFragment;
      e = null;
      if (mShouldReturnToChatFragment) {}
    }
    else
    {
      return;
    }
    a(i1);
    a(0, false);
  }
  
  @boh
  public void onCancelQuickSnapEvent(bas parambas)
  {
    int i1;
    if (f != null)
    {
      i1 = f.mOriginatingFragment;
      f = null;
      if (mShouldReturnToChatFragment) {}
    }
    else
    {
      return;
    }
    a(i1);
    a(0, false);
  }
  
  @boh
  public void onCancelReplyEvent(bat parambat)
  {
    d = null;
    g = null;
    M.d();
  }
  
  @boh
  public void onChangeBrightnessEvent(bav parambav)
  {
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    screenBrightness = mBrightness;
    getWindow().setAttributes(localLayoutParams);
  }
  
  @boh
  public void onChangeOrientationEvent(baw parambaw)
  {
    if (getRequestedOrientation() == mRequestedOrientation) {
      return;
    }
    setRequestedOrientation(mRequestedOrientation);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int i1 = avh.d(this);
    boolean bool;
    if (A != i1)
    {
      A = i1;
      bool = avh.e(this);
      Timber.a("LandingPageActivity", "Rotated to " + i1 + " isPortrait? " + bool, new Object[0]);
      paramConfiguration = N;
      if ((mIsImmersiveModeSupported) && (mDecorView != null)) {}
    }
    else
    {
      return;
    }
    paramConfiguration.a(bool, mIsImmersiveModeOn);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    nf.d();
    o.a(aux.a.ACTIVITY_CREATE_CHECKPOINT$6dad94c5);
    J.c();
    q.a();
    K.mDictionaryEasyMetric.a("CAMERA_READY", true);
    super.onCreate(paramBundle);
    boolean bool;
    if (paramBundle != null)
    {
      e = ((InChatSnapEvent)paramBundle.getParcelable("in_chat_snap_event"));
      b = paramBundle.getInt("view_pager_index", 2);
      bool = paramBundle.getBoolean("should_pop_fragments");
      if ((b != 2) || (mWaitingForActivityResult)) {
        break label574;
      }
      n();
      e = null;
    }
    for (;;)
    {
      Timber.c("LandingPageActivity", "Native free space = %d", new Object[] { Long.valueOf(Debug.getNativeHeapFreeSize()) });
      paramBundle = getAssets();
      atj.mRobotoBoldCondensed = Typeface.createFromAsset(paramBundle, "Roboto-BoldCondensed.ttf");
      bwu.a = Typeface.createFromAsset(paramBundle, "Roboto-Light.ttf");
      r.c(this);
      z = true;
      System.setProperty("org.joda.time.DateTimeZone.Provider", "com.snapchat.android.util.DateTimeZoneProvider");
      Timber.c("LandingPageActivity", "Landing Page Activity content view set", new Object[0]);
      setContentView(2130968683);
      getWindow().setBackgroundDrawable(null);
      paramBundle = N;
      Object localObject = getWindow();
      if (mIsImmersiveModeSupported)
      {
        mDecorView = ((Window)localObject).getDecorView();
        mWindow = ((Window)localObject);
        mDefaultRightPadding = mDecorView.getPaddingRight();
        mDefaultBottomPadding = mDecorView.getPaddingBottom();
      }
      k.a(this);
      a = ((SnapchatViewPager)findViewById(2131362377));
      ac = ((ViewStub)findViewById(2131362378));
      ad = new vf(this, a);
      try
      {
        a.getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
        {
          public final void onGlobalLayout()
          {
            r.a(new bbt());
          }
        });
        p = aup.d();
        af = ((SnapView)findViewById(2131362379));
        paramBundle = p;
        mSnapView = af;
        mVerticalSwipeMyStory = ((VerticalSwipeLayout)mSnapView.findViewById(2131362846));
        y = ViewConfiguration.get(this).getScaledTouchSlop();
        awq.a();
        if (Build.VERSION.SDK_INT >= 18)
        {
          paramBundle = getWindow().getAttributes();
          rotationAnimation = 1;
          getWindow().setAttributes(paramBundle);
        }
        C = new ly(mFragments);
        a.setAdapter(C);
        C.mObservable.notifyChanged();
      }
      catch (NullPointerException paramBundle)
      {
        try
        {
          a.getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
          {
            public final void onGlobalLayout()
            {
              r.a(new bbt());
            }
          });
          a.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener()
          {
            private int b = a.getCurrentItem();
            private int c = a.getCurrentItem();
            private int d = 0;
            private boolean e = false;
            
            @avl
            private void a(int paramAnonymousInt)
            {
              Object localObject2 = mFragments;
              if (((android.support.v4.app.FragmentManager)localObject2).getBackStackEntryCount() != 0) {}
              for (int i = 1; i != 0; i = 0) {
                return;
              }
              if ((paramAnonymousInt == c) && ((c == 1) || (c == 3))) {
                bmDictionaryEasyMetric.a("CAMERA_DELAY");
              }
              Object localObject1 = a.a(paramAnonymousInt);
              if (localObject1 != null)
              {
                ((SnapchatFragment)localObject1).f(true);
                localObject2 = ((android.support.v4.app.FragmentManager)localObject2).getFragments().iterator();
                while (((Iterator)localObject2).hasNext())
                {
                  Fragment localFragment = (Fragment)((Iterator)localObject2).next();
                  if (((localFragment instanceof SnapchatFragment)) && (!((SnapchatFragment)localObject1).equals(localFragment))) {
                    ((SnapchatFragment)localFragment).f(false);
                  }
                }
              }
              Timber.g("LandingPageActivity", "markFragmentVisibilityChanged to: " + paramAnonymousInt + " from: " + c, new Object[0]);
              c = paramAnonymousInt;
              if (c == 4) {
                LandingPageActivity.d(LandingPageActivity.this);
              }
              localObject1 = a;
              ((SnapchatViewPager)localObject1).a(((SnapchatViewPager)localObject1).getCurrentItem(), ((SnapchatViewPager)localObject1).getChildCount());
            }
            
            public final void onPageScrollStateChanged(int paramAnonymousInt)
            {
              CameraEventAnalytics localCameraEventAnalytics;
              int i;
              int j;
              if (paramAnonymousInt == 0)
              {
                e = false;
                if (cmDeferPause) {
                  LandingPageActivity.c(LandingPageActivity.this).a(SnapchatViewPager.a(Integer.valueOf(b)), false);
                }
                e();
                a(b);
                AnalyticsEvents.a(c, b);
                localCameraEventAnalytics = LandingPageActivity.b(LandingPageActivity.this);
                i = c;
                j = b;
                if (j != 1) {
                  break label129;
                }
                if (i == 2)
                {
                  mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "feed");
                  mDictionaryEasyMetric.b("EXIT_CAMERA_VIEW");
                }
              }
              for (;;)
              {
                d = paramAnonymousInt;
                return;
                label129:
                if ((j == 3) && (i == 2))
                {
                  mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "story");
                  mDictionaryEasyMetric.b("EXIT_CAMERA_VIEW");
                }
              }
            }
            
            public final void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
            {
              SnapchatFragment localSnapchatFragment;
              if (paramAnonymousInt2 == 0)
              {
                if ((b == c) && (e))
                {
                  localSnapchatFragment = a.a(b);
                  if (f()) {
                    break label71;
                  }
                  paramAnonymousInt1 = 1;
                  if ((localSnapchatFragment != null) && (paramAnonymousInt1 == 0)) {
                    localSnapchatFragment.f(true);
                  }
                }
                e = false;
              }
              label71:
              while (e) {
                for (;;)
                {
                  return;
                  paramAnonymousInt1 = 0;
                }
              }
              if ((c != 2) && ((paramAnonymousInt1 == 1) || (paramAnonymousInt1 == 2))) {
                LandingPageActivity.b(LandingPageActivity.this).a(CameraEventAnalytics.CameraContext.SWIPE);
              }
              if (paramAnonymousInt2 < a.getWidth() / 2) {}
              for (boolean bool = true;; bool = false)
              {
                e = true;
                localSnapchatFragment = a.a(b);
                Timber.g("LandingPageActivity", "onScrollStart from: " + b, new Object[0]);
                if (localSnapchatFragment == null) {
                  break;
                }
                localSnapchatFragment.e(bool);
                LandingPageActivity.a(LandingPageActivity.this, localSnapchatFragment, bool);
                return;
              }
            }
            
            public final void onPageSelected(int paramAnonymousInt)
            {
              b = paramAnonymousInt;
              if (d == 0) {
                a(b);
              }
            }
          });
          registerReceiver(R, ConnectivityReceiver.a);
          azu.a(this);
          paramBundle = V;
          localObject = aj;
          Window localWindow = getWindow();
          Resources localResources = getResources();
          mHandler = ((Handler)localObject);
          mWindow = localWindow;
          mResources = localResources;
          onTitleBarEvent(new bel(TitleBarManager.Visibility.HIDDEN));
          r();
          nf.e();
          return;
          label574:
          if ((b == 0) && (!mWaitingForActivityResult))
          {
            n();
            continue;
          }
          if (!bool) {
            continue;
          }
          b = 2;
          n();
          continue;
          paramBundle = paramBundle;
          Timber.a("LandingPageActivity", paramBundle);
        }
        catch (NullPointerException paramBundle)
        {
          for (;;)
          {
            Timber.a("LandingPageActivity", paramBundle);
          }
        }
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (z) {
      r.b(this);
    }
    if (!B) {
      k.b();
    }
    unregisterReceiver(R);
    z = false;
    ajx.r(false);
    azu.a();
  }
  
  @boh
  public void onDisplayInAppNotificationEvent(bbg parambbg)
  {
    a();
    s.a(parambbg);
  }
  
  @boh
  public void onEditionClose(aew paramaew)
  {
    Object localObject = mFragments;
    int i1 = ((android.support.v4.app.FragmentManager)localObject).getBackStackEntryCount() - 1;
    if (i1 >= 0)
    {
      localObject = a((android.support.v4.app.FragmentManager)localObject, i1);
      if (localObject != null) {
        ((SnapchatFragment)localObject).f(false);
      }
    }
    if (b == EditionOpenOrigin.STORIES)
    {
      a(3);
      return;
    }
    a(4);
  }
  
  @boh
  public void onEnableLargeUiUpdatesOnFragment(bbj parambbj)
  {
    if (a == null) {}
    do
    {
      return;
      parambbj = a.a(pageNumber);
    } while ((parambbj == null) || (mAreLargeUiUpdatesEnabled));
    parambbj.c();
  }
  
  @boh
  public void onForceVerificationEvent(final bbm parambbm)
  {
    ajx.p(true);
    new AlertDialog.Builder(this).setTitle(2131493223).setMessage(mErrorMessage).setCancelable(false).setPositiveButton(2131493224, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        PhoneVerificationAnalytics.a(false, ajx.f());
        r.a(new bdw(new SettingsPhoneVerificationFragment(parambbm)));
      }
    }).setNegativeButton(2131493222, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        PhoneVerificationAnalytics.a(true, ajx.f());
        paramAnonymousDialogInterface.cancel();
      }
    }).show();
  }
  
  @boh
  public void onGetCurrentActivityEvent(bbr parambbr) {}
  
  @boh
  public void onImageSnapBitmapReadyForSnapPreview(bca parambca)
  {
    parambca = mBitmap;
    SnapPreviewFragment localSnapPreviewFragment = (SnapPreviewFragment)mFragments.findFragmentByTag("PreviewFragment");
    if (localSnapPreviewFragment != null)
    {
      a.mRawImageBitmap = parambca;
      b.setMediabryo(a);
      f.b();
      return;
    }
    c.mMediabryo.mRawImageBitmap = parambca;
  }
  
  @boh
  public void onInAppNotificationEvent(bcb parambcb)
  {
    parambcb = q();
    if (parambcb == null) {
      return;
    }
    ab.a(parambcb.k(), ac);
  }
  
  @boh
  public void onInChatSnapEvent(InChatSnapEvent paramInChatSnapEvent)
  {
    if (a != null) {
      a.setCurrentItem(2, false);
    }
    e = paramInChatSnapEvent;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (a(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (a(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  @boh
  public void onLeaveInAppNotificationPosterEvent(bcd parambcd)
  {
    a();
    s.a(sourceId);
  }
  
  @boh
  public void onLogoutEvent(bch parambch)
  {
    if (i != null)
    {
      parambch = i;
      Timber.g("SecureChatService", "CHAT-LOG: SecureChatService STOP SESSION", new Object[0]);
      mSecureChatSession.c();
    }
    AlertDialogUtils.a(2131493606, this);
    asr.a(this);
  }
  
  @boh
  public void onMessagingGatewayInfoUpdatedEvent(bci parambci)
  {
    if (i == null)
    {
      s();
      return;
    }
    j();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    r();
  }
  
  protected void onPause()
  {
    super.onPause();
    t = null;
    r.a(new bel(TitleBarManager.LockedState.NOT_LOCKED));
    if (i != null) {
      imIsAppInForeground = false;
    }
    O.d = false;
    Q.a(false);
    SnapchatFragment localSnapchatFragment = q();
    if (localSnapchatFragment != null)
    {
      localSnapchatFragment.f_();
      ag = localSnapchatFragment.l_();
      long l1 = localSnapchatFragment.z_();
      if (l1 >= 0L)
      {
        Timber.a("LandingPageActivity", "Schedule to set flag to pop stacked fragments after " + l1 + " ms.", new Object[0]);
        aj.postDelayed(ai, l1);
      }
    }
    S.c();
    p.a(SnapViewEventAnalytics.EndReason.ENTER_BACKGROUND);
    aut.a();
    r.b(a);
    r.b(this);
    z = false;
    if (mUser != null)
    {
      mUser.x();
      bgp.b(new adj.9(P));
    }
    Y.a("Unknown", false);
  }
  
  @boh
  public void onPushDelayedInAppNotificationEvent(bcs parambcs)
  {
    a();
    ma localma = s;
    parambcs = sourceId;
    ma.a locala = (ma.a)g.get(parambcs);
    g.remove(parambcs);
    if (locala != null) {
      localma.a(locala);
    }
  }
  
  @boh
  public void onQuickSnapEvent(QuickSnapEvent paramQuickSnapEvent)
  {
    if (a != null) {
      a.setCurrentItem(2, false);
    }
    f = paramQuickSnapEvent;
  }
  
  @boh
  public void onRecentStoryReplyEvent(bcu parambcu)
  {
    nj localnj = M;
    Timber.a("RecentStoryReplyAnalyticsManager", "startReplying to " + friendUsername, new Object[0]);
    mRecentStoryReplyEvent = parambcu;
    mHasReplied = false;
    a(0, false);
  }
  
  @boh
  public void onReplaceInAppNotificationEvent(bcy parambcy)
  {
    a();
    if (s.a(sourceId)) {
      s.a(newEvent);
    }
  }
  
  @boh
  public void onReplySnapEvent(bcz parambcz)
  {
    d = parambcz;
    n();
    a.setCurrentItem(2, false);
  }
  
  protected void onRestart()
  {
    o.a(aux.a.ACTIVITY_RESTART_CHECKPOINT$6dad94c5);
    J.c();
    q.a();
    K.mDictionaryEasyMetric.a("CAMERA_READY", true);
    super.onRestart();
  }
  
  @avl
  protected void onResume()
  {
    nf.d();
    super.onResume();
    t = this;
    if (i != null) {
      imIsAppInForeground = true;
    }
    O.d = true;
    Q.a(true);
    aj.removeCallbacks(ai);
    if (!z) {
      r.c(this);
    }
    r.c(a);
    if (ajx.H())
    {
      J.b();
      o();
      return;
    }
    if (mUser == null) {
      F = true;
    }
    while ((ajx.m()) && (!ajx.V()))
    {
      J.b();
      startActivityForResult(new Intent(this, ScAcceptTermsActivity.class), 1002);
      return;
      if (!b())
      {
        J.b();
        asr.a(this);
        b(false);
        return;
      }
      AnalyticsEvents.a();
      nf.a(getIntent());
      new alz(this).a(this);
      Z.a(false, true);
      ajq.a().e();
      t();
    }
    if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
      v = true;
    }
    Intent localIntent = getIntent();
    label257:
    int i1;
    boolean bool;
    if (ah)
    {
      n();
      ah = false;
      i1 = localIntent.getIntExtra("goToFragmentNum", 2);
      bool = f();
      if ((!bool) || (abh.a(localIntent) == null)) {
        break label624;
      }
      i1 = 3;
    }
    for (;;)
    {
      if (i1 != 2) {
        e();
      }
      switch (i1)
      {
      default: 
        a.setCurrentItem(i1, false);
        localIntent.putExtra("goToFragmentNum", 2);
        setIntent(localIntent);
        localObject1 = q();
        if (localObject1 != null) {
          ((SnapchatFragment)localObject1).f(true);
        }
        localObject1 = getIntent();
        if (localObject1 == null) {
          break label1027;
        }
        if (((Intent)localObject1).getBooleanExtra("fromServerNotification", false))
        {
          ni.c(((Intent)localObject1).getStringExtra("type"));
          ((Intent)localObject1).removeExtra("fromServerNotification");
        }
        if (((Intent)localObject1).getBooleanExtra("recovery_code_used", false))
        {
          AlertDialogUtils.b(this, getString(2131493568), getString(2131493567));
          ((Intent)localObject1).removeExtra("recovery_code_used");
        }
        AnalyticsEvents.i(((Intent)localObject1).getBooleanExtra("fromNotification", false));
        ((Intent)localObject1).removeExtra("fromNotification");
        label462:
        localObject1 = PreferenceManager.getDefaultSharedPreferences(this);
        if (((SharedPreferences)localObject1).contains("RESUMING_FROM_SWIPE_MESSAGE"))
        {
          AlertDialogUtils.b(this, getResources().getString(2131493517), ((SharedPreferences)localObject1).getString("RESUMING_FROM_SWIPE_MESSAGE", ""));
          localObject1 = ((SharedPreferences)localObject1).edit();
          ((SharedPreferences.Editor)localObject1).remove("RESUMING_FROM_SWIPE_MESSAGE");
          ((SharedPreferences.Editor)localObject1).apply();
        }
        if (ajx.m())
        {
          aya.a().b();
          bft.a();
          bft.b();
        }
        if (ajx.ab()) {
          S.b();
        }
        localObject1 = N;
        bool = avh.e(this);
        if ((mIsImmersiveModeSupported) && (mDecorView != null)) {
          break label1034;
        }
        label594:
        nf.e();
        return;
        if ((!localIntent.getBooleanExtra("fromServerNotification", false)) || (ag)) {
          break label257;
        }
        n();
        break label257;
        label624:
        if ((!bool) || (i1 == 2)) {
          if ((ChatFragment.n()) || (ChatFragment.m())) {
            i1 = 0;
          } else if ((bool) && (b == 4)) {
            i1 = 2;
          } else {
            i1 = b;
          }
        }
        break;
      }
    }
    Object localObject1 = localIntent.getStringExtra("friendUsername");
    if ((ChatFragment.n()) && ((TextUtils.isEmpty((CharSequence)localObject1)) || (TextUtils.equals((CharSequence)localObject1, axi.b(ChatFragment.b)))))
    {
      ((AlarmManager)getSystemService("alarm")).cancel(ChatFragment.a);
      localObject1 = axi.b(ChatFragment.b);
      ChatFragment.o();
    }
    for (int i2 = 1;; i2 = 0)
    {
      label824:
      long l1;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        Timber.g("LandingPageActivity", "CHAT-LOG: LandingPageActivity setInitialFragment setFriendUsername: " + (String)localObject1, new Object[0]);
        ChatFragment.a((String)localObject1);
        localObject2 = (ChatFragment)a.a(0);
        if (localObject2 != null)
        {
          Timber.g("LandingPageActivity", "CHAT-LOG: LandingPageActivity setInitialFragment updateFriendIfNecessary", new Object[0]);
          if (i2 != 0) {
            break label910;
          }
          bool = true;
          ((ChatFragment)localObject2).a(bool);
        }
        bool = localIntent.getBooleanExtra("fromServerNotification", false);
        l1 = localIntent.getLongExtra("seq_num", 0L);
        if ((bool) && (l1 != 0L))
        {
          localObject1 = akc.b().a((String)localObject1);
          if (localObject1 == null) {
            break label926;
          }
          if (mLastSeqNumOfTheirChatIReleased < l1) {
            break label915;
          }
          AnalyticsEvents.Z();
        }
      }
      for (;;)
      {
        localIntent.removeExtra("friendUsername");
        a.setChatFragmentAccessible(true);
        break;
        label910:
        bool = false;
        break label824;
        label915:
        if (mTheirLastSeqNum < l1) {
          label926:
          AnalyticsEvents.Y();
        }
      }
      bool = localIntent.getBooleanExtra("fromServerNotification", false);
      localObject1 = localIntent.getStringExtra("snap_id");
      Object localObject2 = localIntent.getStringExtra("friendUsername");
      if ((!bool) || (TextUtils.isEmpty((CharSequence)localObject1)) || (TextUtils.isEmpty((CharSequence)localObject2))) {
        break;
      }
      localObject2 = ym.b((String)localObject2);
      if ((localObject2 == null) || (localObject1 == null)) {
        break;
      }
      ni.a((ChatConversation)localObject2, (String)localObject1 + 'r');
      break;
      label1027:
      AnalyticsEvents.i(false);
      break label462;
      label1034:
      Timber.a("SoftNavigationBarManager", "adding flags and padding onresume", new Object[0]);
      mWindow.addFlags(134217728);
      mDefaultFlags = (mDecorView.getSystemUiVisibility() | 0x100 | 0x400);
      mDecorView.setSystemUiVisibility(mDefaultFlags);
      mDecorView.setBackgroundColor(-16777216);
      ((auw)localObject1).a(bool, mIsImmersiveModeOn);
      break label594;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (e != null) {
      paramBundle.putParcelable("in_chat_snap_event", e);
    }
    SnapchatFragment localSnapchatFragment = q();
    if ((localSnapchatFragment != null) && (localSnapchatFragment.g_())) {
      paramBundle.putBoolean("should_pop_fragments", true);
    }
    if (!f())
    {
      b = a.getCurrentItem();
      paramBundle.putInt("view_pager_index", b);
      return;
    }
    b = 2;
  }
  
  @boh
  public void onSetPagingEnabledEvent(bdg parambdg)
  {
    a.setPagingEnabled(enablePaging);
  }
  
  @boh
  public void onShareDSnapEvent(aex paramaex)
  {
    a.setCurrentItem(4, false);
    g = paramaex;
    Object localObject1 = g.a;
    float f1 = b;
    float f2 = c;
    Object localObject2 = ((DSnapView)localObject1).b(((DSnapView)localObject1).getCurrentPanel());
    if ((g == null) || (localObject2 == null))
    {
      i1 = 0;
      if (i1 != 0)
      {
        paramaex = q();
        if (paramaex != null) {
          paramaex.f(false);
        }
      }
      return;
    }
    boolean bool;
    label98:
    long l1;
    Object localObject3;
    Object localObject4;
    int i2;
    int i3;
    String str;
    int i4;
    int i5;
    if (((DSnapView)localObject1).getCurrentPanel() == DSnapPage.Form.TOP_SNAP.getIndex())
    {
      bool = true;
      l1 = SystemClock.elapsedRealtime() - k;
      paramaex = ((ady)localObject2).e();
      if (g.o) {
        break label781;
      }
      localObject2 = atx.a(2131493136, new Object[] { h.c });
      r.a(new bbg(null, (CharSequence)localObject2, h.h, h.i, true, ((DSnapView)localObject1).getInAppNotificationSourceId()));
      localObject2 = g.a();
      localObject3 = g.g;
      localObject4 = g.a;
      i2 = g.f.intValue();
      i3 = l.d(g.g);
      i1 = g.k.intValue();
      str = g.d;
      i4 = g.e;
      i5 = l.e(g.g);
      if (i1 != 0) {
        break label526;
      }
      if (!bool) {
        break label423;
      }
      localObject1 = new hd();
      publisherId = ((String)localObject2);
      dsnapId = ((String)localObject4);
      editionId = ((String)localObject3);
      timeViewed = Double.valueOf(avf.a(l1));
      mediaType = DiscoverUsageAnalytics.a(paramaex);
      if (i3 >= 0) {
        break label417;
      }
    }
    label417:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        snapIndexCount = Long.valueOf(i3);
        snapIndexPos = Long.valueOf(i2 + 1);
      }
      ScAnalyticsEventEngine.a((lt)localObject1);
      i1 = 0;
      break;
      bool = false;
      break label98;
    }
    label423:
    localObject1 = new gy();
    publisherId = ((String)localObject2);
    dsnapId = ((String)localObject4);
    editionId = ((String)localObject3);
    longformType = DiscoverUsageAnalytics.b(paramaex);
    timeViewed = Double.valueOf(avf.a(l1));
    if (i3 < 0) {}
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        snapIndexCount = Long.valueOf(i3);
        snapIndexPos = Long.valueOf(i2 + 1);
      }
      ScAnalyticsEventEngine.a((lt)localObject1);
      break;
    }
    label526:
    if (bool)
    {
      localObject1 = new gq();
      publisherId = ((String)localObject2);
      adsnapId = str;
      editionId = ((String)localObject3);
      timeViewed = Double.valueOf(avf.a(l1));
      mediaType = DiscoverUsageAnalytics.a(paramaex);
      if (i3 < 0) {}
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0)
        {
          snapIndexCount = Long.valueOf(i3);
          snapIndexPos = Long.valueOf(i2 + 1);
          adIndexPos = Long.valueOf(i4);
          adIndexCount = Long.valueOf(i5);
        }
        ScAnalyticsEventEngine.a((lt)localObject1);
        break;
      }
    }
    localObject1 = new gm();
    publisherId = ((String)localObject2);
    adsnapId = str;
    editionId = ((String)localObject3);
    timeViewed = Double.valueOf(avf.a(l1));
    longformType = DiscoverUsageAnalytics.b(paramaex);
    if (i3 < 0) {}
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        snapIndexCount = Long.valueOf(i3);
        snapIndexPos = Long.valueOf(i2 + 1);
        adIndexPos = Long.valueOf(i4);
        adIndexCount = Long.valueOf(i5);
      }
      ScAnalyticsEventEngine.a((lt)localObject1);
      break;
    }
    label781:
    if (localObject2 != null)
    {
      if (((ady)localObject2).e() != DSnapPanel.MediaType.REMOTE_VIDEO) {
        break label1019;
      }
      localObject4 = ((DSnapView)localObject1).b(DSnapPage.Form.TOP_SNAP.getIndex());
      if (localObject4 != null)
      {
        localObject2 = d;
        localObject3 = b;
        paramaex = new DSnapView.2((DSnapView)localObject1, f1, f2, (ady)localObject4, bool, paramaex, l1);
        if (((VerticalSwipeLayout)localObject3).getCurrentPanel() > 0) {
          break label883;
        }
        i1 = 0;
        label859:
        if (i1 != 0) {
          break label950;
        }
        Timber.a("TopSnapSlideAnimator", "Could not prepare animation. Skipping animation.", new Object[0]);
      }
    }
    for (;;)
    {
      i1 = 1;
      break;
      label883:
      a = ((VerticalSwipeLayout)localObject3).getChildAt(0);
      i1 = a.getMeasuredHeight();
      a.setVisibility(4);
      ((VerticalSwipeLayout)localObject3).removeView(a);
      ((DSnapView)localObject1).addView(a);
      a.setTop(-i1);
      i1 = 1;
      break label859;
      label950:
      localObject1 = ObjectAnimator.ofInt(a, "top", new int[] { -a.getMeasuredHeight(), 0 });
      ((ObjectAnimator)localObject1).setDuration(200L);
      ((ObjectAnimator)localObject1).addUpdateListener(new aej.1((aej)localObject2));
      ((ObjectAnimator)localObject1).addListener(paramaex);
      ((ObjectAnimator)localObject1).start();
      continue;
      label1019:
      ((DSnapView)localObject1).a(f1, f2, (ady)localObject2, bool, paramaex, l1);
    }
  }
  
  @boh
  public void onShowDialogEvent(ShowDialogEvent paramShowDialogEvent)
  {
    String str;
    if (message == null) {
      str = getString(stringResId);
    }
    while (dialogType == ShowDialogEvent.DialogType.ONE_BUTTON) {
      if (titleResId != 0)
      {
        AlertDialogUtils.b(this, getString(titleResId), str);
        return;
        str = message;
      }
      else
      {
        AlertDialogUtils.a(this, str);
        return;
      }
    }
    if (dialogType == ShowDialogEvent.DialogType.YES_NO_DIALOG)
    {
      AlertDialogUtils.a(this, getString(titleResId), str, yesNoAlertListener);
      return;
    }
    if (dialogType == ShowDialogEvent.DialogType.YES_NO_DONTASK_DIALOG)
    {
      AlertDialogUtils.a(this, getString(titleResId), str, true, yesNoAlertListener);
      return;
    }
    AlertDialogUtils.a(str, this);
  }
  
  @boh
  public void onSnapCapturedEvent(bdj parambdj)
  {
    if (a == null) {
      return;
    }
    mUser = ajv.g();
    c = parambdj;
    parambdj = c.mMediabryo.mMediaMailingMetadata;
    if (d != null)
    {
      parambdj.a(d.mRecipients);
      label49:
      if ((!f()) && ((g == null) || (mFragments.getBackStackEntryCount() > 1))) {
        break label214;
      }
      parambdj = new SnapPreviewFragment();
      if (d == null) {
        break label216;
      }
      d = d;
    }
    for (;;)
    {
      a(parambdj, "PreviewFragment", true);
      parambdj = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
      if (ajx.R()) {
        break;
      }
      ajx.S();
      if (((parambdj.getBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), false)) && (T.a())) || (ajx.ab())) {
        break;
      }
      T.a(this, new ahq.a()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            AnalyticsEvents.g();
            new pf().executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
          }
        }
      }).show();
      return;
      if (e != null)
      {
        parambdj.a(e.mRecipients);
        break label49;
      }
      if (f == null) {
        break label49;
      }
      parambdj.a(f.mRecipients);
      break label49;
      label214:
      break;
      label216:
      if (g != null) {
        e = g;
      }
    }
  }
  
  @boh
  public void onSnapReadyForRecipientsEvent(bdn parambdn)
  {
    aim localaim = mMediabryo;
    if (mIsChatMedia)
    {
      a(localaim);
      return;
    }
    if (u.a()) {
      a(localaim);
    }
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    if ((mShouldGoToSendTo) || (localMediaMailingMetadata.d().size() == 0))
    {
      a(SendToFragment.a(localaim), "SendToFrag", true);
      return;
    }
    if ((e != null) || (f != null) || (d != null))
    {
      r.a(new bdo(localaim, true));
      return;
    }
    a(SendToFragment.a(localaim), "SendToFrag", true);
  }
  
  @boh
  public void onSnapReadyForSendingEvent(bdo parambdo)
  {
    aim localaim = mMediabryo;
    boolean bool2 = mFromPreview;
    if (!u.a()) {
      a(localaim);
    }
    try
    {
      if (mSnapType == Mediabryo.SnapType.SNAP) {
        m.e(localaim);
      }
      for (;;)
      {
        if (!mMediaMailingMetadata.d().isEmpty()) {
          r.a(new bdr());
        }
        localMediaMailingMetadata = mMediaMailingMetadata;
        if ((!localMediaMailingMetadata.d().isEmpty()) && (mSnapType == Mediabryo.SnapType.SNAP)) {
          break;
        }
        M.c();
        M.d();
        parambdo = mMediaMailingMetadata;
        if (!parambdo.d().isEmpty()) {
          break label321;
        }
        a(3);
        return;
        H.a(localaim);
      }
    }
    catch (abw.b parambdo)
    {
      label208:
      label212:
      label316:
      label321:
      do
      {
        int i1;
        do
        {
          MediaMailingMetadata localMediaMailingMetadata;
          for (;;)
          {
            new ErrorMetric(parambdo.getMessage()).a(parambdo).d();
          }
          ajk localajk = (ajk)localMediaMailingMetadata;
          parambdo = AnalyticsEvents.AnalyticsSendSnapSource.CAMERA;
          if (d != null) {
            if (d.mOriginatingFragment == 1)
            {
              parambdo = AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_FEED;
              AnalyticsEvents.j(true);
              if (mPostToStories.isEmpty()) {
                break label316;
              }
            }
          }
          for (boolean bool1 = true;; bool1 = false)
          {
            AnalyticsEvents.a(localaim, parambdo, bool1, bool2, M.b(), localMediaMailingMetadata.d().size(), mUser);
            break;
            if (d.mOriginatingFragment != 3) {
              break label208;
            }
            parambdo = AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_FRIENDS;
            break label208;
            if (e != null)
            {
              parambdo = AnalyticsEvents.AnalyticsSendSnapSource.IN_CHAT;
              break label212;
            }
            if (f != null)
            {
              parambdo = AnalyticsEvents.AnalyticsSendSnapSource.QUICK_SNAP;
              break label212;
            }
            if (g == null) {
              break label212;
            }
            parambdo = AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_DISCOVER;
            break label212;
          }
          if (mSnapType != Mediabryo.SnapType.DISCOVER) {
            break;
          }
          g = null;
          parambdo = mFragments;
          parambdo.popBackStackImmediate("EditionViewerFragment", 0);
          i1 = parambdo.getBackStackEntryCount() - 1;
        } while (i1 < 0);
        parambdo = a(parambdo, i1);
      } while (parambdo == null);
      parambdo.f(true);
      return;
      if (parambdo.d().size() <= 1)
      {
        if (e != null)
        {
          r.a(new bar());
          return;
        }
        if (f != null)
        {
          r.a(new bas());
          return;
        }
      }
      a(1);
    }
  }
  
  @boh
  public void onSoftNavigationBarEvent(bdt parambdt)
  {
    boolean bool;
    if (shouldShow)
    {
      parambdt = N;
      bool = avh.e(this);
      if ((mIsImmersiveModeSupported) && (mDecorView != null)) {}
    }
    do
    {
      return;
      Timber.a("SoftNavigationBarManager", "Turning immersive mode OFF", new Object[0]);
      mDecorView.setSystemUiVisibility(mDefaultFlags);
      parambdt.a(bool, false);
      mIsImmersiveModeOn = false;
      return;
      parambdt = N;
      bool = avh.e(this);
    } while ((!mIsImmersiveModeSupported) || (mDecorView == null));
    Timber.a("SoftNavigationBarManager", "Turning immersive mode ON", new Object[0]);
    mWindow.addFlags(134217728);
    parambdt.a(bool, true);
    mDecorView.setKeepScreenOn(true);
    mDecorView.setSystemUiVisibility(5890);
    mIsImmersiveModeOn = true;
  }
  
  protected void onStart()
  {
    nf.d();
    super.onStart();
    if (i == null) {
      s();
    }
    RegistrationAnalytics.a(false);
    nf.e();
  }
  
  @boh
  public void onStartFragmentEvent(bdw parambdw)
  {
    SnapchatFragment localSnapchatFragment = mFragmentToStart;
    if (!TextUtils.isEmpty(mBaseFragmentTag)) {
      getFragmentManager().popBackStackImmediate(mBaseFragmentTag, 0);
    }
    if (TextUtils.isEmpty(mTag)) {}
    for (String str = localSnapchatFragment.toString();; str = mTag)
    {
      a(localSnapchatFragment, str, mHideOldFragmentFlag);
      return;
    }
  }
  
  protected void onStop()
  {
    J.b();
    q.mEasyMetric = null;
    ??? = K;
    mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "exit");
    mDictionaryEasyMetric.b("EXIT_CAMERA_VIEW");
    W.b();
    super.onStop();
    DictionaryEasyMetric localDictionaryEasyMetric = I;
    synchronized (e)
    {
      a.clear();
      b.clear();
      c.clear();
      d.clear();
      azz.a();
      if (i != null)
      {
        ??? = i;
        mMainHandler.postDelayed(new SecureChatService.1((SecureChatService)???), 5000L);
        if (E)
        {
          unbindService(ak);
          E = false;
        }
        i = null;
        G = false;
      }
      new ahq();
      if (ajx.ab()) {
        S.c();
      }
      return;
    }
  }
  
  @boh
  public void onStorySnapPostedFromSnapPreviewEvent(bec parambec)
  {
    a(3);
  }
  
  @boh
  public void onSwitchToChatEvent(bee parambee)
  {
    n();
    ChatFragment.a(mFriendUsername);
    a(0, false);
  }
  
  @boh
  public void onTapToViewDiscoverEvent(aez paramaez)
  {
    D = paramaez;
    a.setPagingEnabled(false);
    a.setAnimating(true);
    a.setCurrentItem(4, true);
  }
  
  @boh
  public void onTitleBarEvent(bel parambel)
  {
    boolean bool = true;
    TitleBarManager localTitleBarManager = V;
    int i1;
    TitleBarManager.Visibility localVisibility1;
    TitleBarManager.LockedState localLockedState;
    if ((mWindow == null) || (mResources == null) || (mHandler == null))
    {
      i1 = 1;
      if (i1 == 0)
      {
        localVisibility1 = mVisibility;
        TitleBarManager.Visibility localVisibility2 = mUnlockedVisibility;
        localLockedState = mLockedState;
        Timber.a("TitleBarManager", "Target visibility: " + localVisibility1 + " locked: " + localLockedState + " unlocked visibility: " + localVisibility2, new Object[0]);
        if (localVisibility2 != null) {
          mTitleBarTargetUnlockedVisibility = localVisibility2;
        }
        if ((mTitleBarLockedState != TitleBarManager.LockedState.LOCKED) || (localLockedState == TitleBarManager.LockedState.NOT_LOCKED)) {
          break label156;
        }
        Timber.a("TitleBarManager", "Title bar was locked. Do nothing.", new Object[0]);
      }
    }
    label156:
    do
    {
      return;
      i1 = 0;
      break;
      if (localLockedState != null) {
        mTitleBarLockedState = localLockedState;
      }
      parambel = localVisibility1;
      if (localLockedState == TitleBarManager.LockedState.NOT_LOCKED)
      {
        if (localVisibility1 != null) {
          mTitleBarTargetUnlockedVisibility = localVisibility1;
        }
        parambel = mTitleBarTargetUnlockedVisibility;
      }
    } while (parambel == null);
    if (((parambel == TitleBarManager.Visibility.VISIBLE) && (mTitleBarShown)) || ((parambel == TitleBarManager.Visibility.HIDDEN) && (!mTitleBarShown)))
    {
      Timber.a("TitleBarManager", "Already in target state. Do nothing.", new Object[0]);
      return;
    }
    if (parambel == TitleBarManager.Visibility.VISIBLE) {}
    for (;;)
    {
      mTitleBarShown = bool;
      localTitleBarManager.a();
      return;
      bool = false;
    }
  }
  
  @boh
  public void onUpdatingUserToDatabasesCompleteEvent(beo parambeo)
  {
    if (h != null)
    {
      h.hide();
      if (!mSuccess) {
        AlertDialogUtils.a(this, "Failed to upgrade. Try again later");
      }
    }
  }
  
  @boh
  public void onUpdatingUserToDatabasesEvent(bep parambep)
  {
    h = ProgressDialog.show(this, "Upgrading Snapchat", "Loading...");
  }
  
  @boh
  public void onVolumeViewChangedEvent(beu parambeu)
  {
    p();
    ae.a(mVolumeViewType);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    Timber.c("LandingPageActivity", "On ac Should we onWindowFocusChanged has focus? " + paramBoolean, new Object[0]);
    if ((paramBoolean) && (v))
    {
      Timber.c("LandingPageActivity", "On ac Calling onResume from window focus fn", new Object[0]);
      v = false;
      r.a(new bcg());
    }
    KeyguardManager localKeyguardManager = (KeyguardManager)getSystemService("keyguard");
    if ((!paramBoolean) && (localKeyguardManager.inKeyguardRestrictedInputMode())) {
      a.setCurrentItem(2);
    }
  }
  
  @bog
  public InChatSnapEvent produceInChatSnapEvent()
  {
    return e;
  }
  
  @bog
  public QuickSnapEvent produceQuickSnapEvent()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LandingPageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */