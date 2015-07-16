package com.snapchat.android.fragments.chat;

import ael;
import aem;
import agr;
import agr.a;
import agr.c;
import agt;
import agu;
import agu.a;
import agv;
import agw;
import agw.a;
import ahb;
import ahb.a;
import ajk;
import ajm;
import aka;
import ake;
import akl;
import akn;
import akp;
import akr;
import akw;
import akx;
import akz;
import ala;
import alb;
import alc;
import ale;
import alj;
import alv;
import alz;
import ama;
import amt;
import amu;
import amu.a;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.GestureDetectorCompat.GestureDetectorCompatImpl;
import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.DateUtils;
import android.text.style.ImageSpan;
import android.view.Display;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AbsListView.RecyclerListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import aoq;
import aph;
import apx;
import arg;
import ari;
import ark;
import ash;
import atq;
import att;
import aty;
import atz;
import auk;
import aux;
import avn;
import avn.d;
import avr;
import awf;
import awj;
import ayd;
import ayg;
import ayh;
import azy;
import bbb;
import bbl;
import bbn;
import bbo;
import bbq;
import bbs;
import bbt;
import bbv;
import bby;
import bbz;
import bca;
import bcb;
import bcl;
import bdd;
import bde;
import bdp;
import bdu;
import beb;
import bed;
import bee;
import beg;
import bem;
import bep;
import bfk;
import bgd;
import bgr.a;
import bhp;
import bhr;
import bhr.a;
import bia;
import bil;
import bji.a;
import bju.a;
import bpi;
import br;
import chc;
import chd;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus;
import com.snapchat.android.camera.model.CameraModel.CameraType;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.livechat.AdlHelper.PresenceSource;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.stories.ui.animation.DismissAnimationView;
import com.snapchat.android.ui.CashReceiverView;
import com.snapchat.android.ui.CashReceiverView.3;
import com.snapchat.android.ui.CashReceiverView.4;
import com.snapchat.android.ui.CashReceiverView.a;
import com.snapchat.android.ui.CashSwiperView;
import com.snapchat.android.ui.CashSwiperView.2;
import com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod;
import com.snapchat.android.ui.CashSwiperView.b;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.ChatCameraButton.a;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.ui.CursorCallbackEditText.a;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.InAppPromptFlipper;
import com.snapchat.android.ui.LockingAboveTheFoldListView;
import com.snapchat.android.ui.LockingAboveTheFoldListView.c;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.SpyRelativeLayout;
import com.snapchat.android.ui.SpyRelativeLayout.a;
import com.snapchat.android.ui.cash.CashTooltip;
import com.snapchat.android.ui.here.DisconnectReason;
import com.snapchat.android.ui.here.HereTooltip;
import com.snapchat.android.ui.here.HoldToStreamView;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.ui.here.StreamView.a;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.a;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.chat.SnapchatUrlSpan;
import com.snapchat.android.util.chat.UrlType;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import ct;
import dr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Random;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import ms;
import nw;
import nz;
import oa;
import org.apache.commons.lang3.StringUtils;
import rc;
import tt;
import ui.b;
import yq;
import yt;
import yw;
import yw.a;
import yw.b;
import yz;
import yz.1;
import yz.a;
import ze;
import zf;
import zh;
import zm;
import zo;
import zq;

@awj
public class ChatFragment
  extends SnapchatFragment
  implements agr.a, agu.a, alz, arg, br, CashSwiperView.b, LockingAboveTheFoldListView.c<ChatFeedItem>, StreamView.a, SwipeableListItemTouchListener.a, yz.a, zq
{
  public static PendingIntent a;
  private static boolean aB;
  public static String b;
  public static String c;
  private static int l = 20;
  private static final Set<AndroidNotificationManager.Type> m = dr.a(AndroidNotificationManager.Type.ADDFRIEND);
  private static String n;
  private View A;
  private TextView B;
  private TextView C;
  private CursorCallbackEditText D;
  private float E;
  private float F;
  private ChatCameraButton G;
  private LockingAboveTheFoldListView<ChatFeedItem> H;
  private agr I;
  private boolean J;
  private boolean K;
  private CashSwiperView.SwipeActivationMethod L;
  private boolean M;
  private List<ChatFeedItem> N;
  private int O;
  private boolean P = false;
  private View Q;
  private View R;
  private View S;
  private long T = -1L;
  private bhr<CashSwiperView> U;
  private bhr<DismissAnimationView> V;
  private boolean W = true;
  private boolean X;
  private bhr<CashReceiverView> Y;
  private boolean Z;
  private boolean aA;
  private HereTooltip aC;
  private CashTooltip aD;
  private CashFeedItem aE;
  private boolean aF = false;
  private agw aG;
  private agv aH;
  private Map<String, agv> aI;
  private boolean aJ = false;
  private Handler aa;
  private DictionaryEasyMetric ab;
  private ayd ac;
  private zf ad;
  private akx ae;
  private zh af;
  private Handler ag;
  private yz ah;
  private ark ai;
  private ViewStub aj;
  private boolean ak = false;
  private boolean al = true;
  private ze am;
  private View an;
  private ChatMediaExpansionCalculator ao;
  private int ap;
  private int aq;
  private int ar;
  private int as;
  private AnimatorSet at;
  private int au;
  private boolean av = false;
  private float aw = 0.0F;
  private GestureDetectorCompat ax;
  private final HashMap<String, String> ay = new HashMap();
  private final HashMap<String, List<Integer>> az = new HashMap();
  protected SnapView d;
  ChatConversation e;
  protected Friend f;
  protected bhr<StreamView> g;
  @Inject
  public yq h;
  @Inject
  public yw i;
  @Inject
  public yt j;
  public boolean k;
  private String o;
  private final zm p;
  private final aph q;
  private final oa r;
  private final bbb s;
  private final tt t;
  private final amu u;
  private final ael v;
  private final ama w;
  private View x;
  private View y;
  private View z;
  
  public ChatFragment()
  {
    this(akx.c(), zm.a(), new agw(), new zf(), new ChatMediaExpansionCalculator(), aph.a(), ama.a(), oa.a(), bbb.b(), tt.a(), amu.a(), new zh(SnapchatApplication.b()), new ael());
  }
  
  @SuppressLint({"ValidFragment"})
  private ChatFragment(akx paramakx, zm paramzm, agw paramagw, zf paramzf, ChatMediaExpansionCalculator paramChatMediaExpansionCalculator, aph paramaph, ama paramama, oa paramoa, bbb parambbb, tt paramtt, amu paramamu, zh paramzh, ael paramael)
  {
    SnapchatApplication.b().c().a(this);
    ae = paramakx;
    p = paramzm;
    aG = paramagw;
    ad = paramzf;
    ao = paramChatMediaExpansionCalculator;
    q = paramaph;
    w = paramama;
    r = paramoa;
    s = parambbb;
    t = paramtt;
    u = paramamu;
    af = paramzh;
    v = paramael;
    paramakx = aG;
    paramzm = v;
    a.a = paramzm;
    aI = new HashMap();
  }
  
  private void B()
  {
    int i1 = 0;
    if (f == null) {
      return;
    }
    Object localObject2 = f.l();
    Object localObject1 = H();
    if ((localObject1 == null) || (((String)localObject1).isEmpty())) {
      ay.remove(localObject2);
    }
    while (!F())
    {
      az.remove(localObject2);
      return;
      ay.put(localObject2, localObject1);
    }
    localObject1 = (List)az.get(localObject2);
    if (localObject1 == null)
    {
      localObject1 = new ArrayList();
      az.put(localObject2, localObject1);
    }
    for (;;)
    {
      localObject2 = D.getEditableText();
      ImageSpan[] arrayOfImageSpan = (ImageSpan[])((Editable)localObject2).getSpans(0, ((Editable)localObject2).length(), ImageSpan.class);
      int i2 = arrayOfImageSpan.length;
      while (i1 < i2)
      {
        ((List)localObject1).add(Integer.valueOf(((Editable)localObject2).getSpanStart(arrayOfImageSpan[i1])));
        i1 += 1;
      }
      break;
      ((List)localObject1).clear();
    }
  }
  
  private void C()
  {
    if (f == null) {
      return;
    }
    aoq.a().a(f.l());
  }
  
  private void D()
  {
    if (g.b()) {
      ((StreamView)g.a()).b();
    }
  }
  
  private void E()
  {
    if (T > 0L)
    {
      AnalyticsEvents.a(SystemClock.elapsedRealtime() - T);
      T = -1L;
    }
  }
  
  private boolean F()
  {
    return yq.a(D.getEditableText()) > 0;
  }
  
  private void G()
  {
    if ((!(g.a() instanceof HoldToStreamView)) && (att.b())) {
      g = new bhr(mFragmentLayout, 2131362068, 2131362082, new bhr.a()
      {
        public final void a(View paramAnonymousView)
        {
          ChatFragment.g(ChatFragment.this).setTouchSubscriber((ChatCameraButton.a)g.a());
        }
      });
    }
    ((StreamView)g.a()).a(getActivity(), this);
  }
  
  private String H()
  {
    Editable localEditable = D.getText();
    if (localEditable == null) {
      return null;
    }
    return localEditable.toString();
  }
  
  @awj
  private void L()
  {
    if ((X) && (!K) && (D.requestFocus()))
    {
      awf.g(getActivity());
      g(true);
      new Handler().post(new Runnable()
      {
        public final void run()
        {
          ChatFragment.c(ChatFragment.this, 0.0F);
          ChatFragment.n(ChatFragment.this).a();
        }
      });
    }
    X = false;
  }
  
  private void M()
  {
    aB = true;
    W = false;
    bbo.a().a(new beg(false));
  }
  
  private void N()
  {
    aB = false;
    W = true;
    bbo.a().a(new beg(true));
  }
  
  @awj
  private void O()
  {
    if ((mIsVisible) && (e.mPendingRainBills > 0))
    {
      if (aJ) {
        break label58;
      }
      a(e.mPendingRainBills, e.mPendingRainTransactionTimestamp);
    }
    for (;;)
    {
      ChatConversation localChatConversation = e;
      mPendingRainBills = 0;
      mPendingRainTransactionTimestamp = 0L;
      return;
      label58:
      aJ = false;
    }
  }
  
  private void P()
  {
    h(false);
    if ((x.getTranslationY() == -ap) && (y.getTranslationY() == -(ap + ar)) && (z.getTranslationY() == aq) && (A.getTranslationY() == aq + as)) {
      return;
    }
    if (at != null) {
      at.cancel();
    }
    at = new AnimatorSet();
    AnimatorSet.Builder localBuilder = at.play(ObjectAnimator.ofFloat(x, "translationY", new float[] { x.getTranslationY(), -ap }));
    localBuilder.with(ObjectAnimator.ofFloat(y, "translationY", new float[] { y.getTranslationY(), -(ap + ar) }));
    localBuilder.with(ObjectAnimator.ofFloat(z, "translationY", new float[] { z.getTranslationY(), aq }));
    localBuilder.with(ObjectAnimator.ofFloat(A, "translationY", new float[] { A.getTranslationY(), aq + as }));
    at.start();
  }
  
  private void Q()
  {
    h(true);
    if ((x.getTranslationY() == 0.0F) && (y.getTranslationY() == 0.0F) && (z.getTranslationY() == 0.0F) && (A.getTranslationY() == 0.0F)) {
      return;
    }
    if (at != null) {
      at.cancel();
    }
    at = new AnimatorSet();
    AnimatorSet.Builder localBuilder = at.play(ObjectAnimator.ofFloat(x, "translationY", new float[] { x.getTranslationY(), 0.0F }));
    localBuilder.with(ObjectAnimator.ofFloat(y, "translationY", new float[] { y.getTranslationY(), 0.0F }));
    localBuilder.with(ObjectAnimator.ofFloat(z, "translationY", new float[] { z.getTranslationY(), 0.0F }));
    localBuilder.with(ObjectAnimator.ofFloat(A, "translationY", new float[] { A.getTranslationY(), 0.0F }));
    at.start();
  }
  
  private static boolean R()
  {
    boolean bool = false;
    if ((akn.a().a("ADDLIVE_PRESENCE", "ENABLED", false)) || (ReleaseManager.f())) {
      bool = true;
    }
    return bool;
  }
  
  public static String a(ChatFeedItem paramChatFeedItem)
  {
    Object localObject;
    if ((paramChatFeedItem instanceof ake))
    {
      paramChatFeedItem = mClientId;
      localObject = paramChatFeedItem.substring(0, Math.min(paramChatFeedItem.length(), 30));
    }
    String str;
    do
    {
      return (String)localObject;
      if (!(paramChatFeedItem instanceof CashFeedItem)) {
        break;
      }
      str = mSendingClientId;
      localObject = str;
    } while (str != null);
    return paramChatFeedItem.d();
  }
  
  private void a(float paramFloat)
  {
    int i1 = 0;
    while (i1 <= H.getLastVisiblePosition())
    {
      Object localObject = H.getChildAt(i1);
      if (localObject != null)
      {
        localObject = ((View)localObject).getTag();
        if ((localObject instanceof agr.c)) {
          ((agr.c)localObject).a(paramFloat);
        }
      }
      i1 += 1;
    }
  }
  
  private void a(final int paramInt, final long paramLong)
  {
    ((CashReceiverView)Y.a()).post(new Runnable()
    {
      public final void run()
      {
        if (!ChatFragment.E(ChatFragment.this))
        {
          ChatFragment.F(ChatFragment.this);
          l = ((1.0F - ((CashReceiverView)ChatFragment.G(ChatFragment.this).a()).getAlpha()) * 500.0F);
          ((CashReceiverView)ChatFragment.G(ChatFragment.this).a()).animate().alpha(1.0F).setListener(null).setDuration(l);
        }
        CashReceiverView localCashReceiverView = (CashReceiverView)ChatFragment.G(ChatFragment.this).a();
        int j = paramInt;
        long l = paramLong;
        int i;
        if (f.containsKey(Long.valueOf(l)))
        {
          i = j - ((Integer)f.get(Long.valueOf(l))).intValue();
          if (i > 0)
          {
            f.put(Long.valueOf(l), Integer.valueOf(j));
            if ((e == null) || (!e.isStarted())) {
              localCashReceiverView.a(CashReceiverView.a.a);
            }
            j = 0;
          }
        }
        else
        {
          for (;;)
          {
            if (j >= i) {
              break label873;
            }
            ImageView localImageView = new ImageView(localCashReceiverView.getContext());
            localImageView.setImageDrawable(localCashReceiverView.getResources().getDrawable(2130837672));
            localImageView.setLayoutParams(new ViewGroup.LayoutParams((int)awf.a(72.0F, localCashReceiverView.getContext()), (int)awf.a(36.0F, localCashReceiverView.getContext())));
            localImageView.setTag("FALLING_DOLLAR_TAG");
            float f4 = aux.a().nextFloat();
            float f5 = 0.9F + aux.a().nextFloat() * 0.2F;
            localImageView.setScaleX(f5);
            localImageView.setScaleY(f5);
            int k = 0;
            for (;;)
            {
              if ((k < localCashReceiverView.getChildCount()) && (f5 > localCashReceiverView.getChildAt(k).getScaleX()))
              {
                k += 1;
                continue;
                i = j;
                break;
              }
            }
            localCashReceiverView.addView(localImageView, k);
            float f1 = awf.a(3.33F - 1.66F * f4, localCashReceiverView.getContext());
            float f2 = awf.a(0.2F + 0.1F * f4, localCashReceiverView.getContext());
            float f3 = awf.a(0.0015F + -5.0E-4F * f4, localCashReceiverView.getContext());
            f4 = awf.a(133.0F * f5 + f4 * -66.0F, localCashReceiverView.getContext());
            f5 = localCashReceiverView.getMeasuredWidth();
            float f6 = aux.a().nextFloat();
            float f7 = getLayoutParamswidth / 2.0F;
            float f8 = (float)(6.283185307179586D * aux.a().nextFloat());
            float f9 = -getLayoutParamsheight;
            float f10 = awf.a(5.0F, localCashReceiverView.getContext());
            ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
            localValueAnimator.setDuration(5000L);
            localValueAnimator.setInterpolator(new LinearInterpolator());
            localValueAnimator.addUpdateListener(new CashReceiverView.3(localCashReceiverView, localImageView, f3, f8, f4, f5 * (0.4F + 0.2F * f6) - f7, f9 - f10, f2, f1));
            localValueAnimator.addListener(new CashReceiverView.4(localCashReceiverView, localImageView));
            localValueAnimator.start();
            if (paramInt < 6)
            {
              localImageView = new ImageView(localCashReceiverView.getContext());
              localImageView.setImageResource(2130837671);
              k = (int)awf.a(9.0F, localCashReceiverView.getContext());
              int m = (int)awf.a(18.0F, localCashReceiverView.getContext());
              f1 = 0.9F + 0.2F * aux.a().nextFloat();
              localImageView.setScaleX(f1);
              localImageView.setScaleY(f1);
              localImageView.setLayoutParams(new ViewGroup.LayoutParams(k, m));
              localImageView.setTag("CAUGHT_DOLLAR_TAG");
              c.addView(localImageView);
              f2 = -2.0F + 2.0F * aux.a().nextFloat();
              if ((!d) || (paramInt % 2 != 0))
              {
                f1 = f2;
                if (!d)
                {
                  f1 = f2;
                  if (paramInt % 2 == 0) {}
                }
              }
              else
              {
                f1 = f2 + 32.0F;
              }
              localImageView.setTranslationX(awf.a(f1, localCashReceiverView.getContext()));
              localImageView.setTranslationY(awf.a(4.0F + 2.0F * aux.a().nextFloat(), localCashReceiverView.getContext()));
              localImageView.setRotation(-30.0F + 60.0F * aux.a().nextFloat());
            }
            b.add(Long.valueOf(SystemClock.elapsedRealtime()));
            paramInt += 1;
            j += 1;
          }
        }
        label873:
        ChatFragment.H(ChatFragment.this).removeCallbacksAndMessages(null);
        ChatFragment.H(ChatFragment.this).postDelayed(new Runnable()
        {
          public final void run()
          {
            ChatFragment.I(ChatFragment.this);
          }
        }, 3000L);
      }
    });
  }
  
  private void a(AdlHelper.PresenceSource paramPresenceSource)
  {
    boolean bool4 = true;
    int i1;
    label52:
    final boolean bool2;
    label63:
    final boolean bool3;
    if ((e.mIsRecipientPresent) && (e.mAmIPresent))
    {
      bool1 = true;
      boolean bool5 = ((StreamView)g.a()).getPresence();
      if (e.mHereAuth == null) {
        break label251;
      }
      i1 = 1;
      if ((!bool1) || (i1 == 0)) {
        break label256;
      }
      bool2 = true;
      if (bool2)
      {
        G();
        ((StreamView)g.a()).a(e);
        ((StreamView)g.a()).setCanStreamVideo(true, DisconnectReason.REMOTE_PEER_LEFT);
      }
      bool3 = bool1;
      if (paramPresenceSource == AdlHelper.PresenceSource.ADDLIVE)
      {
        bool3 = bool1;
        if (att.b())
        {
          bool3 = bool1;
          if (e.mRecipientSupportsHere)
          {
            bool3 = bool1;
            if (R()) {
              bool3 = bool5;
            }
          }
        }
      }
      ChatCameraButton localChatCameraButton = G;
      if (!bool3) {
        break label262;
      }
      paramPresenceSource = "blue";
      label166:
      localChatCameraButton.setContentDescription(paramPresenceSource);
      G.setPresent(bool3);
      if ((G.getVisibility() != 0) || (G.getCashtagDetected()) || (H.b)) {
        break label269;
      }
    }
    label251:
    label256:
    label262:
    label269:
    for (boolean bool1 = bool4;; bool1 = false)
    {
      aC.a(e, bool1);
      G.setOnLongClickListener(new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          if ((ChatFragment.g(ChatFragment.this).getIsEmoji()) || (ChatFragment.g(ChatFragment.this).getCashtagDetected()) || (ChatFragment.g(ChatFragment.this).getCashSwipeDetected())) {
            return false;
          }
          if (bool2)
          {
            p();
            ((StreamView)g.a()).c();
            paramAnonymousView = la.edit();
            paramAnonymousView.putInt(SharedPreferenceKey.TIMES_DISPLAYED_HERE_TOOLTIP.getKey(), 3);
            paramAnonymousView.apply();
          }
          for (;;)
          {
            return true;
            if (bool3) {
              ChatFragment.l(ChatFragment.this).a(true);
            } else {
              ChatFragment.s(ChatFragment.this);
            }
          }
        }
      });
      return;
      bool1 = false;
      break;
      i1 = 0;
      break label52;
      bool2 = false;
      break label63;
      paramPresenceSource = "yellow";
      break label166;
    }
  }
  
  private void a(@chc Friend paramFriend)
  {
    B.setText(paramFriend.g());
    String str = paramFriend.l();
    Object localObject = ct.a((String)ay.get(str));
    CursorCallbackEditText localCursorCallbackEditText;
    if (!TextUtils.equals((CharSequence)localObject, D.getText()))
    {
      D.setText((CharSequence)localObject);
      localCursorCallbackEditText = D;
      if (localObject != null) {
        break label155;
      }
    }
    label155:
    for (int i1 = 0;; i1 = ((String)localObject).length())
    {
      localCursorCallbackEditText.setSelection(i1);
      localObject = (List)az.get(str);
      if (localObject == null) {
        return;
      }
      if ((!CashUtils.a(akr.ap())) || (!CashUtils.a(paramFriend.r()))) {
        break;
      }
      paramFriend = ((List)localObject).iterator();
      while (paramFriend.hasNext())
      {
        localObject = (Integer)paramFriend.next();
        yq.a(D, ((Integer)localObject).intValue());
      }
    }
    az.remove(str);
  }
  
  private void a(@chc Friend paramFriend, boolean paramBoolean)
  {
    if (!aF) {
      return;
    }
    new StringBuilder("CHAT-LOG: ChatFragment setFriend ").append(paramFriend.l());
    if (a(paramFriend.l()))
    {
      ac.a();
      if (Y.b())
      {
        ((CashReceiverView)Y.a()).a();
        ((CashReceiverView)Y.a()).setAlpha(0.0F);
      }
      H.c();
      b(0.0F);
    }
    f = paramFriend;
    K = false;
    e = ae.a(f.l(), false);
    if (e == null)
    {
      AnalyticsEvents.a(AnalyticsEvents.LogoutReason.NO_USERNAME);
      q.e();
      paramFriend = getActivity();
      atq.a(paramFriend);
      paramFriend.finish();
      return;
    }
    e.mEnteredConversationFromRecentStoryReply = r.b();
    a(f);
    if (ReleaseManager.f()) {
      a(w.b());
    }
    aE = null;
    if (!CashUtils.a(akr.ap())) {
      j.a(e.D());
    }
    if (paramBoolean) {
      e.a(false);
    }
    e.u();
    a(e.A(), true);
    H.setIsActive(true);
    H.setSelection(N.size() - 1);
    if (R()) {
      a(AdlHelper.PresenceSource.ADDLIVE);
    }
    for (;;)
    {
      bbo.a().a(new bbq(CameraDisplayState.SHOW, CameraModel.CameraType.FRONT_FACING));
      return;
      a(AdlHelper.PresenceSource.CHAT_GATEWAY);
    }
  }
  
  private void a(@chc CashFeedItem paramCashFeedItem)
  {
    paramCashFeedItem = mCashTransaction;
    mSenderBankStatementMessage = getString(2131493282, new Object[] { StringUtils.substring(mRecipientUsername, 0, 7) });
    mRecipientBankStatementMessage = getString(2131493282, new Object[] { StringUtils.substring(mSenderUsername, 0, 7) });
  }
  
  private void a(@chc final ChatConversation paramChatConversation, @chc final CashFeedItem paramCashFeedItem, @chc String paramString)
  {
    paramCashFeedItem.d();
    String str = mTheirUsername;
    mCashTransaction.a();
    M();
    a(paramCashFeedItem);
    i.a(paramChatConversation, paramCashFeedItem, paramString, new yw.b()
    {
      public final void a()
      {
        paramCashFeedItem.d();
        String str = paramChatConversationmTheirUsername;
        paramCashFeedItemmCashTransaction.a();
        bhp.a(new Runnable()
        {
          public final void run()
          {
            ChatFragment.i(ChatFragment.this).setText("");
          }
        });
        ChatFragment.a(ChatFragment.this, null);
        ChatFragment.B(ChatFragment.this).remove(paramChatConversationmTheirUsername);
        ChatFragment.q(ChatFragment.this);
        bbo.a().a(new bed());
        AnalyticsEvents.b(paramCashFeedItemmCashTransaction.a(), paramCashFeedItemmCashTransaction.mFromRain);
      }
      
      public final void b()
      {
        ChatFragment.q(ChatFragment.this);
      }
    });
  }
  
  private void a(final CashSwiperView.SwipeActivationMethod paramSwipeActivationMethod)
  {
    if ((e == null) || (K)) {
      return;
    }
    ((CashSwiperView)U.a()).a(5000);
    L = paramSwipeActivationMethod;
    K = true;
    X = D.hasFocus();
    aD.a();
    CashFeedItem localCashFeedItem = yw.a(e, 1, false);
    M();
    i.a(localCashFeedItem, new yw.a()
    {
      public final void a()
      {
        bhp.a(new Runnable()
        {
          public final void run()
          {
            AnalyticsEvents.a(a);
            p();
            CashSwiperView localCashSwiperView = (CashSwiperView)ChatFragment.b(ChatFragment.this).a();
            localCashSwiperView.setAlpha(0.0F);
            localCashSwiperView.setEnabled(true);
            localCashSwiperView.setVisibility(0);
            localCashSwiperView.animate().alpha(1.0F).setListener(null).setDuration(500L).start();
            e = false;
            if (c != null)
            {
              localCashSwiperView.setUpFadeInAudio();
              d.start();
              c.start();
            }
            for (;;)
            {
              localCashSwiperView.a(5000);
              return;
              c = new MediaPlayer();
              c.setLooping(true);
              Uri localUri = Uri.parse(CashSwiperView.a);
              c.setAudioStreamType(3);
              try
              {
                c.setDataSource(localCashSwiperView.getContext(), localUri);
                c.setOnPreparedListener(new CashSwiperView.2(localCashSwiperView));
                c.prepareAsync();
              }
              catch (IOException localIOException) {}
            }
          }
        });
        ChatFragment.y();
        ChatFragment.C(ChatFragment.this);
        bbo.a().a(new beg(false));
      }
      
      public final void b()
      {
        ChatFragment.q(ChatFragment.this);
        ChatFragment.D(ChatFragment.this);
      }
    });
  }
  
  private void a(List<ChatFeedItem> paramList, ChatFeedItem paramChatFeedItem, boolean paramBoolean)
  {
    if ((O == -1) && (a(paramChatFeedItem, paramBoolean))) {
      O = paramList.size();
    }
    paramList.add(paramChatFeedItem);
  }
  
  @awj
  private void a(final boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject2 = new ArrayList(e.o());
    N.clear();
    o = akr.l();
    O = -1;
    int i1 = ((List)localObject2).size();
    if (i1 == 0)
    {
      N.add(new akz(null));
      O = 0;
      I.notifyDataSetChanged();
      return;
    }
    ac.mMessageCount = i1;
    Object localObject1;
    if ((!I.isEmpty()) && (H.getFirstVisiblePosition() < l))
    {
      i2 = ac.mRenderSize;
      localObject1 = ac;
      if (mRenderSize < mMessageCount) {
        mRenderSize += 30;
      }
    }
    int i2 = ac.mRenderSize;
    if (i2 < i1) {
      localObject2 = ((List)localObject2).subList(i1 - i2, i1);
    }
    for (;;)
    {
      boolean bool = DateUtils.isToday(((ChatFeedItem)((List)localObject2).get(((List)localObject2).size() - 1)).U());
      if (paramBoolean2)
      {
        i1 = 0;
        for (;;)
        {
          if (i1 < ((List)localObject2).size())
          {
            if (a((ChatFeedItem)((List)localObject2).get(i1), bool)) {
              O = i1;
            }
          }
          else
          {
            if (O != -1) {
              break;
            }
            N.add(new akz(null));
            O = 0;
            I.notifyDataSetChanged();
            return;
          }
          i1 += 1;
        }
        if (O > 0)
        {
          ((List)localObject2).subList(0, O).clear();
          O = 0;
        }
      }
      Calendar localCalendar = Calendar.getInstance();
      HashSet localHashSet = new HashSet();
      i2 = 0;
      if (i2 < ((List)localObject2).size())
      {
        ChatFeedItem localChatFeedItem = (ChatFeedItem)((List)localObject2).get(i2);
        if (i2 > 0) {}
        for (localObject1 = (ChatFeedItem)((List)localObject2).get(i2 - 1); localChatFeedItem == null; localObject1 = null) {
          throw new NullPointerException();
        }
        label437:
        Object localObject3;
        if ((localObject1 == null) || (atz.a(((ChatFeedItem)localObject1).U(), localChatFeedItem.U())))
        {
          i1 = 1;
          if (i1 != 0)
          {
            localCalendar.setTimeInMillis(Long.valueOf(localChatFeedItem.U()).longValue());
            atz.a(localCalendar);
            if (localHashSet.add(Long.valueOf(localCalendar.getTimeInMillis())))
            {
              localObject3 = new akz(localChatFeedItem);
              a(N, (ChatFeedItem)localObject3, bool);
            }
          }
          if ((localChatFeedItem instanceof alb)) {
            break label752;
          }
          if (i1 == 0) {
            break label653;
          }
          i1 = 1;
          label517:
          if (i1 != 0)
          {
            localObject3 = localChatFeedItem.j();
            if (!(localChatFeedItem instanceof ale)) {
              break label757;
            }
            localObject1 = getResources().getString(2131493002);
            label550:
            localObject1 = new ala((String)localObject1, localChatFeedItem);
            N.add(localObject1);
          }
          a(N, localChatFeedItem, bool);
          localObject1 = localChatFeedItem.aj();
          localChatFeedItem.d();
          localObject3 = e.mId;
          if (!TextUtils.isEmpty((CharSequence)localObject1)) {
            break label777;
          }
          label621:
          if (!(localChatFeedItem instanceof akw)) {
            break label797;
          }
        }
        label653:
        label752:
        label757:
        label777:
        label797:
        for (long l1 = ((akw)localChatFeedItem).t();; l1 = -1L)
        {
          i2 += 1;
          break;
          i1 = 0;
          break label437;
          if ((localObject1 instanceof alb))
          {
            i1 = 1;
            break label517;
          }
          if (((localObject1 instanceof Snap)) && (((Snap)localObject1).ao()))
          {
            i1 = 1;
            break label517;
          }
          if ((((localChatFeedItem instanceof ale)) && (!(localObject1 instanceof ale))) || (((localObject1 instanceof ale)) && (!(localChatFeedItem instanceof ale))))
          {
            i1 = 1;
            break label517;
          }
          if (!TextUtils.equals(((ChatFeedItem)localObject1).j(), localChatFeedItem.j()))
          {
            i1 = 1;
            break label517;
          }
          i1 = 0;
          break label517;
          localObject1 = localObject3;
          if (!TextUtils.isEmpty((CharSequence)localObject3)) {
            break label550;
          }
          localObject1 = "";
          break label550;
          localObject1 = ((String)localObject1).substring(0, Math.min(3, ((String)localObject1).length()));
          break label621;
        }
      }
      if (!bool)
      {
        if (O == -1) {
          O = N.size();
        }
        N.add(new akz(null));
      }
      N.size();
      if (!J)
      {
        I.notifyDataSetChanged();
        new Handler().post(new Runnable()
        {
          public final void run()
          {
            ChatFragment.z(ChatFragment.this);
            if (paramBoolean1)
            {
              ChatFragment.e(ChatFragment.this).c();
              ChatFragment.A(ChatFragment.this);
              ChatFragment.n(ChatFragment.this).a();
            }
          }
        });
        return;
      }
      if (paramBoolean1)
      {
        I.notifyDataSetChanged();
        H.c();
        Q();
        am.a();
        return;
      }
      int i3 = H.getFirstVisiblePosition();
      localObject1 = null;
      i1 = i3;
      i2 = i3;
      if (i1 <= H.getLastVisiblePosition())
      {
        localObject2 = I.a(i1);
        if (localObject2 == null) {
          break label1124;
        }
        localObject1 = localObject2;
        i2 = i1;
        if ((localObject2 instanceof ala))
        {
          i2 = i1;
          localObject1 = localObject2;
        }
      }
      label1124:
      for (;;)
      {
        i1 += 1;
        break;
        if (localObject1 != null)
        {
          localObject1 = ((ChatFeedItem)localObject1).d();
          localObject2 = H.getChildAt(i2 - i3);
          if (localObject2 == null) {}
          for (i1 = 0;; i1 = ((View)localObject2).getTop())
          {
            I.notifyDataSetChanged();
            localObject2 = N.iterator();
            i2 = 0;
            while ((((Iterator)localObject2).hasNext()) && (!TextUtils.equals(((ChatFeedItem)((Iterator)localObject2).next()).d(), (CharSequence)localObject1))) {
              i2 += 1;
            }
          }
          H.setSelectionFromTop(i2, i1);
          return;
        }
        I.notifyDataSetChanged();
        return;
      }
    }
  }
  
  private boolean a(ChatFeedItem paramChatFeedItem, boolean paramBoolean)
  {
    if ((paramChatFeedItem instanceof StatefulChatFeedItem))
    {
      if ((!paramChatFeedItem.am()) && (!TextUtils.equals(paramChatFeedItem.j(), o))) {
        return true;
      }
    }
    else if (((paramChatFeedItem instanceof aka)) && (!((aka)paramChatFeedItem).A())) {
      return true;
    }
    return (paramBoolean) && (DateUtils.isToday(paramChatFeedItem.U()));
  }
  
  public static boolean a(String paramString)
  {
    if (!TextUtils.equals(c, paramString)) {}
    for (boolean bool = true;; bool = false)
    {
      c = paramString;
      return bool;
    }
  }
  
  private void b(float paramFloat)
  {
    if (at != null) {
      at.cancel();
    }
    boolean bool;
    float f1;
    float f2;
    float f3;
    float f4;
    if (paramFloat != 1.0F)
    {
      bool = true;
      h(bool);
      f1 = x.getTranslationY();
      f2 = z.getTranslationY();
      f3 = y.getTranslationY();
      f4 = A.getTranslationY();
      if ((paramFloat == 0.0F) || (!am.b()) || (bgd.b(H))) {
        break label100;
      }
      P();
    }
    label100:
    int i4;
    do
    {
      do
      {
        return;
        bool = false;
        break;
      } while (((paramFloat == 0.0F) && (f1 == 0.0F) && (f2 == 0.0F) && (f3 == 0.0F) && (f4 == 0.0F)) || ((paramFloat == 1.0F) && (f1 == -ap) && (f2 == aq) && (f3 == -(ap + ar)) && (f4 == aq + as)));
      int i1 = (int)-(ap * paramFloat);
      int i2 = (int)(aq * paramFloat);
      int i3 = (int)-((ap + ar) * paramFloat);
      i4 = (int)((aq + as) * paramFloat);
      if (i1 != f1) {
        x.setTranslationY(i1);
      }
      if (i2 != f2) {
        z.setTranslationY(i2);
      }
      if (i3 != f3) {
        y.setTranslationY(i3);
      }
    } while (i4 == f4);
    A.setTranslationY(i4);
  }
  
  private void b(@chc String paramString)
  {
    if (!J) {}
    int i2;
    label36:
    label176:
    long l1;
    label194:
    label239:
    do
    {
      Object localObject2;
      View localView;
      Object localObject1;
      do
      {
        return;
        i2 = H.getFirstVisiblePosition();
        int i3 = H.getLastVisiblePosition();
        localObject2 = H.getAdapter();
        i1 = i2;
        if (i1 > i3) {
          break label405;
        }
        localView = H.getChildAt(i1 - i2);
        localObject1 = (agr.c)localView.getTag();
        if ((localObject1 == null) || (((ListAdapter)localObject2).getCount() <= i1)) {
          break label400;
        }
        localObject1 = a;
        ChatFeedItem localChatFeedItem = (ChatFeedItem)((ListAdapter)localObject2).getItem(i1);
        if ((localObject1 == null) || (localChatFeedItem == null) || (!TextUtils.equals(((ChatFeedItem)localObject1).d(), localChatFeedItem.d())) || (!TextUtils.equals(((ChatFeedItem)localObject1).d(), paramString))) {
          break label400;
        }
        paramString = ((ChatFeedItem)localObject1).aj();
        ((ChatFeedItem)localObject1).d();
        localObject2 = e.mId;
        if (!TextUtils.isEmpty(paramString)) {
          break label375;
        }
        if (!(localObject1 instanceof akw)) {
          break label392;
        }
        l1 = ((akw)localObject1).t();
        H.getAdapter().getView(i1, localView, H);
        int i4 = H.getFirstVisiblePosition();
        paramString = H.getAdapter();
        i3 = 0;
        i2 = i1;
        i1 = i3;
        if (i2 < i4) {
          break;
        }
        localView = H.getChildAt(i2 - i4);
        localObject1 = (agr.c)localView.getTag();
        if (localObject1 == null) {
          break label407;
        }
        localObject1 = a;
        localObject2 = (ChatFeedItem)paramString.getItem(i2);
      } while ((i1 != 0) && (!(localObject2 instanceof akz)));
      if ((localObject1 == null) || (localObject2 == null) || (!(localObject1 instanceof ala)) || (!TextUtils.equals(((ChatFeedItem)localObject1).d(), ((ChatFeedItem)localObject2).d()))) {
        break label407;
      }
      H.getAdapter().getView(i2, localView, H);
    } while (i1 != 0);
    int i1 = 1;
    label375:
    label392:
    label400:
    label405:
    label407:
    for (;;)
    {
      i2 -= 1;
      break label239;
      break;
      paramString = paramString.substring(0, Math.min(3, paramString.length()));
      break label176;
      l1 = -1L;
      break label194;
      i1 += 1;
      break label36;
      break;
    }
  }
  
  private void g(boolean paramBoolean)
  {
    int i2 = 1;
    Object localObject = H;
    boolean bool;
    if (!paramBoolean)
    {
      bool = true;
      ((LockingAboveTheFoldListView)localObject).setShouldSubtractStatusBarHeightFromFooter(bool);
      localObject = getActivity();
      if (!paramBoolean) {
        break label212;
      }
      if ((localObject instanceof LandingPageActivity))
      {
        localObject = (LandingPageActivity)localObject;
        ((LandingPageActivity)localObject).a();
        localObject = s;
        d = true;
        f.clear();
        if (e != null) {
          e.end();
        }
      }
      a(WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
      label98:
      if (!paramBoolean) {
        break label251;
      }
      i1 = (int)getResources().getDimension(2131296258);
      label114:
      localObject = u;
      if (paramBoolean) {
        break label266;
      }
      label124:
      int i3 = (int)getResources().getDimension(2131296417);
      ViewStub localViewStub = aj;
      bhp.a();
      ((amu)localObject).a(localViewStub);
      a.getLayoutParams().height = i1;
      if (i2 == 0) {
        break label271;
      }
      a.findViewById(2131362395).setPadding(0, i3, 0, 0);
    }
    for (;;)
    {
      localObject = (RelativeLayout.LayoutParams)x.getLayoutParams();
      if (localObject != null) {
        break label292;
      }
      return;
      bool = false;
      break;
      label212:
      if ((localObject instanceof LandingPageActivity))
      {
        localObject = (LandingPageActivity)localObject;
        ((LandingPageActivity)localObject).a();
        s.d = false;
      }
      a(WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND);
      break label98;
      label251:
      i1 = (int)getResources().getDimension(2131296259);
      break label114;
      label266:
      i2 = 0;
      break label124;
      label271:
      a.findViewById(2131362395).setPadding(0, 0, 0, 0);
    }
    label292:
    i2 = height;
    if (paramBoolean) {
      ap = ((int)getResources().getDimension(2131296258));
    }
    for (int i1 = 0;; i1 = (int)getResources().getDimension(2131296417))
    {
      if (ap != i2)
      {
        height = ap;
        x.setLayoutParams((ViewGroup.LayoutParams)localObject);
        localObject = (AbsListView.LayoutParams)an.getLayoutParams();
        if (localObject != null)
        {
          height = ap;
          an.setLayoutParams((ViewGroup.LayoutParams)localObject);
        }
      }
      if (i1 == x.getPaddingTop()) {
        break;
      }
      x.setPadding(0, i1, 0, 0);
      return;
      ap = ((int)getResources().getDimension(2131296259));
    }
  }
  
  private void h(boolean paramBoolean)
  {
    if (al != paramBoolean) {
      if (!paramBoolean) {
        break label36;
      }
    }
    label36:
    for (TitleBarManager.Visibility localVisibility = TitleBarManager.Visibility.VISIBLE;; localVisibility = TitleBarManager.Visibility.HIDDEN)
    {
      bbo.a().a(new bfk(localVisibility));
      al = paramBoolean;
      return;
    }
  }
  
  public static boolean m()
  {
    return aB;
  }
  
  public static boolean n()
  {
    return (b != null) && (a != null);
  }
  
  public static void o()
  {
    b = null;
    a = null;
  }
  
  public static String t()
  {
    return n;
  }
  
  public final float a(View paramView)
  {
    if (paramView == null) {
      return 0.0F;
    }
    paramView = paramView.getTag();
    if ((paramView instanceof agr.c)) {
      return c.getTranslationX();
    }
    return 0.0F;
  }
  
  final ChatFeedItem a(MotionEvent paramMotionEvent)
  {
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    i1 = H.pointToPosition(i1, i2);
    if (i1 >= I.getCount() + H.getHeaderViewsCount()) {
      return null;
    }
    return (ChatFeedItem)H.getItemAtPosition(i1);
  }
  
  public final void a()
  {
    a(CashSwiperView.SwipeActivationMethod.HOLD);
  }
  
  public final void a(int paramInt)
  {
    av = false;
    aw = 0.0F;
  }
  
  public final void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!mIsVisible) {}
    do
    {
      return;
      if ((paramBoolean1) && (paramBoolean2))
      {
        p();
        ak = true;
      }
    } while ((bgd.b(H)) || (av) || (!ak));
    int i1 = H.getFirstVisiblePosition();
    int i2 = H.getLastVisiblePosition();
    Object localObject3 = (ChatFeedItem)H.getItemAtPosition(i1);
    if (i1 != i2) {}
    for (Object localObject1 = (ChatFeedItem)H.getItemAtPosition(i2); !ze.a((ChatFeedItem)localObject3, (ChatFeedItem)localObject1); localObject1 = null)
    {
      if (!am.b())
      {
        b(0.0F);
        break label696;
      }
      au = paramInt;
      return;
    }
    ao.a = H.getHeight();
    Object localObject4 = H.getChildAt(0);
    Object localObject2;
    label184:
    label213:
    ChatFeedItem localChatFeedItem;
    View localView;
    label259:
    label271:
    int i6;
    float f2;
    float f1;
    if (i1 != i2)
    {
      localObject2 = H.getChildAt(i2 - i1);
      if (paramInt - au <= 0) {
        break label731;
      }
      localObject1 = new ChatMediaExpansionCalculator.a((ChatFeedItem)localObject3, (ChatFeedItem)localObject1, (View)localObject4, (View)localObject2, ChatMediaExpansionCalculator.ScrollDirection.UP);
      localObject2 = ao;
      localObject4 = a;
      localChatFeedItem = b;
      localView = c;
      localObject3 = d;
      if (localView == null) {
        break label754;
      }
      i2 = localView.getBottom();
      if (localObject3 == null) {
        break label760;
      }
      i1 = ((View)localObject3).getTop();
      i6 = 0;
      int i5 = 0;
      int i4 = 0;
      f2 = (i2 - a * 0.5F) / (a * 0.125F);
      f1 = (a * 0.5F - i1) / (a * 0.125F);
      if (e != ChatMediaExpansionCalculator.ScrollDirection.UP) {
        break label854;
      }
      i3 = i5;
      if (localObject4 != null)
      {
        i3 = i5;
        if (((ChatFeedItem)localObject4).ak())
        {
          i3 = i5;
          if (i2 <= a * 0.5F + a * 0.125F) {
            i3 = 1;
          }
        }
      }
      i2 = i4;
      if (localChatFeedItem != null)
      {
        i2 = i4;
        if (localChatFeedItem.ak())
        {
          i2 = i4;
          if (i1 <= a * 0.5F) {
            i2 = 1;
          }
        }
      }
      if ((i3 == 0) || (i2 != 0)) {
        break label766;
      }
      f2 = Math.max(f2, 0.0F);
      localObject2 = (agr.c)localView.getTag();
      localObject1 = null;
      f1 = -1.0F;
    }
    for (;;)
    {
      label486:
      localObject3 = new ChatMediaExpansionCalculator.b((agr.c)localObject2, (agr.c)localObject1, f2, f1);
      localObject1 = a;
      localObject2 = b;
      f1 = c;
      f2 = d;
      localObject3 = am;
      i2 = a.getFirstVisiblePosition();
      i3 = a.getLastVisiblePosition();
      i1 = i2;
      label561:
      if (i1 > i3) {
        break label1106;
      }
      localObject4 = (agr.c)a.getChildAt(i1 - i2).getTag();
      if (localObject4 == null) {
        break label1091;
      }
      if ((i1 != i2) && (i1 != i3)) {
        break label1074;
      }
      if (a.ak()) {
        break label1097;
      }
      i1 = 0;
      label624:
      if ((f1 == -1.0F) || (f2 == -1.0F)) {
        break label1112;
      }
      P();
      if ((f1 != -1.0F) && (localObject1 != null)) {
        am.a((agr.c)localObject1, f1);
      }
      if ((f2 != -1.0F) && (localObject2 != null)) {
        label685:
        am.a((agr.c)localObject2, f2);
      }
      label696:
      if (Float.compare(z.getTranslationY(), 0.0F) == 0) {
        break label1158;
      }
      aC.a(e, false);
      break;
      localObject2 = null;
      break label184;
      label731:
      localObject1 = new ChatMediaExpansionCalculator.a((ChatFeedItem)localObject3, (ChatFeedItem)localObject1, (View)localObject4, (View)localObject2, ChatMediaExpansionCalculator.ScrollDirection.DOWN);
      break label213;
      label754:
      i2 = 0;
      break label259;
      label760:
      i1 = 0;
      break label271;
      label766:
      if ((i3 == 0) && (i2 != 0))
      {
        f1 = Math.min(f1, 1.0F);
        localObject1 = (agr.c)((View)localObject3).getTag();
        localObject2 = null;
        f2 = -1.0F;
      }
      else
      {
        if ((i3 == 0) || (i2 == 0)) {
          break label1215;
        }
        f2 = Math.max(f2, 0.0F);
        localObject2 = (agr.c)localView.getTag();
        f1 = Math.min(f1, 1.0F);
        localObject1 = (agr.c)((View)localObject3).getTag();
      }
    }
    label854:
    int i3 = i6;
    if (localObject4 != null)
    {
      i3 = i6;
      if (((ChatFeedItem)localObject4).ak())
      {
        i3 = i6;
        if (i2 >= a * 0.5F) {
          i3 = 1;
        }
      }
    }
    if ((localChatFeedItem != null) && (localChatFeedItem.ak()) && (i1 >= a * 0.5F - a * 0.125F)) {}
    for (i1 = 1;; i1 = 0)
    {
      if ((i3 != 0) && (i1 == 0))
      {
        f2 = Math.min(f2, 1.0F);
        localObject2 = (agr.c)localView.getTag();
        localObject1 = null;
        f1 = -1.0F;
        break label486;
      }
      if ((i3 == 0) && (i1 != 0))
      {
        f1 = Math.max(f1, 0.0F);
        localObject1 = (agr.c)((View)localObject3).getTag();
        localObject2 = null;
        f2 = -1.0F;
        break label486;
      }
      if ((i3 != 0) && (i1 != 0))
      {
        f2 = Math.min(f2, 1.0F);
        localObject2 = (agr.c)localView.getTag();
        f1 = Math.max(f1, 0.0F);
        localObject1 = (agr.c)((View)localObject3).getTag();
        break label486;
        label1074:
        if (!(a instanceof ala))
        {
          i1 = 0;
          break label624;
          label1091:
          i1 = 0;
          break label624;
        }
        label1097:
        i1 += 1;
        break label561;
        label1106:
        i1 = 1;
        break label624;
        label1112:
        if ((f1 != -1.0F) && (localObject1 != null))
        {
          if ((am.b()) || (i1 != 0)) {
            b(1.0F);
          }
          for (;;)
          {
            am.a((agr.c)localObject1, f1);
            break label696;
            label1158:
            break;
            b(f1);
          }
        }
        if ((f2 == -1.0F) || (localObject2 == null)) {
          break;
        }
        if ((am.b()) || (i1 != 0))
        {
          b(1.0F);
          break label685;
        }
        b(f2);
        break label685;
      }
      label1215:
      localObject1 = null;
      localObject2 = null;
      f1 = -1.0F;
      f2 = -1.0F;
      break label486;
    }
  }
  
  public final void a(@chc ajk paramajk) {}
  
  public final void a(@chc aka paramaka, @chc ajk paramajk) {}
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if ((!(paramaka instanceof akl)) && (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED)) {
      V.a()).a.start();
    }
  }
  
  public final void a(@chc alc paramalc)
  {
    Friend localFriend = f;
    if (ayg.a(paramalc))
    {
      if (localFriend == null) {
        break label85;
      }
      String str = localFriend.l();
      if ((!TextUtils.equals(akr.l(), str)) || (!paramalc.k().contains(localFriend.l()))) {
        break label85;
      }
    }
    label85:
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 != 0) && (!paramalc.x()) && (paramalc.e())) {
        af.a(e, paramalc, null);
      }
      return;
    }
  }
  
  public final void a(NetworkInfo paramNetworkInfo)
  {
    String str = "❓";
    if ((paramNetworkInfo == null) || (!paramNetworkInfo.isConnected())) {
      paramNetworkInfo = "🚫";
    }
    for (;;)
    {
      C.setText(paramNetworkInfo);
      return;
      switch (paramNetworkInfo.getType())
      {
      default: 
        paramNetworkInfo = str;
        break;
      case 0: 
        paramNetworkInfo = "📶";
        break;
      case 1: 
        paramNetworkInfo = "✅";
      }
    }
  }
  
  public final void a(View paramView, int paramInt, boolean paramBoolean) {}
  
  public final void a(LoadConversationPageTask.TaskStatus paramTaskStatus)
  {
    ViewGroup.LayoutParams localLayoutParams = Q.getLayoutParams();
    if (localLayoutParams == null) {
      return;
    }
    switch (22.a[paramTaskStatus.ordinal()])
    {
    default: 
      return;
    case 1: 
      height = -2;
      Q.setLayoutParams(localLayoutParams);
      Q.setVisibility(0);
      R.setVisibility(0);
      S.setVisibility(4);
      return;
    case 2: 
      height = -2;
      Q.setLayoutParams(localLayoutParams);
      Q.setVisibility(0);
      R.setVisibility(4);
      S.setVisibility(0);
      return;
    }
    height = 1;
    Q.setLayoutParams(localLayoutParams);
    Q.setVisibility(8);
  }
  
  @awj
  public final void a(boolean paramBoolean)
  {
    akp localakp = akp.g();
    if ((localakp == null) || (TextUtils.isEmpty(c))) {}
    while ((f != null) && (TextUtils.equals(f.l(), c))) {
      return;
    }
    String str = c;
    a(auk.b(c, localakp), paramBoolean);
    b(0.0F);
  }
  
  public final boolean a(View paramView, float paramFloat)
  {
    boolean bool = true;
    if (paramView == null) {
      bool = false;
    }
    int i1;
    do
    {
      return bool;
      i1 = b(null);
    } while ((Math.abs(paramFloat) >= i1) && (a(paramView) >= i1));
    if ((Math.abs(paramFloat) >= i1) && (a(paramView) < i1))
    {
      a(i1);
      return true;
    }
    a(paramFloat);
    return true;
  }
  
  public final int b(@chd View paramView)
  {
    paramView = getActivity();
    if (paramView == null) {
      return 0;
    }
    return (int)awf.a(51.0F, paramView);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void b(boolean paramBoolean)
  {
    if (aH != null)
    {
      if (!paramBoolean) {
        break label21;
      }
      aH.b();
    }
    label21:
    while (!H.b) {
      return;
    }
    aH.a();
  }
  
  public final void c(View paramView)
  {
    paramView = (agr.c)paramView.getTag();
    if ((aH == null) || (!TextUtils.equals(aH.h(), a.d()))) {
      aH = ((agv)aI.get(a.d()));
    }
    if ((a instanceof ChatMedia))
    {
      P();
      am.a(paramView, 1.0F);
    }
    if (aH != null)
    {
      if ((aH instanceof agu)) {
        ((agu)aH).a(this);
      }
      aH.a();
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    int i2 = 8;
    Object localObject = x;
    if (paramBoolean)
    {
      i1 = 8;
      ((View)localObject).setVisibility(i1);
      localObject = H;
      if (!paramBoolean) {
        break label46;
      }
    }
    label46:
    for (int i1 = i2;; i1 = 0)
    {
      ((LockingAboveTheFoldListView)localObject).setVisibility(i1);
      return;
      i1 = 0;
      break;
    }
  }
  
  public final void d()
  {
    aB = true;
  }
  
  public final void d(@chc aka paramaka) {}
  
  public final void d(@chc View paramView)
  {
    agr.c localc;
    boolean bool3;
    boolean bool2;
    long l1;
    final Object localObject1;
    label160:
    Object localObject2;
    if ((e != null) && (e.mAmIPresent))
    {
      localc = (agr.c)paramView.getTag();
      bool3 = false;
      bool2 = false;
      l1 = System.currentTimeMillis();
      if ((a instanceof akw))
      {
        localObject1 = (akw)a;
        if (!mRecipients.contains(e.mMyUsername)) {
          break label800;
        }
        long l2 = ((akw)localObject1).t();
        if (l2 > e.mLastSeqNumOfTheirChatIDisplayed)
        {
          bool2 = zf.c(e, l2);
          l1 = ((akw)localObject1).B();
          bool1 = false;
          bool3 = bool1;
          if (bool2)
          {
            if (l1 <= 0L) {
              break label616;
            }
            localObject1 = e;
            ag.postDelayed(new Runnable()
            {
              public final void run()
              {
                ChatFragment.L(ChatFragment.this);
                if (zf.a(localObject1))
                {
                  ChatFragment.L(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), bju.a.RELEASE);
                  ChatFragment.f(ChatFragment.this).r();
                }
              }
            }, l1);
            localObject1 = ad;
            localObject2 = e;
            l1 = mLastSeqNumOfTheirChatIDisplayed;
            l2 = mLastSeqNumOfTheirChatIReleased;
            long l3 = mMyLastSeqNum;
            long l4 = mLastTimestampOfSentSnapReadReceiptIReleased;
            long l5 = mLastTimestampOfReceivedSnapReadReceiptIReleased;
            bool3 = bool1;
            if (l1 > l2)
            {
              localObject3 = zf.a((ChatConversation)localObject2, Long.valueOf(l3), Long.valueOf(l1));
              Map localMap = zf.a((ChatConversation)localObject2, Long.valueOf(l5), Long.valueOf(l4));
              b.a((ChatConversation)localObject2, (Map)localObject3, localMap, bju.a.DISPLAY);
              bool3 = bool1;
            }
          }
          if (bool3)
          {
            ad.a(e, bju.a.RELEASE);
            e.r();
          }
          if ((agv)aI.get(a.d()) != null) {
            break label670;
          }
          localObject2 = aG;
          localObject1 = a;
          if (!(localObject1 instanceof alc)) {
            break label789;
          }
          Object localObject3 = (alc)localObject1;
          localObject1 = (agr.c)paramView.getTag();
          if (!((alc)localObject3).X()) {
            break label744;
          }
          localObject2 = a;
          if (a != null) {
            break label627;
          }
          throw new IllegalStateException("Discover deep link controller not initialized!");
        }
        if (!((akw)localObject1).g(l1)) {
          break label800;
        }
      }
    }
    label616:
    label627:
    label670:
    label744:
    label789:
    label795:
    label800:
    for (boolean bool1 = true;; bool1 = false)
    {
      bool2 = false;
      l1 = 0L;
      break;
      if ((a instanceof ake))
      {
        localObject1 = (ake)a;
        bool1 = bool2;
        if (((ake)localObject1).l())
        {
          l1 = ((ake)localObject1).U();
          bool1 = bool2;
          if (l1 > e.mLastTimestampOfSentSnapReadReceiptIReleased) {
            bool1 = zf.a(e, l1);
          }
        }
        l1 = 0L;
        bool2 = false;
        break;
      }
      if ((a instanceof aka))
      {
        localObject1 = (aka)a;
        bool1 = bool3;
        if (((aka)localObject1).A())
        {
          l1 = ((aka)localObject1).U();
          bool1 = bool3;
          if (l1 > e.mLastTimestampOfReceivedSnapReadReceiptIReleased) {
            bool1 = zf.b(e, l1);
          }
        }
        l1 = 0L;
        bool2 = false;
        break;
      }
      if ((a instanceof CashFeedItem))
      {
        localObject1 = (CashFeedItem)a;
        if (!((CashFeedItem)localObject1).i()) {
          ad.a(e, (CashFeedItem)localObject1);
        }
      }
      bool1 = false;
      l1 = 0L;
      bool2 = false;
      break;
      bool1 = zf.a(e);
      break label160;
      localObject1 = new agt((agr.c)localObject1, a);
      if (localObject1 != null) {
        aI.put(a.d(), localObject1);
      }
      if (bgd.b(H))
      {
        localObject1 = new Rect();
        paramView.getHitRect((Rect)localObject1);
        paramView = new Rect();
        z.getHitRect(paramView);
        if ((!Rect.intersects((Rect)localObject1, paramView)) && (!paramView.contains((Rect)localObject1))) {
          break label795;
        }
      }
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          H.b();
        }
        return;
        localObject2 = a;
        if (a == null) {
          throw new IllegalStateException("Discover deep link controller not initialized!");
        }
        localObject1 = new agu((agr.c)localObject1, a);
        break;
        localObject1 = null;
        break;
      }
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    View localView = z;
    if (paramBoolean) {}
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      return;
    }
  }
  
  protected final void e()
  {
    nw.d();
    ab.a("FIRST_MEDIA_OPENED");
    bbo.a().a(new bfk(TitleBarManager.Visibility.VISIBLE));
    d.a(this);
    if (ReleaseManager.f())
    {
      a(w.b());
      w.a(this);
    }
    if (e != null) {
      p.c(e);
    }
    a(false);
    super.e();
    FragmentActivity localFragmentActivity = getActivity();
    g(false);
    al = false;
    h(true);
    bbo.a().a(new bbl(true));
    localFragmentActivity.setVolumeControlStream(3);
    if (((localFragmentActivity instanceof LandingPageActivity)) && (akp.g() != null) && (r.b()))
    {
      localObject1 = r;
      if (mRecentStoryReplyEvent != null) {
        break label254;
      }
    }
    label254:
    for (final Object localObject1 = null;; localObject1 = auk.b(mRecentStoryReplyEvent.friendUsername, (akp)mUserProvider.get()))
    {
      a((Friend)localObject1, true);
      if ((f != null) && (TextUtils.isEmpty(B.getText()))) {
        B.setText(f.g());
      }
      bbo.a().a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.HIGH));
      I.c.a = true;
      if ((f != null) && (e != null)) {
        break;
      }
      return;
    }
    B.setText(f.g());
    localObject1 = e.mTheirUsername;
    e.mIsUserInConversation = true;
    if (T < 0L)
    {
      T = SystemClock.elapsedRealtime();
      AnalyticsEvents.j();
    }
    C();
    e.b(true);
    if (R())
    {
      G();
      ((StreamView)g.a()).a(e);
      H.setLockingEnabled(true);
      aJ = false;
      O();
      if (!am.b()) {
        ad.a(e, false);
      }
      a(true, false);
      NotificationTable.c(SnapchatApplication.b(), AndroidNotificationManager.Type.CHAT.name(), e.mTheirUsername);
      n = f.l();
      localObject1 = f;
      if (((Friend)localObject1).r() != ScCashResponsePayload.Status.OK) {
        break label646;
      }
    }
    label646:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        ((Friend)localObject1).l();
        localObject2 = new rc(((Friend)localObject1).l());
        ((rc)localObject2).registerCallback(ScCashResponsePayload.class, new ui.b() {});
        ((rc)localObject2).execute();
      }
      L();
      localObject1 = u;
      Object localObject2 = f.l();
      e.remove(localObject2);
      f.remove(localObject2);
      localObject1 = getActivity().getIntent();
      if ((localObject1 != null) && (((Intent)localObject1).hasExtra("chatOrCashFromServerNotification")))
      {
        ((Intent)localObject1).removeExtra("chatOrCashFromServerNotification");
        if ((localFragmentActivity instanceof LandingPageActivity))
        {
          long l1 = q.a(NotificationAnalytics.NotificationDestinationType.CHAT);
          if (l1 != -1L) {
            AnalyticsEvents.a(e.mHasUnreleasedReceivedChats, l1);
          }
        }
      }
      nw.e();
      return;
      a(AdlHelper.PresenceSource.CHAT_GATEWAY);
      break;
    }
  }
  
  public final void e(boolean paramBoolean)
  {
    if ((paramBoolean) && ((g.b()) || (!((StreamView)g.a()).d())))
    {
      if (aH != null) {
        aH.b();
      }
      if (D != null) {
        p();
      }
    }
  }
  
  public final void e_()
  {
    if (mIsVisible) {
      P = true;
    }
    super.e_();
  }
  
  protected final void f()
  {
    super.f();
    d.b(this);
    if ((K) && (!aB))
    {
      ??? = (CashSwiperView)U.a();
      ((CashSwiperView)???).setVisibility(8);
      ((CashSwiperView)???).a();
      ((CashSwiperView)???).setEnabled(false);
      b.v();
      ((CashSwiperView)???).c();
      ??? = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
      ((SharedPreferences.Editor)???).putString("RESUMING_FROM_SWIPE_MESSAGE", getResources().getString(2131493516, new Object[] { auk.e(e.mTheirUsername, akp.g()) }));
      ((SharedPreferences.Editor)???).apply();
    }
    if (D != null) {
      p();
    }
    if (W) {
      bbo.a().a(new bbl(false));
    }
    if (aH != null)
    {
      aH.c();
      aH = null;
    }
    ??? = aI.values().iterator();
    while (((Iterator)???).hasNext()) {
      ((agv)((Iterator)???).next()).c();
    }
    aI.clear();
    if (g.b()) {
      ((StreamView)g.a()).b(DisconnectReason.L2S_SWIPE_OUT);
    }
    if (e != null)
    {
      e.b(false);
      if (!R()) {
        break label634;
      }
      a(AdlHelper.PresenceSource.ADDLIVE);
    }
    for (;;)
    {
      e.e(false);
      ag.removeCallbacksAndMessages(null);
      am.a();
      ael localael;
      if ((P) || (aA) || (aB))
      {
        ??? = e.mTheirUsername;
        ad.a(e, true);
        I.c.a = false;
        bbo.a().a(new bdd("ChatFragment"));
        B();
        aoq.a().b();
        H.setLockingEnabled(false);
        H.a();
        ak = false;
        if ((!aA) && (!aB)) {
          E();
        }
        if ((!P) && (!aA) && (!aB))
        {
          if ((e != null) && (e.mIsStub)) {
            ae.b(e.mId, true);
          }
          H.c();
          b(0.0F);
          bbo.a().a(new bbn());
          H.setIsActive(false);
          e = null;
          f = null;
          aE = null;
          J = false;
        }
        apx.a(false);
        ac.a();
        n = null;
        localael = v;
      }
      synchronized (i)
      {
        j.clear();
        k.clear();
        aem localaem = c;
        synchronized (a)
        {
          b.clear();
          c.clear();
          l.clear();
          n = false;
          if (ReleaseManager.f()) {
            w.b(this);
          }
          return;
          label634:
          a(AdlHelper.PresenceSource.CHAT_GATEWAY);
          continue;
          ??? = e.mTheirUsername;
          avr.b();
          ad.a(e, bju.a.DELETE);
          e.s();
          e.mIsUserInConversation = false;
          o();
        }
      }
    }
  }
  
  public final boolean g()
  {
    if (K)
    {
      ((CashSwiperView)U.a()).b();
      return true;
    }
    return false;
  }
  
  protected final alv h()
  {
    return new alv(new String[] { "CHAT" });
  }
  
  public final void i()
  {
    aB = false;
  }
  
  public final amt k()
  {
    new amt()
    {
      public final boolean a(amu.a paramAnonymousa)
      {
        if (ChatFragment.n(ChatFragment.this).b()) {}
        do
        {
          return false;
          if ((amu.h.contains(c)) && (!TextUtils.equals(f.l(), a))) {
            return true;
          }
        } while (!ChatFragment.A().contains(c));
        return true;
      }
      
      public final boolean b(amu.a paramAnonymousa)
      {
        return (amu.h.contains(c)) && (f != null) && (TextUtils.equals(f.l(), a));
      }
    };
  }
  
  @bpi
  public void onCancelInChatSnapEvent(bbs parambbs)
  {
    aA = false;
    if (mShouldDisplayHereTooltip) {
      aC.setCancelInChatSnapTime(System.currentTimeMillis());
    }
  }
  
  @bpi
  public void onCancelQuickSnapEvent(bbt parambbt)
  {
    aA = false;
  }
  
  @bpi
  public void onCashRainEvent(bbv parambbv)
  {
    if (!mConversation.equals(e)) {
      return;
    }
    a((int)mCount, mCreatedAt);
    aJ = true;
  }
  
  @bpi
  public void onChatLinkClickedEvent(bby parambby)
  {
    final Object localObject = snapchatUrlSpan;
    final alj localalj = mMessage;
    parambby = new AlertDialog.Builder(getActivity());
    String str1;
    if (mType == UrlType.TEL)
    {
      i1 = 2131492998;
      str1 = getString(i1);
      if (!localalj.g()) {
        break label130;
      }
    }
    label130:
    for (int i1 = 2131493001;; i1 = 2131493000)
    {
      String str2 = getString(i1);
      String str3 = getString(2131492952);
      localObject = new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
          case 0: 
          case 1: 
            do
            {
              return;
              paramAnonymousDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse(localObject.getURL()));
              startActivity(paramAnonymousDialogInterface);
              return;
            } while ((ChatFragment.f(ChatFragment.this) == null) || (!localalj.e()));
            if ((localalj instanceof ChatMedia)) {}
            for (paramAnonymousDialogInterface = ChatFragment.x();; paramAnonymousDialogInterface = null)
            {
              ChatFragment.x(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), localalj, paramAnonymousDialogInterface);
              ChatFragment.t(ChatFragment.this).notifyDataSetChanged();
              return;
            }
          }
          paramAnonymousDialogInterface.dismiss();
        }
      };
      parambby.setItems(new CharSequence[] { str1, str2, str3 }, (DialogInterface.OnClickListener)localObject);
      parambby.create().show();
      return;
      i1 = 2131492999;
      break;
    }
  }
  
  @bpi
  public void onChatSwipeStartedEvent(bbz parambbz)
  {
    if (friend == null) {
      throw new NullPointerException();
    }
    a(friend, true);
  }
  
  @bpi
  public void onChatUpdatedEvent(bca parambca)
  {
    if (e == null) {}
    do
    {
      do
      {
        return;
      } while (!TextUtils.equals(mId, e.mId));
      O();
      if (mMessageId == null) {
        break;
      }
      b(mMessageId);
    } while ((!mScrollToBottom) || (H.b));
    H.c();
    Q();
    return;
    if ((mScrollToBottom) && (!H.b)) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool, false);
      return;
    }
  }
  
  @bpi
  public void onClearChatTextEvent(bcb parambcb)
  {
    if (!F()) {
      D.setText("");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    ab = DictionaryEasyMetric.a();
    mFragmentLayout = paramLayoutInflater.inflate(2130968617, paramViewGroup, false);
    paramLayoutInflater = getResources();
    ap = ((int)paramLayoutInflater.getDimension(2131296259));
    aq = ((int)paramLayoutInflater.getDimension(2131296281));
    as = ((int)paramLayoutInflater.getDimension(2131296282));
    ar = ((int)paramLayoutInflater.getDimension(2131296290));
    aC = ((HereTooltip)c(2131362074));
    aD = ((CashTooltip)c(2131362075));
    ag = new Handler(Looper.getMainLooper());
    aa = new Handler(Looper.getMainLooper());
    Y = new bhr(mFragmentLayout, 2131362076, 2131362079);
    U = new bhr(mFragmentLayout, 2131362077, 2131362080, new bhr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((CashSwiperView)ChatFragment.b(ChatFragment.this).a()).setListener(ChatFragment.this);
      }
    });
    ax = new GestureDetectorCompat(getActivity(), new a((byte)0));
    ah = new yz(getActivity(), this);
    paramLayoutInflater = (SpyRelativeLayout)mFragmentLayout.findViewById(2131362062);
    paramViewGroup = new SpyRelativeLayout.a()
    {
      public final void a(MotionEvent paramAnonymousMotionEvent)
      {
        if ((!CashUtils.a(f)) || ((g.b()) && (((StreamView)g.a()).e()))) {}
        yz localyz;
        label91:
        label198:
        label203:
        do
        {
          int i;
          do
          {
            return;
            localyz = ChatFragment.c(ChatFragment.this);
            i = paramAnonymousMotionEvent.getActionMasked();
            if ((i == 1) || (i == 3))
            {
              localyz.a();
              return;
            }
            if (i == 2)
            {
              if (paramAnonymousMotionEvent.getPointerCount() > 1)
              {
                i = 0;
                if (i < a.length) {
                  if (a[i] != null)
                  {
                    PointF localPointF1 = new PointF(paramAnonymousMotionEvent.getX(i), paramAnonymousMotionEvent.getY(i));
                    PointF localPointF2 = a[i];
                    if ((Math.abs(x - x) <= c) && (Math.abs(y - y) <= c)) {
                      break label198;
                    }
                  }
                }
                for (int j = 1;; j = 0)
                {
                  if (j != 0) {
                    break label203;
                  }
                  i += 1;
                  break label91;
                  break;
                }
              }
              localyz.a();
              return;
            }
          } while ((i != 0) && (i != 5));
          if (a[0] == null) {
            a[0] = new PointF(paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY());
          }
          if ((paramAnonymousMotionEvent.getPointerCount() > 1) && (a[1] == null)) {
            a[1] = new PointF(paramAnonymousMotionEvent.getX(1), paramAnonymousMotionEvent.getY(1));
          }
        } while ((b.hasMessages(5)) || (paramAnonymousMotionEvent.getPointerCount() < 2) || (d.u_()));
        b.postDelayed(new yz.1(localyz), ViewConfiguration.getLongPressTimeout());
        b.sendEmptyMessage(5);
      }
    };
    a.add(paramViewGroup);
    c(2131362064).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    g = new bhr(mFragmentLayout, 2131362069, 2131362081);
    x = c(2131361822);
    y = c(2131362067);
    z = c(2131362070);
    A = c(2131362073);
    N = new ArrayList();
    B = ((TextView)c(2131362065));
    C = ((TextView)c(2131362066));
    D = ((CursorCallbackEditText)c(2131362071));
    E = Float.MIN_VALUE;
    F = Float.MIN_VALUE;
    D.setInputType(49153);
    D.setHorizontallyScrolling(false);
    D.setMaxLines(8);
    D.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, @chd KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt == 4) || ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.getKeyCode() == 66)))
        {
          ChatFragment.d(ChatFragment.this);
          return true;
        }
        return false;
      }
    });
    D.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          ChatFragment.e(ChatFragment.this).setIsActive(true);
        }
        if (ChatFragment.f(ChatFragment.this) != null) {
          ChatFragment.f(ChatFragment.this).e(false);
        }
      }
    });
    D.addTextChangedListener(new TextWatcher()
    {
      private boolean b;
      private boolean c;
      
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (c) {
          return;
        }
        int i;
        if (b)
        {
          i = Selection.getSelectionStart(paramAnonymousEditable);
          int j = Selection.getSelectionEnd(paramAnonymousEditable);
          if ((i == j) && (ChatFragment.h(ChatFragment.this)))
          {
            localObject = (ImageSpan[])paramAnonymousEditable.getSpans(i, j, ImageSpan.class);
            if (localObject.length > 0)
            {
              c = true;
              paramAnonymousEditable.replace(paramAnonymousEditable.getSpanStart(localObject[0]), paramAnonymousEditable.getSpanEnd(localObject[0]), "");
              paramAnonymousEditable.removeSpan(localObject[0]);
              c = false;
              if (!ChatFragment.h(ChatFragment.this)) {
                ChatFragment.a(ChatFragment.this, null);
              }
            }
          }
        }
        boolean bool = ChatFragment.a(ChatFragment.this);
        Object localObject = ChatFragment.i(ChatFragment.this).getLayout();
        if (localObject != null)
        {
          if (ChatFragment.j(ChatFragment.this) == Float.MIN_VALUE) {
            ChatFragment.a(ChatFragment.this, ChatFragment.g(ChatFragment.this).getLeft());
          }
          if (ChatFragment.k(ChatFragment.this) == Float.MIN_VALUE) {
            ChatFragment.b(ChatFragment.this, ChatFragment.i(ChatFragment.this).getPaddingLeft());
          }
          float f1 = ChatFragment.k(ChatFragment.this);
          float f2 = ((Layout)localObject).getLineWidth(0);
          if (((Layout)localObject).getLineCount() > 1)
          {
            i = 1;
            if ((i == 0) && (f1 + f2 < ChatFragment.j(ChatFragment.this))) {
              break label462;
            }
            i = 1;
          }
        }
        for (;;)
        {
          label274:
          if (i != 0)
          {
            ChatFragment.g(ChatFragment.this).setVisibility(8);
            ChatFragment.i(ChatFragment.this).setPadding(ChatFragment.i(ChatFragment.this).getPaddingLeft(), ChatFragment.i(ChatFragment.this).getPaddingTop(), getResources().getDimensionPixelOffset(2131296296), ChatFragment.i(ChatFragment.this).getPaddingBottom());
            label343:
            if (ChatFragment.f(ChatFragment.this) != null)
            {
              localObject = ChatFragment.l(ChatFragment.this);
              ChatConversation localChatConversation = ChatFragment.f(ChatFragment.this);
              if ((i != 0) || (bool)) {
                break label534;
              }
              bool = true;
              label384:
              ((HereTooltip)localObject).a(localChatConversation, bool);
            }
            if (ChatFragment.f(ChatFragment.this) == null) {
              break;
            }
            if (fmMessagingAuthToken == null) {
              break label540;
            }
          }
          label462:
          label534:
          label540:
          for (i = 1;; i = 0)
          {
            if (i == 0) {
              break label544;
            }
            if (paramAnonymousEditable.length() != 0) {
              break label546;
            }
            ChatFragment.f(ChatFragment.this).e(false);
            ChatFragment.g(ChatFragment.this).setIsTyping(false);
            return;
            i = 0;
            break;
            i = 0;
            break label274;
            ChatFragment.g(ChatFragment.this).setVisibility(0);
            ChatFragment.i(ChatFragment.this).setPadding(ChatFragment.i(ChatFragment.this).getPaddingLeft(), ChatFragment.i(ChatFragment.this).getPaddingTop(), getResources().getDimensionPixelOffset(2131296278), ChatFragment.i(ChatFragment.this).getPaddingBottom());
            break label343;
            bool = false;
            break label384;
          }
          label544:
          break;
          label546:
          ChatFragment.f(ChatFragment.this).e(true);
          return;
          i = 0;
        }
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        boolean bool = false;
        if (paramAnonymousInt3 <= 2)
        {
          paramAnonymousCharSequence = paramAnonymousCharSequence.subSequence(paramAnonymousInt1, paramAnonymousInt1 + paramAnonymousInt3).toString();
          ChatFragment.g(ChatFragment.this).setIsEmoji(ayh.a(paramAnonymousCharSequence, false));
        }
        for (;;)
        {
          if (paramAnonymousInt3 < paramAnonymousInt2) {
            bool = true;
          }
          b = bool;
          ChatFragment.g(ChatFragment.this).setIsTyping(true);
          return;
          ChatFragment.g(ChatFragment.this).setIsEmoji(false);
        }
      }
    });
    paramLayoutInflater = D;
    paramViewGroup = new CursorCallbackEditText.a()
    {
      public final void a()
      {
        ChatFragment.a(ChatFragment.this);
      }
    };
    if (a == null) {
      a = new ArrayList();
    }
    a.add(paramViewGroup);
    D.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0)
        {
          ChatFragment.m(ChatFragment.this);
          ChatFragment.e(ChatFragment.this).c();
          new Handler().post(new Runnable()
          {
            public final void run()
            {
              ChatFragment.c(ChatFragment.this, 0.0F);
              ChatFragment.n(ChatFragment.this).a();
            }
          });
        }
        return false;
      }
    });
    G = ((ChatCameraButton)c(2131362072));
    G.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(final View paramAnonymousView)
      {
        if (ChatFragment.g(ChatFragment.this).getIsEmoji()) {
          ChatFragment.d(ChatFragment.this);
        }
        do
        {
          return;
          if (ChatFragment.g(ChatFragment.this).getCashSwipeDetected())
          {
            AnalyticsEvents.Q();
            ChatFragment.a(ChatFragment.this, CashSwiperView.SwipeActivationMethod.DOLLARS);
            return;
          }
          if (!ChatFragment.g(ChatFragment.this).getCashtagDetected()) {
            break;
          }
        } while (ChatFragment.f(ChatFragment.this) == null);
        AnalyticsEvents.Q();
        ChatFragment.o(ChatFragment.this);
        ChatFragment.a(ChatFragment.this, ChatFragment.i(ChatFragment.this).hasFocus());
        ChatFragment.p(ChatFragment.this).a();
        paramAnonymousView = h;
        final int i = yq.a(ChatFragment.i(ChatFragment.this));
        paramAnonymousView = h;
        int j = yq.a(ChatFragment.i(ChatFragment.this).getEditableText());
        final int k = ChatFragment.i(ChatFragment.this).getSelectionEnd();
        paramAnonymousView = ChatFragment.this.i;
        paramAnonymousView = yw.a(ChatFragment.f(ChatFragment.this), j + i, false);
        ChatFragment.this.i.a(paramAnonymousView, new yw.a()
        {
          public final void a()
          {
            ChatFragment.a(ChatFragment.this, paramAnonymousView);
            bhp.a(new Runnable()
            {
              public final void run()
              {
                yq localyq = h;
                yq.a(ChatFragment.i(ChatFragment.this), b);
                ChatFragment.q(ChatFragment.this);
                AnalyticsEvents.t(CashUtils.a(c));
              }
            });
          }
          
          public final void b()
          {
            ChatFragment.q(ChatFragment.this);
          }
        });
        return;
        ChatFragment.r(ChatFragment.this);
      }
    });
    G.setOnLongClickListener(new View.OnLongClickListener()
    {
      public final boolean onLongClick(View paramAnonymousView)
      {
        ChatFragment.s(ChatFragment.this);
        return true;
      }
    });
    ac = new ayd();
    H = ((LockingAboveTheFoldListView)c(2131362063));
    H.setInterface(this);
    H.setTranscriptMode(1);
    H.setDivider(null);
    H.setDividerHeight(0);
    H.setRecyclerListener(new AbsListView.RecyclerListener()
    {
      public final void onMovedToScrapHeap(View paramAnonymousView)
      {
        paramAnonymousView.getTag();
        awf.b(paramAnonymousView);
      }
    });
    H.setLockingEnabled(true);
    H.setScrollViewCallbacks(this);
    H.setMinimumFooterHeight(aq);
    H.setShouldSubtractStatusBarHeightFromFooter(true);
    am = new ze(H);
    paramLayoutInflater = (LayoutInflater)getActivity().getSystemService("layout_inflater");
    an = paramLayoutInflater.inflate(2130968621, null);
    H.addHeaderView(an, null, false);
    Q = paramLayoutInflater.inflate(2130968623, null);
    Q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((!ChatFragment.t(ChatFragment.this).isEmpty()) && (!ChatFragment.u(ChatFragment.this).isEmpty()) && (ChatFragment.f(ChatFragment.this) != null))
        {
          paramAnonymousView = ChatFragment.v(ChatFragment.this).a(fmId, true);
          a(paramAnonymousView);
        }
      }
    });
    R = Q.findViewById(2131362083);
    S = Q.findViewById(2131362085);
    H.addHeaderView(Q, null, false);
    N.add(new akz(null));
    O = 0;
    I = new agr(getActivity(), N, this, this);
    H.setAdapter(I);
    I.b = aI;
    H.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (ChatFragment.f(ChatFragment.this) == null) {}
        ChatFeedItem localChatFeedItem;
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                paramAnonymousInt -= ChatFragment.e(ChatFragment.this).getHeaderViewsCount();
              } while (paramAnonymousInt >= ChatFragment.u(ChatFragment.this).size());
              localChatFeedItem = (ChatFeedItem)ChatFragment.u(ChatFragment.this).get(paramAnonymousInt);
            } while ((localChatFeedItem.d() == null) || ((localChatFeedItem instanceof Snap)) || ((localChatFeedItem instanceof alb)));
            if ((!localChatFeedItem.P()) || (!localChatFeedItem.R())) {
              break;
            }
            if ((localChatFeedItem instanceof alc))
            {
              new zo().a((alc)localChatFeedItem, ChatFragment.f(ChatFragment.this));
              return;
            }
            if ((localChatFeedItem instanceof akw))
            {
              ChatFragment.w(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), (akw)localChatFeedItem, true, true);
              return;
            }
          } while (!(localChatFeedItem instanceof CashFeedItem));
          paramAnonymousAdapterView = (CashFeedItem)localChatFeedItem;
          AnalyticsEvents.n(mCashTransaction.a());
          ChatFragment.o(ChatFragment.this);
          i.a(ChatFragment.f(ChatFragment.this), paramAnonymousAdapterView, new yw.b()
          {
            public final void a()
            {
              ChatFragment.q(ChatFragment.this);
            }
            
            public final void b()
            {
              ChatFragment.q(ChatFragment.this);
            }
          });
          return;
          if (((localChatFeedItem instanceof ChatMedia)) && (paramAnonymousView != null))
          {
            paramAnonymousAdapterView = paramAnonymousView.findViewById(2131362105);
            if ((paramAnonymousAdapterView instanceof ImageResourceView))
            {
              paramAnonymousAdapterView = (ImageResourceView)paramAnonymousAdapterView;
              if (paramAnonymousAdapterView.b())
              {
                paramAnonymousAdapterView.a();
                return;
              }
            }
          }
        } while ((!(localChatFeedItem instanceof alj)) || (!((alj)localChatFeedItem).e()));
        if ((localChatFeedItem instanceof ChatMedia)) {}
        for (paramAnonymousAdapterView = ChatFragment.x();; paramAnonymousAdapterView = null)
        {
          ChatFragment.x(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), (alj)localChatFeedItem, paramAnonymousAdapterView);
          ChatFragment.a(ChatFragment.this, localChatFeedItem.d());
          return;
        }
      }
    });
    paramLayoutInflater = new SwipeableListItemTouchListener(H, SwipeableListItemTouchListener.SwipeDirection.RIGHT, this)
    {
      private long i;
      
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          ymImpl.onTouchEvent(paramAnonymousMotionEvent);
          return super.onTouch(paramAnonymousView, paramAnonymousMotionEvent);
          i = SystemClock.uptimeMillis();
          Object localObject1 = ChatFragment.this;
          Object localObject2 = ((ChatFragment)localObject1).a(paramAnonymousMotionEvent);
          if ((localObject2 instanceof Snap))
          {
            avn localavn = avn.d();
            localObject2 = (Snap)localObject2;
            localObject1 = ((ChatFragment)localObject1).getActivity();
            if ((!((Snap)localObject2).f()) && (((Snap)localObject2).an()))
            {
              mReplaySnapRunnable = new avn.d(localavn, (aka)localObject2, null, (Context)localObject1);
              mOpenSnapHandler.postDelayed(mReplaySnapRunnable, 191L);
              mLongPressStarted = true;
              continue;
              if (SystemClock.uptimeMillis() - i <= 190L)
              {
                localObject1 = ChatFragment.this;
                localObject2 = ((ChatFragment)localObject1).a(paramAnonymousMotionEvent);
                if ((localObject2 instanceof Snap))
                {
                  localavn = avn.d();
                  localObject2 = (Snap)localObject2;
                  localObject1 = e;
                  if (((Snap)localObject2).f()) {
                    if ((localObject2 instanceof aka))
                    {
                      mSnapViewEventAnalytics.a(SnapViewEventAnalytics.SnapViewEventSourceType.CHAT);
                      localavn.a((aka)localObject2, new ajm(false), "chat");
                    }
                    else if ((localObject2 instanceof ake))
                    {
                      zm.a((ake)localObject2, (ChatConversation)localObject1);
                      bbo.a().a(new bca(mId, ((Snap)localObject2).d()));
                      bbo.a().a(new beb());
                      nz.a("chat");
                    }
                  }
                }
              }
            }
          }
        }
      }
    };
    H.setOnTouchListener(paramLayoutInflater);
    paramViewGroup = new ArrayList(4);
    paramViewGroup.add(paramLayoutInflater.a());
    paramViewGroup.add(new b((byte)0));
    paramViewGroup.add(new c((byte)0));
    paramViewGroup.add(new ari(s, "Chat"));
    ai = new ark(paramViewGroup);
    H.setOnScrollListener(ai);
    aj = ((ViewStub)getActivity().findViewById(2131362376));
    V = new bhr(mFragmentLayout, 2131362078, 2131362278);
    try
    {
      d = ((ash)getActivity()).l();
      if (paramBundle != null)
      {
        paramLayoutInflater = paramBundle.getString("friend_username");
        if (!TextUtils.isEmpty(paramLayoutInflater)) {
          c = paramLayoutInflater;
        }
        paramLayoutInflater = (HashMap)paramBundle.getSerializable("message_drafts");
        ay.putAll(paramLayoutInflater);
        paramLayoutInflater = (HashMap)paramBundle.getSerializable("cashtag_positions");
        az.putAll(paramLayoutInflater);
      }
      paramLayoutInflater = ((WindowManager)getActivity().getSystemService("window")).getDefaultDisplay();
      paramViewGroup = new Point();
      paramLayoutInflater.getSize(paramViewGroup);
      am.b = x;
      aF = true;
      a(true);
      nw.e();
      return mFragmentLayout;
    }
    catch (ClassCastException paramLayoutInflater)
    {
      throw new ClassCastException(getActivity().toString() + " must implement SnapViewProvider");
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    ChatCameraButton localChatCameraButton = G;
    if (a != null) {
      a.release();
    }
  }
  
  @bpi
  public void onEndpointsRefreshedEvent(bgr.a parama)
  {
    D();
  }
  
  @bpi
  public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent paramSnapMessageFeedRefreshedEvent)
  {
    I.notifyDataSetChanged();
  }
  
  @bpi
  public void onFeedTimerChangeEvent(bcl parambcl)
  {
    if (!TextUtils.equals(c, mFriendUsername)) {
      return;
    }
    I.notifyDataSetChanged();
  }
  
  @bpi
  public void onLoadConversationPageTaskEvent(bde parambde)
  {
    a(mTaskStatus);
  }
  
  @bpi
  public void onLoadSnapMediaEvent(LoadSnapMediaEvent paramLoadSnapMediaEvent)
  {
    I.notifyDataSetChanged();
  }
  
  public void onPause()
  {
    super.onPause();
    Object localObject2;
    Object localObject1;
    if ((mIsVisible) && (e != null))
    {
      P = true;
      localObject2 = getActivity();
      localObject1 = e.o();
      if ((localObject1 == null) || (((List)localObject1).size() == 0))
      {
        i1 = 0;
        if (i1 == 0) {
          break label229;
        }
        localObject1 = getActivity().getIntent();
        ((Intent)localObject1).putExtra("goToFragmentNum", 0);
        getActivity().setIntent((Intent)localObject1);
      }
    }
    else
    {
      label87:
      D();
      D.clearFocus();
      B();
      aoq.a().b();
      E();
      return;
    }
    label143:
    Object localObject3;
    if (((KeyguardManager)((Context)localObject2).getSystemService("keyguard")).inKeyguardRestrictedInputMode())
    {
      localObject2 = akr.l();
      i1 = ((List)localObject1).size();
      if (i1 <= 0) {
        break label421;
      }
      localObject3 = (ChatFeedItem)((List)localObject1).get(i1 - 1);
      if ((((ChatFeedItem)localObject3).j().equals(localObject2)) || (((localObject3 instanceof alj)) && (((alj)localObject3).g()))) {
        break label421;
      }
      if (!(localObject3 instanceof StatefulChatFeedItem)) {}
    }
    label229:
    label421:
    for (int i1 = 0;; i1 = 1)
    {
      if (i1 == 0)
      {
        i1 = 1;
        break;
        i1 -= 1;
        break label143;
      }
      i1 = 0;
      break;
      localObject1 = getActivity();
      localObject2 = I.c;
      ((ahb)localObject2).a(System.currentTimeMillis());
      new StringBuilder("getLatestSeenItemTimestamp - latestItemTimestamp ").append(c.a).append(" lastNotifiedTimestamp ").append(c.b);
      long l1 = c.a;
      localObject2 = (AlarmManager)((Context)localObject1).getSystemService("alarm");
      Object localObject4 = q;
      localObject3 = e.mId;
      localObject4 = ((aph)localObject4).b((Context)localObject1);
      ((Intent)localObject4).putExtra("op_code", 1001);
      ((Intent)localObject4).putExtra("conversationId", (String)localObject3);
      ((Intent)localObject4).putExtra("latestSeenItemTimestamp", l1);
      a = PendingIntent.getService((Context)localObject1, 0, (Intent)localObject4, 268435456);
      b = e.mId;
      ((AlarmManager)localObject2).cancel(a);
      ((AlarmManager)localObject2).set(0, 60000L + System.currentTimeMillis(), a);
      break label87;
    }
  }
  
  @bpi
  public void onPresenceUpdatedEvent(bdp parambdp)
  {
    if ((mIsVisible) && (e != null) && (TextUtils.equals(username, e.i())))
    {
      a(presenceSource);
      if (g.b()) {
        ((StreamView)g.a()).c(videoReceived);
      }
    }
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    P = false;
    I.notifyDataSetChanged();
    if (k)
    {
      k = false;
      f(true);
      b(0.0F);
    }
    nw.e();
    if ((e != null) && (R()))
    {
      G();
      ((StreamView)g.a()).a(e);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (f != null) {
      paramBundle.putString("friend_username", f.l());
    }
    paramBundle.putSerializable("message_drafts", ay);
    paramBundle.putSerializable("cashtag_positions", az);
  }
  
  @bpi
  public void onSecureChatSessionConnectedEvent(bee parambee)
  {
    if (e != null) {
      e.b(mIsVisible);
    }
  }
  
  @bpi
  public void onSnapSelectedForReplayEvent(bep parambep)
  {
    I.notifyDataSetChanged();
  }
  
  @bpi
  public void onSnapViewingEvent(bem parambem)
  {
    if (mBeingViewed) {
      aoq.a().b();
    }
    while (f == null) {
      return;
    }
    C();
    a(false, false);
  }
  
  public final void p()
  {
    awf.a(getActivity(), D);
    g(false);
  }
  
  public final int q()
  {
    return O;
  }
  
  public final void r()
  {
    if (aH != null) {
      aH.b();
    }
  }
  
  public final void u()
  {
    if ((e != null) && (e.mIsRecipientPresent))
    {
      zm localzm = p;
      ChatConversation localChatConversation = e;
      long l1 = ((CashSwiperView)U.a()).getDollarsSwiped();
      long l2 = ((CashSwiperView)U.a()).getFirstSwipeMillis();
      Object localObject = akr.l();
      if (localObject != null)
      {
        localObject = (bia)aty.a(bji.a.CASH_RAIN, (String)localObject, localChatConversation.z(), mMessagingAuthToken);
        ((bia)localObject).b(Long.valueOf(l1));
        ((bia)localObject).a(Long.valueOf(l2));
        localzm.a(localChatConversation, (bil)localObject);
      }
    }
  }
  
  public final boolean u_()
  {
    return K;
  }
  
  public final void v()
  {
    K = false;
    L = null;
    if (!aB) {
      L();
    }
    if (((CashSwiperView)U.a()).getDollarsSwiped() == 0) {
      N();
    }
  }
  
  public final void w()
  {
    if ((((CashSwiperView)U.a()).getDollarsSwiped() == 0) || (e == null)) {
      return;
    }
    if (L == CashSwiperView.SwipeActivationMethod.DOLLARS) {
      D.setText("");
    }
    M();
    new AsyncTask() {}.execute(new Void[0]);
  }
  
  final class a
    extends GestureDetector.SimpleOnGestureListener
  {
    private a() {}
    
    public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if ((paramMotionEvent1 == null) || (paramMotionEvent2 == null) || (paramMotionEvent1.getPointerCount() != 1) || (paramMotionEvent2.getPointerCount() != 1)) {}
      do
      {
        do
        {
          View localView;
          do
          {
            do
            {
              return false;
            } while ((ChatFragment.P(ChatFragment.this).getTranslationY() == 0.0F) && (ChatFragment.Q(ChatFragment.this).getTranslationY() == 0.0F) && (ChatFragment.R(ChatFragment.this).getTranslationY() == 0.0F) && (ChatFragment.S(ChatFragment.this).getTranslationY() == 0.0F));
            i = ChatFragment.e(ChatFragment.this).getLastVisiblePosition();
            localView = ChatFragment.e(ChatFragment.this).getChildAt(ChatFragment.e(ChatFragment.this).getChildCount() - 1);
          } while (localView == null);
          j = localView.getBottom();
        } while ((i != ChatFragment.e(ChatFragment.this).getCount() - 1) || (j > ChatFragment.e(ChatFragment.this).getHeight()));
        paramFloat1 = paramMotionEvent1.getY();
        paramFloat2 = paramMotionEvent2.getY();
      } while (paramFloat2 - paramFloat1 >= 0.0F);
      if (ChatFragment.T(ChatFragment.this) == 0.0F)
      {
        ChatFragment.U(ChatFragment.this);
        ChatFragment.d(ChatFragment.this, paramFloat2);
      }
      paramFloat1 = 1.0F - Math.min((ChatFragment.T(ChatFragment.this) - paramFloat2) / (ChatFragment.e(ChatFragment.this).getHeight() / 16.0F), 1.0F);
      paramMotionEvent2 = ChatFragment.n(ChatFragment.this);
      int j = a.getFirstVisiblePosition();
      int k = a.getLastVisiblePosition();
      int i = j;
      if (i <= k)
      {
        paramMotionEvent1 = (agr.c)a.getChildAt(i - j).getTag();
        if ((paramMotionEvent1 == null) || (a == null) || (!a.ak())) {}
      }
      for (;;)
      {
        if (paramMotionEvent1 != null) {
          ChatFragment.n(ChatFragment.this).a(paramMotionEvent1, paramFloat1);
        }
        ChatFragment.c(ChatFragment.this, paramFloat1);
        return true;
        i += 1;
        break;
        paramMotionEvent1 = null;
      }
    }
  }
  
  final class b
    implements AbsListView.OnScrollListener
  {
    private b() {}
    
    public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      if (paramInt == 0)
      {
        ChatFragment.e(ChatFragment.this).setIsActive(true);
        paramInt = ChatFragment.e(ChatFragment.this).getFirstVisiblePosition();
        int i = ChatFragment.e(ChatFragment.this).getLastVisiblePosition();
        ChatFeedItem localChatFeedItem = (ChatFeedItem)ChatFragment.e(ChatFragment.this).getItemAtPosition(paramInt);
        if (paramInt != i) {}
        for (paramAbsListView = (ChatFeedItem)ChatFragment.e(ChatFragment.this).getItemAtPosition(i);; paramAbsListView = null)
        {
          ChatFragment.n(ChatFragment.this);
          if (((!ze.a(localChatFeedItem, paramAbsListView)) && (!ChatFragment.n(ChatFragment.this).b())) || (bgd.a(ChatFragment.e(ChatFragment.this))) || (bgd.b(ChatFragment.e(ChatFragment.this))))
          {
            ChatFragment.A(ChatFragment.this);
            ChatFragment.n(ChatFragment.this).a();
          }
          return;
        }
      }
      ChatFragment.e(ChatFragment.this).setIsActive(false);
    }
  }
  
  final class c
    implements AbsListView.OnScrollListener
  {
    private c() {}
    
    public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      if (paramInt == 0) {
        ChatFragment.M(ChatFragment.this);
      }
      if ((!ChatFragment.t(ChatFragment.this).isEmpty()) && (paramAbsListView.getFirstVisiblePosition() < ChatFragment.z()) && (!ChatFragment.u(ChatFragment.this).isEmpty()) && (ChatFragment.f(ChatFragment.this) != null))
      {
        paramAbsListView = ChatFragment.N(ChatFragment.this);
        if (mRenderSize >= mMessageCount) {
          break label92;
        }
      }
      label92:
      for (paramInt = 1; paramInt != 0; paramInt = 0)
      {
        ChatFragment.O(ChatFragment.this);
        return;
      }
      paramAbsListView = ChatFragment.v(ChatFragment.this).a(fmId, true);
      a(paramAbsListView);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */