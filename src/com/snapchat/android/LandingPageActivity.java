package com.snapchat.android;

import ach;
import acr;
import acw.b;
import aef;
import aej;
import aej.10;
import aey;
import afh;
import afj;
import afj.1;
import afw;
import afx;
import afz;
import aim;
import aim.a;
import ain;
import aji;
import akf.a;
import akg;
import aki;
import akk;
import akp;
import akr;
import akx;
import amu;
import amw;
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
import aot;
import aph;
import apz;
import ash;
import atq;
import auk;
import auv;
import avf;
import avn;
import avp;
import avr;
import avs;
import avu;
import avv;
import avv.a;
import awd;
import awf;
import awj;
import axo;
import axt;
import axu;
import ayg;
import ayy;
import azy;
import bat;
import baz;
import bbb;
import bbm;
import bbo;
import bbq;
import bbs;
import bbt;
import bbu;
import bbw;
import bbx;
import bcg;
import bcj;
import bcm;
import bcr;
import bct;
import bcv;
import bda;
import bdb;
import bdd;
import bdg;
import bdh;
import bdi;
import bds;
import bdu;
import bdy;
import bdz;
import beg;
import bej;
import ben;
import beo;
import ber;
import bet;
import bev;
import bfb;
import bfd;
import bfk;
import bfn;
import bfo;
import bfr;
import bft;
import bfy;
import bfz;
import bgt;
import bhp;
import bht;
import bph;
import bpi;
import chd;
import co;
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
import com.snapchat.android.analytics.framework.EasyMetricManager;
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
import com.snapchat.android.ui.gesturedetectors.TapToViewTouchListener;
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
import gv;
import gz;
import hh;
import hm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import lv;
import ml;
import mq;
import ms;
import ms.a;
import mw;
import nw;
import nz;
import oa;
import oe;
import oh;
import pw;
import vx;
import wb;
import zb;
import zi;
import zm;
import zo;
import zp;
import zr;
import zr.1;
import zr.2;

@awj
public class LandingPageActivity
  extends SnapchatActivity
  implements ash, bfz, SnapchatFragment.a, vx
{
  static SecureChatService i;
  private static LandingPageActivity t;
  private int A;
  private boolean B = false;
  private avs C;
  private afz D;
  private boolean E = false;
  private boolean F = false;
  private boolean G = false;
  private zo H;
  private final DictionaryEasyMetric I;
  private final nw J;
  private final CameraEventAnalytics K;
  private final NetworkAnalytics L;
  private final oa M;
  private final avu N;
  private final AndroidNotificationManager O;
  private final aej P;
  private final zb Q;
  private final ConnectivityReceiver R;
  private final ain S;
  private final aim T;
  private final aot U;
  private final TitleBarManager V;
  private final oe W;
  private final nz X;
  private final bbb Y;
  private final bbb Z;
  protected SnapchatViewPager a;
  private final aph aa;
  private final auk ab;
  private amu ac;
  private ViewStub ad;
  private wb ae;
  private CustomVolumeView af;
  private SnapView ag;
  private boolean ah = false;
  private boolean ai = false;
  private final Runnable aj = new Runnable()
  {
    public final void run()
    {
      LandingPageActivity.a(LandingPageActivity.this);
    }
  };
  private Handler ak = new Handler();
  private ServiceConnection al = new ServiceConnection()
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
      zm.a().c();
    }
  };
  protected int b = 2;
  protected bej c;
  protected bdz d;
  protected InChatSnapEvent e;
  protected QuickSnapEvent f;
  protected afx g;
  ProgressDialog h;
  @Inject
  public ach j;
  @Inject
  public apz k;
  protected bfy l = new bfy();
  protected zp m;
  protected zr n;
  protected avv o;
  protected avn p;
  public final NotificationAnalytics q = new NotificationAnalytics();
  protected Bus r;
  public ms s;
  private final mw u;
  private boolean v = false;
  private float w = -1.0F;
  private float x = -1.0F;
  private int y;
  private boolean z = true;
  
  public LandingPageActivity()
  {
    this(AndroidNotificationManager.a(), new zp(), new zo(), new zr(), avv.a(), DictionaryEasyMetric.a(), nw.a(), CameraEventAnalytics.a(), NetworkAnalytics.a(), oa.a(), avu.a(), new mw(), aej.a(), zb.a(), bbo.a(), new ConnectivityReceiver(), ain.a(), new aim(), aot.a(), new TitleBarManager(), oe.a(), nz.a(), bbb.b(), bbb.a(), amu.a(), aph.a(), auk.a());
  }
  
  LandingPageActivity(AndroidNotificationManager paramAndroidNotificationManager, zp paramzp, zo paramzo, zr paramzr, avv paramavv, DictionaryEasyMetric paramDictionaryEasyMetric, nw paramnw, CameraEventAnalytics paramCameraEventAnalytics, NetworkAnalytics paramNetworkAnalytics, oa paramoa, avu paramavu, mw parammw, aej paramaej, zb paramzb, Bus paramBus, ConnectivityReceiver paramConnectivityReceiver, ain paramain, aim paramaim, aot paramaot, TitleBarManager paramTitleBarManager, oe paramoe, nz paramnz, bbb parambbb1, bbb parambbb2, amu paramamu, aph paramaph, auk paramauk)
  {
    SnapchatApplication.b().c().a(this);
    O = paramAndroidNotificationManager;
    m = paramzp;
    H = paramzo;
    n = paramzr;
    o = paramavv;
    I = paramDictionaryEasyMetric;
    J = paramnw;
    K = paramCameraEventAnalytics;
    L = paramNetworkAnalytics;
    M = paramoa;
    N = paramavu;
    u = parammw;
    r = paramBus;
    P = paramaej;
    Q = paramzb;
    R = paramConnectivityReceiver;
    S = paramain;
    T = paramaim;
    U = paramaot;
    V = paramTitleBarManager;
    W = paramoe;
    X = paramnz;
    Y = parambbb1;
    Z = parambbb2;
    ac = paramamu;
    aa = paramaph;
    ab = paramauk;
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
      for (;;) {}
    }
  }
  
  private void a(aji paramaji)
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
      zr.a(mClientId);
      d.a();
      c.a(paramaji, MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE);
      localObject = new zr.1((zr)localObject, paramaji);
      zr.a.put(mClientId, localObject);
      ((axu)localObject).executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new aji[] { paramaji });
      return;
    }
    localObject = n;
    zr.b(mClientId);
    c.a(paramaji, MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE);
    d.a();
    localObject = new zr.2((zr)localObject, paramaji);
    zr.b.put(mClientId, localObject);
    ((axt)localObject).executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new aji[] { paramaji });
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
    ((FragmentTransaction)localObject).add(2131362374, paramSnapchatFragment, paramString);
    ((FragmentTransaction)localObject).addToBackStack(paramString);
    try
    {
      ((FragmentTransaction)localObject).commit();
      ak.post(new Runnable()
      {
        public final void run()
        {
          paramSnapchatFragment.f(true);
        }
      });
      return;
    }
    catch (IllegalStateException paramSnapchatFragment) {}
  }
  
  private boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      r.a(new bcv(paramInt, paramKeyEvent));
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
      for (boolean bool = false;; bool = awf.a(t.getWindow()))
      {
        if ((!bool) || (paramKeyEvent.getAction() != 0) || ((paramInt != 25) && (paramInt != 24))) {
          break label181;
        }
        p();
        if (paramInt != 24) {
          break;
        }
        af.a(1);
        return true;
      }
    } while (paramInt != 25);
    af.a(-1);
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
    if (i != null) {
      imSecureChatSession.b();
    }
  }
  
  @awj
  private void n()
  {
    FragmentManagerImpl localFragmentManagerImpl = mFragments;
    while (localFragmentManagerImpl.getBackStackEntryCount() > 0) {
      localFragmentManagerImpl.popBackStackImmediate();
    }
    r.a(new bbm());
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
    if (af != null) {
      return;
    }
    af = ((CustomVolumeView)((ViewStub)findViewById(2131362379)).inflate().findViewById(2131362197));
  }
  
  @chd
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
    if (!bindService(localIntent, al, 1)) {
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
    ((ViewStub)findViewById(2131362378)).inflate();
    s = new ms(this, findViewById(2131362394));
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt == 0) {
      a.setChatFragmentAccessible(true);
    }
    a.setCurrentItem(paramInt, paramBoolean);
  }
  
  @awj
  protected final void a(akp paramakp)
  {
    super.a(paramakp);
    nw localnw = J;
    if ((mUserLoadMetric != null) && (mDidLoadFromDatabase)) {
      mUserLoadMetric.a(false);
    }
    mUserLoadMetric = null;
    new StringBuilder("onUserLoaded ").append(paramakp);
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
      if ((akr.m()) && (F))
      {
        akr.g(true);
        AnalyticsEvents.a();
        nw.a(getIntent());
        new amw(this).a(this);
        if (mUser != null) {
          aa.a(false, true);
        }
        t();
        F = false;
      }
      return;
      if (akr.H())
      {
        o();
        return;
      }
      atq.a(this);
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
    if (akr.v()) {}
    do
    {
      do
      {
        return false;
        if (akr.m()) {
          break;
        }
      } while (mUser == null);
      mUser.w();
      return false;
    } while (akr.H());
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
    if ((!a.mIsPagingEnabled) && (a.mIsAnimating) && (f())) {
      return true;
    }
    if (paramMotionEvent.getAction() == 0) {
      Y.a(new String[] { a.getLastScrolledPage() });
    }
    Object localObject;
    int i1;
    label173:
    label177:
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
            break label173;
          }
        }
        for (i1 = 1;; i1 = 0)
        {
          if (i1 == 0) {
            break label177;
          }
          Y.mDeferPause = true;
          break;
        }
      }
    }
    label225:
    float f1;
    float f2;
    if ((a.getCurrentItem() == 1) && (f()))
    {
      i1 = 1;
      if (i1 == 0)
      {
        if ((a.getCurrentItem() != 0) || (!f())) {
          break label285;
        }
        i1 = 1;
        if (i1 == 0) {
          break label378;
        }
      }
      localObject = p;
      f1 = w;
      f2 = x;
      i1 = y;
      if (!mSnapView.b()) {
        break label291;
      }
      mTapToViewTouchListener.a(paramMotionEvent);
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      i1 = 0;
      break;
      label285:
      i1 = 0;
      break label225;
      label291:
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
          ((avn)localObject).f();
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
        label378:
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
            if (mSnapView.b())
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
                ((avn)localObject).f();
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
  
  public final bdz g()
  {
    return d;
  }
  
  public final bej h()
  {
    return c;
  }
  
  public final FeedFragment.a k()
  {
    return ae;
  }
  
  public final SnapView l()
  {
    return ag;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    e();
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
          paramIntent = avp.a(paramIntent.getData(), this);
          if (paramIntent == null)
          {
            AlertDialogUtils.a(2131493329, this);
            return;
          }
          mUser = akp.a(this);
          akf.a locala = new akf.a();
          mRawImageBitmap = paramIntent;
          locala = (akf.a)locala;
          mWidth = paramIntent.getWidth();
          locala = (akf.a)locala;
          mHeight = paramIntent.getHeight();
          paramIntent = (akf.a)locala;
          mSnapType = Mediabryo.SnapType.SNAP;
          paramIntent = (akf.a)paramIntent;
          mIsChatMedia = true;
          onSnapCapturedEvent(new bej(((akf.a)paramIntent).c(), SnapCaptureContext.PHONE_GALLERY));
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
  
  @bpi
  public void onCameraStateEvent(bbq parambbq)
  {
    if (parambbq.a()) {
      p.a(SnapViewEventAnalytics.EndReason.SWIPED_DOWN);
    }
  }
  
  @bpi
  public void onCancelInChatSnapEvent(bbs parambbs)
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
  
  @bpi
  public void onCancelQuickSnapEvent(bbt parambbt)
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
  
  @bpi
  public void onCancelReplyEvent(bbu parambbu)
  {
    d = null;
    g = null;
    M.d();
  }
  
  @bpi
  public void onChangeBrightnessEvent(bbw parambbw)
  {
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    screenBrightness = mBrightness;
    getWindow().setAttributes(localLayoutParams);
  }
  
  @bpi
  public void onChangeOrientationEvent(bbx parambbx)
  {
    if (getRequestedOrientation() == mRequestedOrientation) {
      return;
    }
    setRequestedOrientation(mRequestedOrientation);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int i1 = awf.d(this);
    boolean bool;
    if (A != i1)
    {
      A = i1;
      bool = awf.e(this);
      new StringBuilder("Rotated to ").append(i1).append(" isPortrait? ").append(bool);
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
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    nw.d();
    o.a(avv.a.ACTIVITY_CREATE_CHECKPOINT$6dad94c5);
    J.c();
    q.a();
    K.mEasyMetricManager.b("CAMERA_READY").b();
    super.onCreate(paramBundle);
    boolean bool;
    if (paramBundle != null)
    {
      e = ((InChatSnapEvent)paramBundle.getParcelable("in_chat_snap_event"));
      b = paramBundle.getInt("view_pager_index", 2);
      bool = paramBundle.getBoolean("should_pop_fragments");
      if ((b != 2) || (mWaitingForActivityResult)) {
        break label564;
      }
      n();
      e = null;
    }
    for (;;)
    {
      Debug.getNativeHeapFreeSize();
      paramBundle = getAssets();
      auh.mRobotoBoldCondensed = Typeface.createFromAsset(paramBundle, "Roboto-BoldCondensed.ttf");
      bxv.a = Typeface.createFromAsset(paramBundle, "Roboto-Light.ttf");
      r.c(this);
      z = true;
      System.setProperty("org.joda.time.DateTimeZone.Provider", "com.snapchat.android.util.DateTimeZoneProvider");
      setContentView(2130968684);
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
      a = ((SnapchatViewPager)findViewById(2131362375));
      ad = ((ViewStub)findViewById(2131362376));
      try
      {
        a.getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
        {
          public final void onGlobalLayout()
          {
            r.a(new bct());
          }
        });
        p = avn.d();
        ag = ((SnapView)findViewById(2131362377));
        paramBundle = p;
        mSnapView = ag;
        mVerticalSwipeMyStory = ((VerticalSwipeLayout)mSnapView.findViewById(2131362839));
        y = ViewConfiguration.get(this).getScaledTouchSlop();
        ae = new wb(this, a, ag);
        axo.a();
        if (Build.VERSION.SDK_INT >= 18)
        {
          paramBundle = getWindow().getAttributes();
          rotationAnimation = 1;
          getWindow().setAttributes(paramBundle);
        }
        C = new mq(mFragments);
        a.setAdapter(C);
        C.mObservable.notifyChanged();
        try
        {
          a.getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
          {
            public final void onGlobalLayout()
            {
              r.a(new bct());
            }
          });
          a.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener()
          {
            private int b = a.getCurrentItem();
            private int c = a.getCurrentItem();
            private int d = 0;
            private boolean e = false;
            
            @awj
            private void a(int paramAnonymousInt)
            {
              Object localObject2 = mFragments;
              if (((android.support.v4.app.FragmentManager)localObject2).getBackStackEntryCount() != 0) {}
              for (int i = 1; i != 0; i = 0) {
                return;
              }
              if ((paramAnonymousInt == c) && ((c == 1) || (c == 3))) {
                bmEasyMetricManager.b("CAMERA_DELAY", "");
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
              new StringBuilder("markFragmentVisibilityChanged to: ").append(paramAnonymousInt).append(" from: ").append(c);
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
                  LandingPageActivity.c(LandingPageActivity.this).b(new String[] { SnapchatViewPager.a(Integer.valueOf(b)), "HORIZONTAL" });
                }
                e();
                a(b);
                AnalyticsEvents.a(c, b);
                localCameraEventAnalytics = LandingPageActivity.b(LandingPageActivity.this);
                i = c;
                j = b;
                if (j != 1) {
                  break label163;
                }
                if (i == 2)
                {
                  co.a(mEasyMetricManager.c("EXIT_CAMERA_VIEW", ""), "CameraEventAnalytics::onFeedPageSelected: EXIT_CAMERA_VIEW has not been created.");
                  mEasyMetricManager.a("EXIT_CAMERA_VIEW", "").a("context", "feed");
                  mEasyMetricManager.c("EXIT_CAMERA_VIEW");
                }
              }
              for (;;)
              {
                d = paramAnonymousInt;
                return;
                label163:
                if ((j == 3) && (i == 2))
                {
                  co.a(mEasyMetricManager.c("EXIT_CAMERA_VIEW", ""), "CameraEventAnalytics::onStoryPageSelected: EXIT_CAMERA_VIEW has not been created.");
                  mEasyMetricManager.a("EXIT_CAMERA_VIEW", "").a("context", "story");
                  mEasyMetricManager.c("EXIT_CAMERA_VIEW");
                }
              }
            }
            
            public final void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
            {
              boolean bool = false;
              SnapchatFragment localSnapchatFragment;
              if (paramAnonymousInt2 == 0)
              {
                if ((b == c) && (e))
                {
                  localSnapchatFragment = a.a(b);
                  if (f()) {
                    break label74;
                  }
                  paramAnonymousInt1 = 1;
                  if ((localSnapchatFragment != null) && (paramAnonymousInt1 == 0)) {
                    localSnapchatFragment.f(true);
                  }
                }
                e = false;
              }
              label74:
              do
              {
                do
                {
                  return;
                  paramAnonymousInt1 = 0;
                  break;
                } while (e);
                if ((c != 2) && ((paramAnonymousInt1 == 1) || (paramAnonymousInt1 == 2))) {
                  LandingPageActivity.b(LandingPageActivity.this).a(CameraEventAnalytics.CameraContext.SWIPE);
                }
                if (paramAnonymousInt2 < a.getWidth() / 2) {
                  bool = true;
                }
                e = true;
                localSnapchatFragment = a.a(b);
                new StringBuilder("onScrollStart from: ").append(b);
              } while (localSnapchatFragment == null);
              localSnapchatFragment.e(bool);
              LandingPageActivity.a(LandingPageActivity.this, localSnapchatFragment, bool);
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
          bat.a(this);
          paramBundle = V;
          localObject = ak;
          Window localWindow = getWindow();
          Resources localResources = getResources();
          mHandler = ((Handler)localObject);
          mWindow = localWindow;
          mResources = localResources;
          onTitleBarEvent(new bfk(TitleBarManager.Visibility.HIDDEN));
          r();
          nw.e();
          return;
          label564:
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
        }
        catch (NullPointerException paramBundle)
        {
          for (;;) {}
        }
      }
      catch (NullPointerException paramBundle)
      {
        for (;;) {}
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
    akr.q(false);
    bat.a();
  }
  
  @bpi
  public void onDisplayInAppNotificationEvent(bcg parambcg)
  {
    a();
    s.a(parambcg);
  }
  
  @bpi
  public void onEditionClose(afw paramafw)
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
  
  @bpi
  public void onEnableLargeUiUpdatesOnFragment(bcj parambcj)
  {
    if (a == null) {}
    do
    {
      return;
      parambcj = a.a(pageNumber);
    } while ((parambcj == null) || (mAreLargeUiUpdatesEnabled));
    parambcj.c();
  }
  
  @bpi
  public void onForceVerificationEvent(final bcm parambcm)
  {
    akr.o(true);
    new AlertDialog.Builder(this).setTitle(2131493223).setMessage(mErrorMessage).setCancelable(false).setPositiveButton(2131493224, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        PhoneVerificationAnalytics.a(false, akr.f());
        r.a(new bev(new SettingsPhoneVerificationFragment(parambcm)));
      }
    }).setNegativeButton(2131493222, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        PhoneVerificationAnalytics.a(true, akr.f());
        paramAnonymousDialogInterface.cancel();
      }
    }).show();
  }
  
  @bpi
  public void onGetCurrentActivityEvent(bcr parambcr) {}
  
  @bpi
  public void onImageSnapBitmapReadyForSnapPreview(bda parambda)
  {
    parambda = mBitmap;
    SnapPreviewFragment localSnapPreviewFragment = (SnapPreviewFragment)mFragments.findFragmentByTag("PreviewFragment");
    if (localSnapPreviewFragment != null)
    {
      a.mRawImageBitmap = parambda;
      b.setMediabryo(a);
      f.b();
      return;
    }
    c.mMediabryo.mRawImageBitmap = parambda;
  }
  
  @bpi
  public void onInAppNotificationEvent(bdb parambdb)
  {
    parambdb = q();
    if (parambdb == null) {
      return;
    }
    ac.a(parambdb.k(), ad);
  }
  
  @bpi
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
  
  @bpi
  public void onLeaveInAppNotificationPosterEvent(bdd parambdd)
  {
    a();
    s.a(sourceId);
  }
  
  @bpi
  public void onLogoutEvent(bdh parambdh)
  {
    if (i != null) {
      imSecureChatSession.c();
    }
    AlertDialogUtils.a(2131493604, this);
    atq.a(this);
  }
  
  @bpi
  public void onMessagingGatewayInfoUpdatedEvent(bdi parambdi)
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
    r.a(new bfk(TitleBarManager.LockedState.NOT_LOCKED));
    if (i != null) {
      imIsAppInForeground = false;
    }
    O.d = false;
    Q.a(false);
    SnapchatFragment localSnapchatFragment = q();
    if (localSnapchatFragment != null)
    {
      localSnapchatFragment.e_();
      ah = localSnapchatFragment.j_();
      long l1 = localSnapchatFragment.y_();
      if (l1 >= 0L)
      {
        new StringBuilder("Schedule to set flag to pop stacked fragments after ").append(l1).append(" ms.");
        ak.postDelayed(aj, l1);
      }
    }
    S.c();
    p.a(SnapViewEventAnalytics.EndReason.ENTER_BACKGROUND);
    avr.a();
    r.b(a);
    r.b(this);
    z = false;
    if (mUser != null)
    {
      mUser.x();
      bhp.b(new aej.10(P));
    }
    Y.b(new String[] { "Unknown", "HORIZONTAL" });
    Z.b(new String[0]);
  }
  
  @bpi
  public void onPushDelayedInAppNotificationEvent(bds parambds)
  {
    a();
    ms localms = s;
    parambds = sourceId;
    ms.a locala = (ms.a)g.get(parambds);
    g.remove(parambds);
    if (locala != null) {
      localms.a(locala);
    }
  }
  
  @bpi
  public void onQuickSnapEvent(QuickSnapEvent paramQuickSnapEvent)
  {
    if (a != null) {
      a.setCurrentItem(2, false);
    }
    f = paramQuickSnapEvent;
  }
  
  @bpi
  public void onRecentStoryReplyEvent(bdu parambdu)
  {
    oa localoa = M;
    new StringBuilder("startReplying to ").append(friendUsername);
    mRecentStoryReplyEvent = parambdu;
    mHasReplied = false;
    a(0, false);
  }
  
  @bpi
  public void onReplaceInAppNotificationEvent(bdy parambdy)
  {
    a();
    if (s.a(sourceId)) {
      s.a(newEvent);
    }
  }
  
  @bpi
  public void onReplySnapEvent(bdz parambdz)
  {
    d = parambdz;
    n();
    a.setCurrentItem(2, false);
  }
  
  protected void onRestart()
  {
    o.a(avv.a.ACTIVITY_RESTART_CHECKPOINT$6dad94c5);
    J.c();
    q.a();
    K.mEasyMetricManager.b("CAMERA_READY").b();
    super.onRestart();
  }
  
  @awj
  protected void onResume()
  {
    nw.d();
    super.onResume();
    t = this;
    if (i != null) {
      imIsAppInForeground = true;
    }
    O.d = true;
    Q.a(true);
    ak.removeCallbacks(aj);
    if (!z) {
      r.c(this);
    }
    r.c(a);
    if (akr.H())
    {
      J.b();
      o();
      return;
    }
    if (mUser == null) {
      F = true;
    }
    while ((akr.m()) && (!akr.V()))
    {
      J.b();
      startActivityForResult(new Intent(this, ScAcceptTermsActivity.class), 1002);
      return;
      if (!b())
      {
        J.b();
        atq.a(this);
        b(false);
        return;
      }
      AnalyticsEvents.a();
      nw.a(getIntent());
      new amw(this).a(this);
      aa.a(false, true);
      akk.a().e();
      t();
    }
    if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
      v = true;
    }
    Intent localIntent = getIntent();
    label257:
    int i1;
    boolean bool;
    if (ai)
    {
      n();
      ai = false;
      i1 = localIntent.getIntExtra("goToFragmentNum", 2);
      bool = f();
      if ((!bool) || (ach.a(localIntent) == null)) {
        break label635;
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
          break label1005;
        }
        if (((Intent)localObject1).getBooleanExtra("fromServerNotification", false))
        {
          nz.c(((Intent)localObject1).getStringExtra("type"));
          ((Intent)localObject1).removeExtra("fromServerNotification");
        }
        if (((Intent)localObject1).getBooleanExtra("recovery_code_used", false))
        {
          AlertDialogUtils.b(this, getString(2131493566), getString(2131493565));
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
        if (akr.m())
        {
          ayy.a().b();
          bgt.a();
          bgt.b();
        }
        if (akr.aa()) {
          S.b();
        }
        localObject1 = N;
        bool = awf.e(this);
        if ((mIsImmersiveModeSupported) && (mDecorView != null)) {
          break label1012;
        }
        label594:
        nw.e();
        Z.a(new String[0]);
        return;
        if ((!localIntent.getBooleanExtra("fromServerNotification", false)) || (ah)) {
          break label257;
        }
        n();
        break label257;
        label635:
        if ((!bool) || (i1 == 2)) {
          if ((ChatFragment.n()) || (ChatFragment.m())) {
            i1 = 0;
          } else if ((bool) && ((b == 4) || (b == 3))) {
            i1 = 2;
          } else {
            i1 = b;
          }
        }
        break;
      }
    }
    Object localObject1 = localIntent.getStringExtra("friendUsername");
    if ((ChatFragment.n()) && ((TextUtils.isEmpty((CharSequence)localObject1)) || (TextUtils.equals((CharSequence)localObject1, ayg.b(ChatFragment.b)))))
    {
      ((AlarmManager)getSystemService("alarm")).cancel(ChatFragment.a);
      localObject1 = ayg.b(ChatFragment.b);
      ChatFragment.o();
    }
    for (int i2 = 1;; i2 = 0)
    {
      label802:
      long l1;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        ChatFragment.a((String)localObject1);
        localObject2 = (ChatFragment)a.a(0);
        if (localObject2 != null)
        {
          if (i2 != 0) {
            break label888;
          }
          bool = true;
          ((ChatFragment)localObject2).a(bool);
        }
        bool = localIntent.getBooleanExtra("fromServerNotification", false);
        l1 = localIntent.getLongExtra("seq_num", 0L);
        if ((bool) && (l1 != 0L))
        {
          localObject1 = akx.c().a((String)localObject1);
          if (localObject1 == null) {
            break label904;
          }
          if (mLastSeqNumOfTheirChatIReleased < l1) {
            break label893;
          }
          AnalyticsEvents.Z();
        }
      }
      for (;;)
      {
        localIntent.removeExtra("friendUsername");
        a.setChatFragmentAccessible(true);
        break;
        label888:
        bool = false;
        break label802;
        label893:
        if (mTheirLastSeqNum < l1) {
          label904:
          AnalyticsEvents.Y();
        }
      }
      bool = localIntent.getBooleanExtra("fromServerNotification", false);
      localObject1 = localIntent.getStringExtra("snap_id");
      Object localObject2 = localIntent.getStringExtra("friendUsername");
      if ((!bool) || (TextUtils.isEmpty((CharSequence)localObject1)) || (TextUtils.isEmpty((CharSequence)localObject2))) {
        break;
      }
      localObject2 = zi.b((String)localObject2);
      if ((localObject2 == null) || (localObject1 == null)) {
        break;
      }
      nz.a((ChatConversation)localObject2, (String)localObject1 + 'r');
      break;
      label1005:
      AnalyticsEvents.i(false);
      break label462;
      label1012:
      mWindow.addFlags(134217728);
      mDefaultFlags = (mDecorView.getSystemUiVisibility() | 0x100 | 0x400);
      mDecorView.setSystemUiVisibility(mDefaultFlags);
      mDecorView.setBackgroundColor(-16777216);
      ((avu)localObject1).a(bool, mIsImmersiveModeOn);
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
    if ((localSnapchatFragment != null) && (localSnapchatFragment.f_())) {
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
  
  @bpi
  public void onSetPagingEnabledEvent(beg parambeg)
  {
    a.setPagingEnabled(enablePaging);
  }
  
  @bpi
  public void onShareDSnapEvent(afx paramafx)
  {
    a.setCurrentItem(4, false);
    g = paramafx;
    Object localObject1 = g.a;
    float f1 = b;
    float f2 = c;
    Object localObject2 = ((DSnapView)localObject1).b(((DSnapView)localObject1).getCurrentPanel());
    if ((g == null) || (localObject2 == null))
    {
      i1 = 0;
      if (i1 != 0)
      {
        paramafx = q();
        if (paramafx != null) {
          paramafx.f(false);
        }
      }
      return;
    }
    boolean bool;
    label98:
    long l1;
    Object localObject3;
    int i2;
    int i3;
    int i4;
    int i5;
    if (((DSnapView)localObject1).getCurrentPanel() == DSnapPage.Form.TOP_SNAP.getIndex())
    {
      bool = true;
      l1 = SystemClock.elapsedRealtime() - k;
      paramafx = ((aey)localObject2).e();
      if (g.o) {
        break label820;
      }
      localObject2 = auv.a(2131493136, new Object[] { h.c });
      r.a(new bcg((CharSequence)localObject2, h.h, h.i, ((DSnapView)localObject1).getInAppNotificationSourceId()));
      localObject2 = g.a();
      localObject3 = g.g;
      localObject4 = g.a;
      i2 = g.f.intValue();
      i3 = l.d(g.g);
      i1 = g.k.intValue();
      localObject5 = g.d;
      i4 = g.e;
      i5 = l.e(g.g);
      localObject1 = f.c.getSourceType();
      if (i1 != 0) {
        break label551;
      }
      if (!bool) {
        break label441;
      }
      localObject5 = new hm();
      publisherId = ((String)localObject2);
      dsnapId = ((String)localObject4);
      editionId = ((String)localObject3);
      timeViewed = Double.valueOf(awd.a(l1));
      mediaType = DiscoverUsageAnalytics.a(paramafx);
      source = ((lv)localObject1);
      if (i3 >= 0) {
        break label435;
      }
    }
    label435:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        snapIndexCount = Long.valueOf(i3);
        snapIndexPos = Long.valueOf(i2 + 1);
      }
      ScAnalyticsEventEngine.a((ml)localObject5);
      i1 = 0;
      break;
      bool = false;
      break label98;
    }
    label441:
    Object localObject5 = new hh();
    publisherId = ((String)localObject2);
    dsnapId = ((String)localObject4);
    editionId = ((String)localObject3);
    longformType = DiscoverUsageAnalytics.b(paramafx);
    timeViewed = Double.valueOf(awd.a(l1));
    source = ((lv)localObject1);
    if (i3 < 0) {}
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        snapIndexCount = Long.valueOf(i3);
        snapIndexPos = Long.valueOf(i2 + 1);
      }
      ScAnalyticsEventEngine.a((ml)localObject5);
      break;
    }
    label551:
    if (bool)
    {
      localObject4 = new gz();
      publisherId = ((String)localObject2);
      adsnapId = ((String)localObject5);
      editionId = ((String)localObject3);
      timeViewed = Double.valueOf(awd.a(l1));
      mediaType = DiscoverUsageAnalytics.a(paramafx);
      source = ((lv)localObject1);
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
        ScAnalyticsEventEngine.a((ml)localObject4);
        break;
      }
    }
    Object localObject4 = new gv();
    publisherId = ((String)localObject2);
    adsnapId = ((String)localObject5);
    editionId = ((String)localObject3);
    timeViewed = Double.valueOf(awd.a(l1));
    longformType = DiscoverUsageAnalytics.b(paramafx);
    source = ((lv)localObject1);
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
      ScAnalyticsEventEngine.a((ml)localObject4);
      break;
    }
    label820:
    if (localObject2 != null)
    {
      if (((aey)localObject2).e() != DSnapPanel.MediaType.REMOTE_VIDEO) {
        break label1042;
      }
      localObject4 = ((DSnapView)localObject1).b(DSnapPage.Form.TOP_SNAP.getIndex());
      if (localObject4 != null)
      {
        localObject2 = d;
        localObject3 = b;
        paramafx = new DSnapView.2((DSnapView)localObject1, f1, f2, (aey)localObject4, bool, paramafx, l1);
        if (((VerticalSwipeLayout)localObject3).getCurrentPanel() > 0) {
          break label975;
        }
        i1 = 0;
        label898:
        if (i1 != 0)
        {
          localObject1 = ObjectAnimator.ofInt(a, "top", new int[] { -a.getMeasuredHeight(), 0 });
          ((ObjectAnimator)localObject1).setDuration(200L);
          ((ObjectAnimator)localObject1).addUpdateListener(new afj.1((afj)localObject2));
          ((ObjectAnimator)localObject1).addListener(paramafx);
          ((ObjectAnimator)localObject1).start();
        }
      }
    }
    for (;;)
    {
      i1 = 1;
      break;
      label975:
      a = ((VerticalSwipeLayout)localObject3).getChildAt(0);
      i1 = a.getMeasuredHeight();
      a.setVisibility(4);
      ((VerticalSwipeLayout)localObject3).removeView(a);
      ((DSnapView)localObject1).addView(a);
      a.setTop(-i1);
      i1 = 1;
      break label898;
      label1042:
      ((DSnapView)localObject1).a(f1, f2, (aey)localObject2, bool, paramafx, l1);
    }
  }
  
  @bpi
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
  
  @bpi
  public void onSnapCapturedEvent(bej parambej)
  {
    if (a == null) {
      return;
    }
    mUser = akp.g();
    c = parambej;
    parambej = c.mMediabryo.mMediaMailingMetadata;
    if (d != null)
    {
      parambej.a(d.mRecipients);
      label49:
      if ((!f()) && ((g == null) || (mFragments.getBackStackEntryCount() > 1))) {
        break label214;
      }
      parambej = new SnapPreviewFragment();
      if (d == null) {
        break label216;
      }
      d = d;
    }
    for (;;)
    {
      a(parambej, "PreviewFragment", true);
      parambej = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
      if (akr.R()) {
        break;
      }
      akr.S();
      if (((parambej.getBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), false)) && (T.a())) || (akr.aa())) {
        break;
      }
      T.a(this, new aim.a()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            AnalyticsEvents.g();
            new pw().executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
          }
        }
      }).show();
      return;
      if (e != null)
      {
        parambej.a(e.mRecipients);
        break label49;
      }
      if (f == null) {
        break label49;
      }
      parambej.a(f.mRecipients);
      break label49;
      label214:
      break;
      label216:
      if (g != null) {
        e = g;
      }
    }
  }
  
  @bpi
  public void onSnapReadyForRecipientsEvent(ben paramben)
  {
    aji localaji = mMediabryo;
    if (mIsChatMedia)
    {
      a(localaji);
      return;
    }
    if (u.a()) {
      a(localaji);
    }
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    if ((mShouldGoToSendTo) || (localMediaMailingMetadata.d().size() == 0))
    {
      a(SendToFragment.a(localaji), "SendToFrag", true);
      return;
    }
    if ((e != null) || (f != null) || (d != null))
    {
      r.a(new beo(localaji, true));
      return;
    }
    a(SendToFragment.a(localaji), "SendToFrag", true);
  }
  
  @bpi
  public void onSnapReadyForSendingEvent(beo parambeo)
  {
    aji localaji = mMediabryo;
    boolean bool2 = mFromPreview;
    if (!u.a()) {
      a(localaji);
    }
    try
    {
      if (mSnapType == Mediabryo.SnapType.SNAP) {
        m.e(localaji);
      }
      for (;;)
      {
        if (!mMediaMailingMetadata.d().isEmpty()) {
          r.a(new ber());
        }
        localMediaMailingMetadata = mMediaMailingMetadata;
        if ((!localMediaMailingMetadata.d().isEmpty()) && (mSnapType == Mediabryo.SnapType.SNAP)) {
          break;
        }
        M.c();
        M.d();
        parambeo = mMediaMailingMetadata;
        if (!parambeo.d().isEmpty()) {
          break label321;
        }
        a(3);
        return;
        H.a(localaji);
      }
    }
    catch (acw.b parambeo)
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
            new ErrorMetric(parambeo.getMessage()).a(parambeo).e();
          }
          akg localakg = (akg)localMediaMailingMetadata;
          parambeo = AnalyticsEvents.AnalyticsSendSnapSource.CAMERA;
          if (d != null) {
            if (d.mOriginatingFragment == 1)
            {
              parambeo = AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_FEED;
              AnalyticsEvents.j(true);
              if (mPostToStories.isEmpty()) {
                break label316;
              }
            }
          }
          for (boolean bool1 = true;; bool1 = false)
          {
            AnalyticsEvents.a(localaji, parambeo, bool1, bool2, M.b(), localMediaMailingMetadata.d().size(), mUser);
            break;
            if (d.mOriginatingFragment != 3) {
              break label208;
            }
            parambeo = AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_FRIENDS;
            break label208;
            if (e != null)
            {
              parambeo = AnalyticsEvents.AnalyticsSendSnapSource.IN_CHAT;
              break label212;
            }
            if (f != null)
            {
              parambeo = AnalyticsEvents.AnalyticsSendSnapSource.QUICK_SNAP;
              break label212;
            }
            if (g == null) {
              break label212;
            }
            parambeo = AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_DISCOVER;
            break label212;
          }
          if (mSnapType != Mediabryo.SnapType.DISCOVER) {
            break;
          }
          g = null;
          parambeo = mFragments;
          parambeo.popBackStackImmediate("EditionViewerFragment", 0);
          i1 = parambeo.getBackStackEntryCount() - 1;
        } while (i1 < 0);
        parambeo = a(parambeo, i1);
      } while (parambeo == null);
      parambeo.f(true);
      return;
      if (parambeo.d().size() <= 1)
      {
        if (e != null)
        {
          r.a(new bbs());
          return;
        }
        if (f != null)
        {
          r.a(new bbt());
          return;
        }
      }
      a(1);
    }
  }
  
  @bpi
  public void onSoftNavigationBarEvent(bet parambet)
  {
    boolean bool;
    if (shouldShow)
    {
      parambet = N;
      bool = awf.e(this);
      if ((mIsImmersiveModeSupported) && (mDecorView != null)) {}
    }
    do
    {
      return;
      mDecorView.setSystemUiVisibility(mDefaultFlags);
      parambet.a(bool, false);
      mIsImmersiveModeOn = false;
      return;
      parambet = N;
      bool = awf.e(this);
    } while ((!mIsImmersiveModeSupported) || (mDecorView == null));
    mWindow.addFlags(134217728);
    parambet.a(bool, true);
    mDecorView.setKeepScreenOn(true);
    mDecorView.setSystemUiVisibility(5890);
    mIsImmersiveModeOn = true;
  }
  
  protected void onStart()
  {
    nw.d();
    super.onStart();
    if (i == null) {
      s();
    }
    RegistrationAnalytics.a(false);
    nw.e();
  }
  
  @bpi
  public void onStartFragmentEvent(bev parambev)
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
    if (mEasyMetricManager.c("EXIT_CAMERA_VIEW", ""))
    {
      mEasyMetricManager.a("EXIT_CAMERA_VIEW", "").a("context", "exit");
      mEasyMetricManager.c("EXIT_CAMERA_VIEW");
    }
    W.b();
    super.onStop();
    DictionaryEasyMetric localDictionaryEasyMetric = I;
    synchronized (e)
    {
      a.clear();
      b.clear();
      c.clear();
      d.clear();
      baz.a();
      if (i != null)
      {
        ??? = i;
        mMainHandler.postDelayed(new SecureChatService.1((SecureChatService)???), 5000L);
        if (E)
        {
          unbindService(al);
          E = false;
        }
        i = null;
        G = false;
      }
      new aim();
      if (akr.aa()) {
        S.c();
      }
      return;
    }
  }
  
  @bpi
  public void onStorySnapPostedFromSnapPreviewEvent(bfb parambfb)
  {
    a(3);
  }
  
  @bpi
  public void onSwitchToChatEvent(bfd parambfd)
  {
    n();
    ChatFragment.a(mFriendUsername);
    a(0, false);
  }
  
  @bpi
  public void onTapToViewDiscoverEvent(afz paramafz)
  {
    D = paramafz;
    a.setPagingEnabled(false);
    a.setAnimating(true);
    a.setCurrentItem(4, true);
  }
  
  @bpi
  public void onTitleBarEvent(bfk parambfk)
  {
    boolean bool = true;
    TitleBarManager localTitleBarManager = V;
    if ((mWindow == null) || (mResources == null) || (mHandler == null)) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        TitleBarManager.Visibility localVisibility1 = mVisibility;
        TitleBarManager.Visibility localVisibility2 = mUnlockedVisibility;
        TitleBarManager.LockedState localLockedState = mLockedState;
        new StringBuilder("Target visibility: ").append(localVisibility1).append(" locked: ").append(localLockedState).append(" unlocked visibility: ").append(localVisibility2);
        if (localVisibility2 != null) {
          mTitleBarTargetUnlockedVisibility = localVisibility2;
        }
        if ((mTitleBarLockedState != TitleBarManager.LockedState.LOCKED) || (localLockedState == TitleBarManager.LockedState.NOT_LOCKED))
        {
          if (localLockedState != null) {
            mTitleBarLockedState = localLockedState;
          }
          parambfk = localVisibility1;
          if (localLockedState == TitleBarManager.LockedState.NOT_LOCKED)
          {
            if (localVisibility1 != null) {
              mTitleBarTargetUnlockedVisibility = localVisibility1;
            }
            parambfk = mTitleBarTargetUnlockedVisibility;
          }
          if ((parambfk != null) && ((parambfk != TitleBarManager.Visibility.VISIBLE) || (!mTitleBarShown)) && ((parambfk != TitleBarManager.Visibility.HIDDEN) || (mTitleBarShown))) {
            break;
          }
        }
      }
      return;
    }
    if (parambfk == TitleBarManager.Visibility.VISIBLE) {}
    for (;;)
    {
      mTitleBarShown = bool;
      localTitleBarManager.a();
      return;
      bool = false;
    }
  }
  
  @bpi
  public void onUpdatingUserToDatabasesCompleteEvent(bfn parambfn)
  {
    if (h != null)
    {
      h.hide();
      if (!mSuccess) {
        AlertDialogUtils.a(this, "Failed to upgrade. Try again later");
      }
    }
  }
  
  @bpi
  public void onUpdatingUserToDatabasesEvent(bfo parambfo)
  {
    h = ProgressDialog.show(this, "Upgrading Snapchat", "Loading...");
  }
  
  @bpi
  public void onVolumeViewChangedEvent(bft parambft)
  {
    p();
    af.a(mVolumeViewType);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((paramBoolean) && (v))
    {
      v = false;
      r.a(new bdg());
    }
    KeyguardManager localKeyguardManager = (KeyguardManager)getSystemService("keyguard");
    if ((!paramBoolean) && (localKeyguardManager.inKeyguardRestrictedInputMode())) {
      a.setCurrentItem(2);
    }
  }
  
  @bph
  public InChatSnapEvent produceInChatSnapEvent()
  {
    return e;
  }
  
  @bph
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