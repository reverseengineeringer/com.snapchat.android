package com.snapchat.android.fragments.chat;

import adl;
import adm;
import afr;
import afr.a;
import afr.c;
import aft;
import afu;
import afu.a;
import afv;
import afw;
import afw.a;
import agb;
import agb.a;
import aio;
import aiq;
import aje;
import aji;
import ajr;
import ajv;
import ajx;
import akb;
import akc;
import ake;
import akf;
import akg;
import akh;
import akj;
import ako;
import ala;
import ald;
import ale;
import alw;
import alx;
import alx.a;
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
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import ant;
import aol;
import apb;
import aqi;
import aql;
import aqn;
import ari;
import asr;
import asu;
import asz;
import ata;
import atm;
import atz;
import aup;
import aut;
import avh;
import avl;
import axf;
import axi;
import axj;
import aza;
import baa;
import bal;
import bam;
import ban;
import bap;
import bar;
import bas;
import bau;
import bax;
import bay;
import baz;
import bba;
import bbl;
import bcd;
import bce;
import bcp;
import bcu;
import bdb;
import bdd;
import bde;
import bdg;
import bdm;
import bdp;
import bel;
import bfd;
import bfr.a;
import bgp;
import bgr;
import bgr.a;
import bha;
import bhl;
import bii.a;
import bit.a;
import boh;
import br;
import cgb;
import cgc;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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
import di;
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
import ma;
import nf;
import ni;
import nj;
import org.apache.commons.lang3.StringUtils;
import qm;
import td;
import ts.b;
import xu;
import xx;
import ya;
import ya.a;
import ya.b;
import yd;
import yd.1;
import yd.a;
import yi;
import yj;
import yl;
import yq;
import ys;
import yu;

@avl
public class ChatFragment
  extends SnapchatFragment
  implements afr.a, afu.a, ald, aqi, br, CashSwiperView.b, LockingAboveTheFoldListView.c<ChatFeedItem>, StreamView.a, SwipeableListItemTouchListener.a, yd.a, yu
{
  public static PendingIntent a;
  private static boolean az;
  public static String b;
  public static String c;
  private static final Set<AndroidNotificationManager.Type> l = di.a(AndroidNotificationManager.Type.ADDFRIEND);
  private static String m;
  private TextView A;
  private CursorCallbackEditText B;
  private float C;
  private float D;
  private ChatCameraButton E;
  private LockingAboveTheFoldListView<ChatFeedItem> F;
  private afr G;
  private boolean H;
  private boolean I;
  private CashSwiperView.SwipeActivationMethod J;
  private boolean K;
  private List<ChatFeedItem> L;
  private int M;
  private boolean N = false;
  private View O;
  private View P;
  private View Q;
  private long R = -1L;
  private bgr<CashSwiperView> S;
  private bgr<DismissAnimationView> T;
  private boolean U = true;
  private boolean V;
  private bgr<CashReceiverView> W;
  private boolean X;
  private Handler Y;
  private DictionaryEasyMetric Z;
  private HereTooltip aA;
  private CashTooltip aB;
  private CashFeedItem aC;
  private boolean aD = false;
  private afw aE;
  private afv aF;
  private Map<String, afv> aG;
  private boolean aH = false;
  private axf aa;
  private yj ab;
  private akc ac;
  private yl ad;
  private Handler ae;
  private yd af;
  private aqn ag;
  private ViewStub ah;
  private boolean ai = false;
  private boolean aj = true;
  private yi ak;
  private View al;
  private ChatMediaExpansionCalculator am;
  private int an;
  private int ao;
  private int ap;
  private int aq;
  private AnimatorSet ar;
  private int as;
  private boolean at = false;
  private float au = 0.0F;
  private GestureDetectorCompat av;
  private final HashMap<String, String> aw = new HashMap();
  private final HashMap<String, List<Integer>> ax = new HashMap();
  private boolean ay;
  protected SnapView d;
  ChatConversation e;
  protected Friend f;
  protected bgr<StreamView> g;
  @Inject
  public xu h;
  @Inject
  public ya i;
  @Inject
  public xx j;
  public boolean k;
  private final yq n;
  private final aol o;
  private final nj p;
  private final baa q;
  private final td r;
  private final alx s;
  private final adl t;
  private final ale u;
  private View v;
  private View w;
  private View x;
  private View y;
  private TextView z;
  
  public ChatFragment()
  {
    this(akc.b(), yq.a(), new afw(), new yj(), new ChatMediaExpansionCalculator(), aol.a(), ale.a(), nj.a(), baa.a(), td.a(), alx.a(), new yl(SnapchatApplication.b()), new adl());
  }
  
  @SuppressLint({"ValidFragment"})
  private ChatFragment(akc paramakc, yq paramyq, afw paramafw, yj paramyj, ChatMediaExpansionCalculator paramChatMediaExpansionCalculator, aol paramaol, ale paramale, nj paramnj, baa parambaa, td paramtd, alx paramalx, yl paramyl, adl paramadl)
  {
    SnapchatApplication.b().c().a(this);
    ac = paramakc;
    n = paramyq;
    aE = paramafw;
    ab = paramyj;
    am = paramChatMediaExpansionCalculator;
    o = paramaol;
    u = paramale;
    p = paramnj;
    q = parambaa;
    r = paramtd;
    s = paramalx;
    ad = paramyl;
    t = paramadl;
    paramakc = aE;
    paramyq = t;
    a.a = paramyq;
    aG = new HashMap();
  }
  
  private void A()
  {
    int i1 = 0;
    if (f == null) {
      return;
    }
    Object localObject2 = f.h();
    Object localObject1 = F();
    if ((localObject1 == null) || (((String)localObject1).isEmpty())) {
      aw.remove(localObject2);
    }
    while (!E())
    {
      ax.remove(localObject2);
      return;
      aw.put(localObject2, localObject1);
    }
    localObject1 = (List)ax.get(localObject2);
    if (localObject1 == null)
    {
      localObject1 = new ArrayList();
      ax.put(localObject2, localObject1);
    }
    for (;;)
    {
      localObject2 = B.getEditableText();
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
  
  private void B()
  {
    if (f == null) {
      return;
    }
    ant.a().a(f.h());
  }
  
  private void C()
  {
    if (g.b()) {
      ((StreamView)g.a()).b();
    }
  }
  
  private void D()
  {
    if (R > 0L)
    {
      AnalyticsEvents.a(SystemClock.elapsedRealtime() - R);
      R = -1L;
    }
  }
  
  private boolean E()
  {
    return xu.a(B.getEditableText()) > 0;
  }
  
  private String F()
  {
    Editable localEditable = B.getText();
    if (localEditable == null) {
      return null;
    }
    return localEditable.toString();
  }
  
  private void G()
  {
    boolean bool3 = true;
    final boolean bool1;
    int i1;
    label37:
    final boolean bool2;
    label47:
    String str;
    if ((e.mIsRecipientPresent) && (e.mAmIPresent))
    {
      bool1 = true;
      if (e.mHereAuth == null) {
        break label247;
      }
      i1 = 1;
      if ((!bool1) || (i1 == 0)) {
        break label252;
      }
      bool2 = true;
      if (bool2)
      {
        if ((!(g.a() instanceof HoldToStreamView)) && (asu.b())) {
          g = new bgr(mFragmentLayout, 2131362068, 2131362082, new bgr.a()
          {
            public final void a(View paramAnonymousView)
            {
              ChatFragment.g(ChatFragment.this).setTouchSubscriber((ChatCameraButton.a)g.a());
            }
          });
        }
        ((StreamView)g.a()).a(getActivity(), this);
        ((StreamView)g.a()).a(e);
        ((StreamView)g.a()).setCanStreamVideo(true, DisconnectReason.REMOTE_PEER_LEFT);
      }
      ChatCameraButton localChatCameraButton = E;
      if (!bool1) {
        break label257;
      }
      str = "blue";
      label166:
      localChatCameraButton.setContentDescription(str);
      E.setPresent(bool1);
      if ((E.getVisibility() != 0) || (E.getCashtagDetected()) || (F.c)) {
        break label265;
      }
    }
    for (;;)
    {
      aA.a(e, bool3);
      E.setOnLongClickListener(new View.OnLongClickListener()
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
            if (bool1) {
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
      label247:
      i1 = 0;
      break label37;
      label252:
      bool2 = false;
      break label47;
      label257:
      str = "yellow";
      break label166;
      label265:
      bool3 = false;
    }
  }
  
  @avl
  private void J()
  {
    if ((V) && (!I) && (B.requestFocus()))
    {
      avh.g(getActivity());
      h(true);
      new Handler().post(new Runnable()
      {
        public final void run()
        {
          ChatFragment.c(ChatFragment.this, 0.0F);
          ChatFragment.n(ChatFragment.this).a();
        }
      });
    }
    V = false;
  }
  
  private void K()
  {
    az = true;
    U = false;
    ban.a().a(new bdg(false));
  }
  
  private void L()
  {
    az = false;
    U = true;
    ban.a().a(new bdg(true));
  }
  
  @avl
  private void M()
  {
    if ((mIsVisible) && (e.mPendingRainBills > 0))
    {
      if (aH) {
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
      aH = false;
    }
  }
  
  private void N()
  {
    i(false);
    if ((v.getTranslationY() == -an) && (w.getTranslationY() == -(an + ap)) && (x.getTranslationY() == ao) && (y.getTranslationY() == ao + aq)) {
      return;
    }
    if (ar != null) {
      ar.cancel();
    }
    ar = new AnimatorSet();
    AnimatorSet.Builder localBuilder = ar.play(ObjectAnimator.ofFloat(v, "translationY", new float[] { v.getTranslationY(), -an }));
    localBuilder.with(ObjectAnimator.ofFloat(w, "translationY", new float[] { w.getTranslationY(), -(an + ap) }));
    localBuilder.with(ObjectAnimator.ofFloat(x, "translationY", new float[] { x.getTranslationY(), ao }));
    localBuilder.with(ObjectAnimator.ofFloat(y, "translationY", new float[] { y.getTranslationY(), ao + aq }));
    ar.start();
  }
  
  private void O()
  {
    i(true);
    if ((v.getTranslationY() == 0.0F) && (w.getTranslationY() == 0.0F) && (x.getTranslationY() == 0.0F) && (y.getTranslationY() == 0.0F)) {
      return;
    }
    if (ar != null) {
      ar.cancel();
    }
    ar = new AnimatorSet();
    AnimatorSet.Builder localBuilder = ar.play(ObjectAnimator.ofFloat(v, "translationY", new float[] { v.getTranslationY(), 0.0F }));
    localBuilder.with(ObjectAnimator.ofFloat(w, "translationY", new float[] { w.getTranslationY(), 0.0F }));
    localBuilder.with(ObjectAnimator.ofFloat(x, "translationY", new float[] { x.getTranslationY(), 0.0F }));
    localBuilder.with(ObjectAnimator.ofFloat(y, "translationY", new float[] { y.getTranslationY(), 0.0F }));
    ar.start();
  }
  
  public static String a(ChatFeedItem paramChatFeedItem)
  {
    Object localObject;
    if ((paramChatFeedItem instanceof aji))
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
    while (i1 <= F.getLastVisiblePosition())
    {
      Object localObject = F.getChildAt(i1);
      if (localObject != null)
      {
        localObject = ((View)localObject).getTag();
        if ((localObject instanceof afr.c)) {
          ((afr.c)localObject).a(paramFloat);
        }
      }
      i1 += 1;
    }
  }
  
  private void a(final int paramInt, final long paramLong)
  {
    ((CashReceiverView)W.a()).post(new Runnable()
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
            localImageView.setLayoutParams(new ViewGroup.LayoutParams((int)avh.a(72.0F, localCashReceiverView.getContext()), (int)avh.a(36.0F, localCashReceiverView.getContext())));
            localImageView.setTag("FALLING_DOLLAR_TAG");
            float f4 = atz.a().nextFloat();
            float f5 = 0.9F + atz.a().nextFloat() * 0.2F;
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
            float f1 = avh.a(3.33F - 1.66F * f4, localCashReceiverView.getContext());
            float f2 = avh.a(0.2F + 0.1F * f4, localCashReceiverView.getContext());
            float f3 = avh.a(0.0015F + -5.0E-4F * f4, localCashReceiverView.getContext());
            f4 = avh.a(133.0F * f5 + f4 * -66.0F, localCashReceiverView.getContext());
            f5 = localCashReceiverView.getMeasuredWidth();
            float f6 = atz.a().nextFloat();
            float f7 = getLayoutParamswidth / 2.0F;
            float f8 = (float)(6.283185307179586D * atz.a().nextFloat());
            float f9 = -getLayoutParamsheight;
            float f10 = avh.a(5.0F, localCashReceiverView.getContext());
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
              k = (int)avh.a(9.0F, localCashReceiverView.getContext());
              int m = (int)avh.a(18.0F, localCashReceiverView.getContext());
              f1 = 0.9F + 0.2F * atz.a().nextFloat();
              localImageView.setScaleX(f1);
              localImageView.setScaleY(f1);
              localImageView.setLayoutParams(new ViewGroup.LayoutParams(k, m));
              localImageView.setTag("CAUGHT_DOLLAR_TAG");
              c.addView(localImageView);
              f2 = -2.0F + 2.0F * atz.a().nextFloat();
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
              localImageView.setTranslationX(avh.a(f1, localCashReceiverView.getContext()));
              localImageView.setTranslationY(avh.a(4.0F + 2.0F * atz.a().nextFloat(), localCashReceiverView.getContext()));
              localImageView.setRotation(-30.0F + 60.0F * atz.a().nextFloat());
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
  
  private void a(@cgb Friend paramFriend)
  {
    z.setText(paramFriend.f());
    String str = paramFriend.h();
    Object localObject = (String)aw.get(str);
    B.setText((CharSequence)localObject);
    CursorCallbackEditText localCursorCallbackEditText = B;
    if (localObject == null) {}
    for (int i1 = 0;; i1 = ((String)localObject).length())
    {
      localCursorCallbackEditText.setSelection(i1);
      localObject = (List)ax.get(str);
      if (localObject == null) {
        return;
      }
      if ((!CashUtils.a(ajx.aq())) || (!CashUtils.a(paramFriend.s()))) {
        break;
      }
      paramFriend = ((List)localObject).iterator();
      while (paramFriend.hasNext())
      {
        localObject = (Integer)paramFriend.next();
        xu.a(B, ((Integer)localObject).intValue());
      }
    }
    ax.remove(str);
  }
  
  private void a(@cgb Friend paramFriend, boolean paramBoolean)
  {
    if (!aD)
    {
      Timber.g("ChatFragment", "CHAT-LOG: ChatFragment setFriend won't update the friend because the ChatFragment is not created yet.", new Object[0]);
      return;
    }
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment setFriend " + paramFriend.h(), new Object[0]);
    if (a(paramFriend.h()))
    {
      Timber.g("ChatFragment", "CHAT-LOG: ChatFragment setFriend changed. Resetting some state.", new Object[0]);
      aa.a();
      if (W.b())
      {
        ((CashReceiverView)W.a()).a();
        ((CashReceiverView)W.a()).setAlpha(0.0F);
      }
      F.c();
      b(0.0F);
    }
    f = paramFriend;
    I = false;
    e = ac.a(f.h(), false);
    if (e == null)
    {
      AnalyticsEvents.a(AnalyticsEvents.LogoutReason.NO_USERNAME);
      o.e();
      paramFriend = getActivity();
      asr.a(paramFriend);
      paramFriend.finish();
      return;
    }
    e.mEnteredConversationFromRecentStoryReply = p.b();
    a(f);
    if (ReleaseManager.f()) {
      a(u.b());
    }
    aC = null;
    if (!CashUtils.a(ajx.aq())) {
      j.a(e.E());
    }
    if (paramBoolean) {
      e.a(false);
    }
    n.c(e);
    e.t();
    g(e.z());
    F.setIsActive(true);
    paramFriend = F;
    if (d == null) {
      throw new IllegalStateException("setAdapter() must be called first");
    }
    if (e == null) {
      throw new IllegalStateException("setInterface() must be called first.");
    }
    if (b)
    {
      paramFriend.b(0);
      paramFriend.setSelection(d.getCount() - 1);
    }
    F.setSelection(L.size() - 1);
    G();
    ban.a().a(new bap(CameraDisplayState.SHOW, CameraModel.CameraType.FRONT_FACING));
  }
  
  private void a(@cgb CashFeedItem paramCashFeedItem)
  {
    paramCashFeedItem = mCashTransaction;
    mSenderBankStatementMessage = getString(2131493282, new Object[] { StringUtils.substring(mRecipientUsername, 0, 7) });
    mRecipientBankStatementMessage = getString(2131493282, new Object[] { StringUtils.substring(mSenderUsername, 0, 7) });
  }
  
  private void a(@cgb final ChatConversation paramChatConversation, @cgb final CashFeedItem paramCashFeedItem, @cgb String paramString)
  {
    Timber.c("ChatFragment", "CASH-LOG: SEND transaction id[%s] recipient[%s] amount[%s]", new Object[] { paramCashFeedItem.d(), mTheirUsername, mCashTransaction.a() });
    K();
    a(paramCashFeedItem);
    i.a(paramChatConversation, paramCashFeedItem, paramString, new ya.b()
    {
      public final void a()
      {
        Timber.c("ChatFragment", "CASH-LOG: SENDING transaction id[%s] recipient[%s] amount[%s]", new Object[] { paramCashFeedItem.d(), paramChatConversationmTheirUsername, paramCashFeedItemmCashTransaction.a() });
        bgp.a(new Runnable()
        {
          public final void run()
          {
            ChatFragment.i(ChatFragment.this).setText("");
          }
        });
        ChatFragment.a(ChatFragment.this, null);
        ChatFragment.B(ChatFragment.this).remove(paramChatConversationmTheirUsername);
        ChatFragment.q(ChatFragment.this);
        ban.a().a(new bdd());
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
    if ((e == null) || (I)) {
      return;
    }
    ((CashSwiperView)S.a()).a(5000);
    J = paramSwipeActivationMethod;
    I = true;
    V = B.hasFocus();
    aB.a();
    CashFeedItem localCashFeedItem = ya.a(e, 1, false);
    K();
    i.a(localCashFeedItem, new ya.a()
    {
      public final void a()
      {
        bgp.a(new Runnable()
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
        ban.a().a(new bdg(false));
      }
      
      public final void b()
      {
        ChatFragment.q(ChatFragment.this);
        ChatFragment.D(ChatFragment.this);
      }
    });
  }
  
  private void a(List<ChatFeedItem> paramList, ChatFeedItem paramChatFeedItem)
  {
    int i1;
    boolean bool;
    if (M == -1)
    {
      if (!(paramChatFeedItem instanceof StatefulChatFeedItem)) {
        break label77;
      }
      if (TextUtils.equals(paramChatFeedItem.j(), ajx.l())) {
        break label72;
      }
      i1 = 1;
      if ((i1 == 0) || (paramChatFeedItem.ao())) {
        break label100;
      }
      bool = true;
    }
    for (;;)
    {
      if (bool) {
        M = paramList.size();
      }
      paramList.add(paramChatFeedItem);
      return;
      label72:
      i1 = 0;
      break;
      label77:
      if (((paramChatFeedItem instanceof aje)) && (!((aje)paramChatFeedItem).z())) {
        bool = true;
      } else {
        label100:
        bool = DateUtils.isToday(paramChatFeedItem.W());
      }
    }
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
    if (ar != null) {
      ar.cancel();
    }
    boolean bool;
    float f1;
    float f2;
    float f3;
    float f4;
    if (paramFloat != 1.0F)
    {
      bool = true;
      i(bool);
      f1 = v.getTranslationY();
      f2 = x.getTranslationY();
      f3 = w.getTranslationY();
      f4 = y.getTranslationY();
      if ((paramFloat == 0.0F) || (!ak.b()) || (bfd.b(F))) {
        break label100;
      }
      N();
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
      } while (((paramFloat == 0.0F) && (f1 == 0.0F) && (f2 == 0.0F) && (f3 == 0.0F) && (f4 == 0.0F)) || ((paramFloat == 1.0F) && (f1 == -an) && (f2 == ao) && (f3 == -(an + ap)) && (f4 == ao + aq)));
      int i1 = (int)-(an * paramFloat);
      int i2 = (int)(ao * paramFloat);
      int i3 = (int)-((an + ap) * paramFloat);
      i4 = (int)((ao + aq) * paramFloat);
      if (i1 != f1) {
        v.setTranslationY(i1);
      }
      if (i2 != f2) {
        x.setTranslationY(i2);
      }
      if (i3 != f3) {
        w.setTranslationY(i3);
      }
    } while (i4 == f4);
    y.setTranslationY(i4);
  }
  
  private void b(@cgb String paramString)
  {
    if (!H) {}
    int i2;
    label36:
    label177:
    long l1;
    label195:
    label275:
    do
    {
      Object localObject2;
      View localView;
      Object localObject1;
      do
      {
        return;
        i2 = F.getFirstVisiblePosition();
        int i3 = F.getLastVisiblePosition();
        localObject2 = F.getAdapter();
        i1 = i2;
        if (i1 > i3) {
          break label441;
        }
        localView = F.getChildAt(i1 - i2);
        localObject1 = (afr.c)localView.getTag();
        if ((localObject1 == null) || (((ListAdapter)localObject2).getCount() <= i1)) {
          break label436;
        }
        localObject1 = a;
        Object localObject3 = (ChatFeedItem)((ListAdapter)localObject2).getItem(i1);
        if ((localObject1 == null) || (localObject3 == null) || (!TextUtils.equals(((ChatFeedItem)localObject1).d(), ((ChatFeedItem)localObject3).d())) || (!TextUtils.equals(((ChatFeedItem)localObject1).d(), paramString))) {
          break label436;
        }
        paramString = ((ChatFeedItem)localObject1).al();
        localObject2 = ((ChatFeedItem)localObject1).d();
        localObject3 = e.mId;
        if (!TextUtils.isEmpty(paramString)) {
          break label411;
        }
        if (!(localObject1 instanceof akb)) {
          break label428;
        }
        l1 = ((akb)localObject1).s();
        Timber.g("ChatFragment", "CHAT-LOG: Refreshing Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]", new Object[] { localObject2, localObject3, paramString, Long.valueOf(l1) });
        F.getAdapter().getView(i1, localView, F);
        int i4 = F.getFirstVisiblePosition();
        paramString = F.getAdapter();
        i3 = 0;
        i2 = i1;
        i1 = i3;
        if (i2 < i4) {
          break;
        }
        localView = F.getChildAt(i2 - i4);
        localObject1 = (afr.c)localView.getTag();
        if (localObject1 == null) {
          break label443;
        }
        localObject1 = a;
        localObject2 = (ChatFeedItem)paramString.getItem(i2);
      } while ((i1 != 0) && (!(localObject2 instanceof ake)));
      if ((localObject1 == null) || (localObject2 == null) || (!(localObject1 instanceof akf)) || (!TextUtils.equals(((ChatFeedItem)localObject1).d(), ((ChatFeedItem)localObject2).d()))) {
        break label443;
      }
      F.getAdapter().getView(i2, localView, F);
    } while (i1 != 0);
    int i1 = 1;
    label411:
    label428:
    label436:
    label441:
    label443:
    for (;;)
    {
      i2 -= 1;
      break label275;
      break;
      paramString = paramString.substring(0, Math.min(3, paramString.length()));
      break label177;
      l1 = -1L;
      break label195;
      i1 += 1;
      break label36;
      break;
    }
  }
  
  @avl
  private void g(final boolean paramBoolean)
  {
    Object localObject2 = new ArrayList(e.o());
    L.clear();
    M = -1;
    int i1 = ((List)localObject2).size();
    if (i1 == 0)
    {
      a(L, new ake(null));
      return;
    }
    aa.mMessageCount = i1;
    Object localObject1;
    if ((!G.isEmpty()) && (F.getFirstVisiblePosition() < 20))
    {
      Timber.g("ChatFragment", "CHAT-LOG: Incrementing paginator render size (old size: %d)", new Object[] { Integer.valueOf(aa.mRenderSize) });
      localObject1 = aa;
      if (mRenderSize < mMessageCount) {
        mRenderSize += 30;
      }
    }
    int i2 = aa.mRenderSize;
    if (i2 < i1) {
      localObject2 = ((List)localObject2).subList(i1 - i2, i1);
    }
    for (;;)
    {
      Timber.g("ChatFragment", "CHAT-LOG: ChatMessagePaginator has render size of %d messages", new Object[] { Integer.valueOf(i2) });
      Calendar localCalendar = Calendar.getInstance();
      HashSet localHashSet = new HashSet();
      i1 = 0;
      int i3 = 0;
      ChatFeedItem localChatFeedItem;
      label305:
      Object localObject3;
      if (i3 < ((List)localObject2).size())
      {
        if (i3 > 0) {}
        for (localObject1 = (ChatFeedItem)((List)localObject2).get(i3 - 1);; localObject1 = null)
        {
          localChatFeedItem = (ChatFeedItem)((List)localObject2).get(i3);
          if (localChatFeedItem != null) {
            break;
          }
          throw new NullPointerException();
        }
        if ((localObject1 == null) || (ata.a(((ChatFeedItem)localObject1).W(), localChatFeedItem.W())))
        {
          i2 = 1;
          if (i2 == 0) {
            break label1112;
          }
          localCalendar.setTimeInMillis(Long.valueOf(localChatFeedItem.W()).longValue());
          ata.a(localCalendar);
          if (!localHashSet.add(Long.valueOf(localCalendar.getTimeInMillis()))) {
            break label574;
          }
          localObject3 = new ake(localChatFeedItem);
          a(L, (ChatFeedItem)localObject3);
          i2 = 1;
          label371:
          if (i2 == 0) {
            break label1112;
          }
        }
      }
      label403:
      label436:
      label504:
      label574:
      label700:
      label720:
      label740:
      label1112:
      for (i2 = L.size();; i2 = i1)
      {
        String str;
        if (!(localChatFeedItem instanceof akg)) {
          if ((localObject1 instanceof akg))
          {
            i1 = 1;
            if (i1 != 0)
            {
              localObject3 = localChatFeedItem.j();
              if (!(localChatFeedItem instanceof akj)) {
                break label700;
              }
              localObject1 = getResources().getString(2131493002);
              localObject1 = new akf((String)localObject1, localChatFeedItem);
              a(L, (ChatFeedItem)localObject1);
            }
            a(L, localChatFeedItem);
            localObject1 = localChatFeedItem.al();
            localObject3 = localChatFeedItem.d();
            str = e.mId;
            if (!TextUtils.isEmpty((CharSequence)localObject1)) {
              break label720;
            }
            if (!(localChatFeedItem instanceof akb)) {
              break label740;
            }
          }
        }
        for (long l1 = ((akb)localChatFeedItem).s();; l1 = -1L)
        {
          Timber.g("ChatFragment", "CHAT-LOG: Populating Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]", new Object[] { localObject3, str, localObject1, Long.valueOf(l1) });
          i3 += 1;
          i1 = i2;
          break;
          i2 = 0;
          break label305;
          i2 = 0;
          break label371;
          if (((localObject1 instanceof Snap)) && (((Snap)localObject1).aq()))
          {
            i1 = 1;
            break label403;
          }
          if ((localObject1 == null) || (ata.a(((ChatFeedItem)localObject1).W(), localChatFeedItem.W())))
          {
            i1 = 1;
            break label403;
          }
          if ((((localChatFeedItem instanceof akj)) && (!(localObject1 instanceof akj))) || (((localObject1 instanceof akj)) && (!(localChatFeedItem instanceof akj))))
          {
            i1 = 1;
            break label403;
          }
          if (!TextUtils.equals(((ChatFeedItem)localObject1).j(), localChatFeedItem.j()))
          {
            i1 = 1;
            break label403;
          }
          i1 = 0;
          break label403;
          localObject1 = localObject3;
          if (!TextUtils.isEmpty((CharSequence)localObject3)) {
            break label436;
          }
          localObject1 = "";
          break label436;
          localObject1 = ((String)localObject1).substring(0, Math.min(3, ((String)localObject1).length()));
          break label504;
        }
        if (!DateUtils.isToday(((ChatFeedItem)L.get(i1)).W())) {
          a(L, new ake(null));
        }
        Timber.g("ChatFragment", "CHAT-LOG: Repopulated chat messages should have %d items", new Object[] { Integer.valueOf(L.size()) });
        if (!H)
        {
          Timber.g("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged message view hasn't been loaded yet", new Object[0]);
          G.notifyDataSetChanged();
          new Handler().post(new Runnable()
          {
            public final void run()
            {
              ChatFragment.z(ChatFragment.this);
              if (paramBoolean)
              {
                ChatFragment.e(ChatFragment.this).c();
                ChatFragment.A(ChatFragment.this);
                ChatFragment.n(ChatFragment.this).a();
              }
            }
          });
          return;
        }
        if (paramBoolean)
        {
          Timber.g("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged and scrolling to bottom", new Object[0]);
          G.notifyDataSetChanged();
          F.c();
          O();
          ak.a();
          return;
        }
        i2 = F.getFirstVisiblePosition();
        localObject1 = null;
        i1 = i2;
        if (i1 <= F.getLastVisiblePosition())
        {
          localObject1 = G.a(i1);
          if ((localObject1 == null) || ((localObject1 instanceof akf))) {}
        }
        for (;;)
        {
          if (localObject1 != null)
          {
            localObject1 = ((ChatFeedItem)localObject1).d();
            localObject2 = F.getChildAt(i1 - i2);
            if (localObject2 == null) {}
            for (i1 = 0;; i1 = ((View)localObject2).getTop())
            {
              Timber.g("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position", new Object[0]);
              G.notifyDataSetChanged();
              localObject2 = L.iterator();
              i2 = 0;
              while ((((Iterator)localObject2).hasNext()) && (!TextUtils.equals(((ChatFeedItem)((Iterator)localObject2).next()).d(), (CharSequence)localObject1))) {
                i2 += 1;
              }
              i1 += 1;
              break;
            }
            F.setSelectionFromTop(i2, i1);
            return;
          }
          Timber.g("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position but no saved item", new Object[0]);
          G.notifyDataSetChanged();
          return;
          i1 = i2;
        }
      }
    }
  }
  
  private void h(boolean paramBoolean)
  {
    int i2 = 1;
    Object localObject = F;
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
      localObject = s;
      if (paramBoolean) {
        break label266;
      }
      label124:
      int i3 = (int)getResources().getDimension(2131296416);
      ViewStub localViewStub = ah;
      bgp.a();
      ((alx)localObject).a(localViewStub);
      a.getLayoutParams().height = i1;
      if (i2 == 0) {
        break label271;
      }
      a.findViewById(2131362397).setPadding(0, i3, 0, 0);
    }
    for (;;)
    {
      localObject = (RelativeLayout.LayoutParams)v.getLayoutParams();
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
      a.findViewById(2131362397).setPadding(0, 0, 0, 0);
    }
    label292:
    i2 = height;
    if (paramBoolean) {
      an = ((int)getResources().getDimension(2131296258));
    }
    for (int i1 = 0;; i1 = (int)getResources().getDimension(2131296416))
    {
      if (an != i2)
      {
        height = an;
        v.setLayoutParams((ViewGroup.LayoutParams)localObject);
        localObject = (AbsListView.LayoutParams)al.getLayoutParams();
        if (localObject != null)
        {
          height = an;
          al.setLayoutParams((ViewGroup.LayoutParams)localObject);
        }
      }
      if (i1 == v.getPaddingTop()) {
        break;
      }
      v.setPadding(0, i1, 0, 0);
      return;
      an = ((int)getResources().getDimension(2131296259));
    }
  }
  
  private void i(boolean paramBoolean)
  {
    if (aj != paramBoolean) {
      if (!paramBoolean) {
        break label36;
      }
    }
    label36:
    for (TitleBarManager.Visibility localVisibility = TitleBarManager.Visibility.VISIBLE;; localVisibility = TitleBarManager.Visibility.HIDDEN)
    {
      ban.a().a(new bel(localVisibility));
      aj = paramBoolean;
      return;
    }
  }
  
  public static boolean m()
  {
    return az;
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
    return m;
  }
  
  public final float a(View paramView)
  {
    if (paramView == null) {
      return 0.0F;
    }
    paramView = paramView.getTag();
    if ((paramView instanceof afr.c)) {
      return c.getTranslationX();
    }
    return 0.0F;
  }
  
  final ChatFeedItem a(MotionEvent paramMotionEvent)
  {
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    i1 = F.pointToPosition(i1, i2);
    if (i1 >= G.getCount() + F.getHeaderViewsCount()) {
      return null;
    }
    return (ChatFeedItem)F.getItemAtPosition(i1);
  }
  
  public final void a()
  {
    a(CashSwiperView.SwipeActivationMethod.HOLD);
  }
  
  public final void a(int paramInt)
  {
    at = false;
    au = 0.0F;
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
        ai = true;
      }
    } while ((bfd.b(F)) || (at) || (!ai));
    int i1 = F.getFirstVisiblePosition();
    int i2 = F.getLastVisiblePosition();
    Object localObject3 = (ChatFeedItem)F.getItemAtPosition(i1);
    if (i1 != i2) {}
    for (Object localObject1 = (ChatFeedItem)F.getItemAtPosition(i2); !yi.a((ChatFeedItem)localObject3, (ChatFeedItem)localObject1); localObject1 = null)
    {
      if (!ak.b())
      {
        b(0.0F);
        break label696;
      }
      as = paramInt;
      return;
    }
    am.a = F.getHeight();
    Object localObject4 = F.getChildAt(0);
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
      localObject2 = F.getChildAt(i2 - i1);
      if (paramInt - as <= 0) {
        break label731;
      }
      localObject1 = new ChatMediaExpansionCalculator.a((ChatFeedItem)localObject3, (ChatFeedItem)localObject1, (View)localObject4, (View)localObject2, ChatMediaExpansionCalculator.ScrollDirection.UP);
      localObject2 = am;
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
        if (((ChatFeedItem)localObject4).am())
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
        if (localChatFeedItem.am())
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
      localObject2 = (afr.c)localView.getTag();
      localObject1 = null;
      f1 = -1.0F;
    }
    for (;;)
    {
      label486:
      localObject3 = new ChatMediaExpansionCalculator.b((afr.c)localObject2, (afr.c)localObject1, f2, f1);
      localObject1 = a;
      localObject2 = b;
      f1 = c;
      f2 = d;
      localObject3 = ak;
      i2 = a.getFirstVisiblePosition();
      i3 = a.getLastVisiblePosition();
      i1 = i2;
      label561:
      if (i1 > i3) {
        break label1106;
      }
      localObject4 = (afr.c)a.getChildAt(i1 - i2).getTag();
      if (localObject4 == null) {
        break label1091;
      }
      if ((i1 != i2) && (i1 != i3)) {
        break label1074;
      }
      if (a.am()) {
        break label1097;
      }
      i1 = 0;
      label624:
      if ((f1 == -1.0F) || (f2 == -1.0F)) {
        break label1112;
      }
      N();
      if ((f1 != -1.0F) && (localObject1 != null)) {
        ak.a((afr.c)localObject1, f1);
      }
      if ((f2 != -1.0F) && (localObject2 != null)) {
        label685:
        ak.a((afr.c)localObject2, f2);
      }
      label696:
      if (Float.compare(x.getTranslationY(), 0.0F) == 0) {
        break label1158;
      }
      aA.a(e, false);
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
        localObject1 = (afr.c)((View)localObject3).getTag();
        localObject2 = null;
        f2 = -1.0F;
      }
      else
      {
        if ((i3 == 0) || (i2 == 0)) {
          break label1215;
        }
        f2 = Math.max(f2, 0.0F);
        localObject2 = (afr.c)localView.getTag();
        f1 = Math.min(f1, 1.0F);
        localObject1 = (afr.c)((View)localObject3).getTag();
      }
    }
    label854:
    int i3 = i6;
    if (localObject4 != null)
    {
      i3 = i6;
      if (((ChatFeedItem)localObject4).am())
      {
        i3 = i6;
        if (i2 >= a * 0.5F) {
          i3 = 1;
        }
      }
    }
    if ((localChatFeedItem != null) && (localChatFeedItem.am()) && (i1 >= a * 0.5F - a * 0.125F)) {}
    for (i1 = 1;; i1 = 0)
    {
      if ((i3 != 0) && (i1 == 0))
      {
        f2 = Math.min(f2, 1.0F);
        localObject2 = (afr.c)localView.getTag();
        localObject1 = null;
        f1 = -1.0F;
        break label486;
      }
      if ((i3 == 0) && (i1 != 0))
      {
        f1 = Math.max(f1, 0.0F);
        localObject1 = (afr.c)((View)localObject3).getTag();
        localObject2 = null;
        f2 = -1.0F;
        break label486;
      }
      if ((i3 != 0) && (i1 != 0))
      {
        f2 = Math.min(f2, 1.0F);
        localObject2 = (afr.c)localView.getTag();
        f1 = Math.max(f1, 0.0F);
        localObject1 = (afr.c)((View)localObject3).getTag();
        break label486;
        label1074:
        if (!(a instanceof akf))
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
          if ((ak.b()) || (i1 != 0)) {
            b(1.0F);
          }
          for (;;)
          {
            ak.a((afr.c)localObject1, f1);
            break label696;
            label1158:
            break;
            b(f1);
          }
        }
        if ((f2 == -1.0F) || (localObject2 == null)) {
          break;
        }
        if ((ak.b()) || (i1 != 0))
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
  
  public final void a(@cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje) {}
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if ((!(paramaje instanceof ajr)) && (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED)) {
      T.a()).a.start();
    }
  }
  
  public final void a(@cgb akh paramakh)
  {
    Friend localFriend = f;
    if (axi.a(paramakh))
    {
      if (localFriend == null) {
        break label85;
      }
      String str = localFriend.h();
      if ((!TextUtils.equals(ajx.l(), str)) || (!paramakh.k().contains(localFriend.h()))) {
        break label85;
      }
    }
    label85:
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 != 0) && (!paramakh.w()) && (paramakh.e())) {
        ad.a(e, paramakh, null);
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
      A.setText(paramNetworkInfo);
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
  
  public final void a(View paramView, boolean paramBoolean) {}
  
  public final void a(LoadConversationPageTask.TaskStatus paramTaskStatus)
  {
    ViewGroup.LayoutParams localLayoutParams = O.getLayoutParams();
    if (localLayoutParams == null) {
      return;
    }
    switch (22.a[paramTaskStatus.ordinal()])
    {
    default: 
      return;
    case 1: 
      height = -2;
      O.setLayoutParams(localLayoutParams);
      O.setVisibility(0);
      P.setVisibility(0);
      Q.setVisibility(4);
      return;
    case 2: 
      height = -2;
      O.setLayoutParams(localLayoutParams);
      O.setVisibility(0);
      P.setVisibility(4);
      Q.setVisibility(0);
      return;
    }
    height = 1;
    O.setLayoutParams(localLayoutParams);
    O.setVisibility(8);
  }
  
  @avl
  public final void a(boolean paramBoolean)
  {
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment updateFriendIfNecessary %b", new Object[] { Boolean.valueOf(paramBoolean) });
    ajv localajv = ajv.g();
    if ((localajv == null) || (TextUtils.isEmpty(c))) {}
    while ((f != null) && (TextUtils.equals(f.h(), c))) {
      return;
    }
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment updateFriendIfNecessary no displayed friend or username or displayed friend is different, setting to %s", new Object[] { c });
    a(atm.b(c, localajv), paramBoolean);
    b(0.0F);
  }
  
  public final boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
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
    } while ((Math.abs(paramFloat1) >= i1) && (a(paramView) >= i1));
    if ((Math.abs(paramFloat1) >= i1) && (a(paramView) < i1))
    {
      a(i1);
      return true;
    }
    a(paramFloat1);
    return true;
  }
  
  public final int b(@cgc View paramView)
  {
    paramView = getActivity();
    if (paramView == null) {
      return 0;
    }
    return (int)avh.a(51.0F, paramView);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void b(boolean paramBoolean)
  {
    if (aF != null)
    {
      if (!paramBoolean) {
        break label21;
      }
      aF.b();
    }
    label21:
    while (!F.c) {
      return;
    }
    aF.a();
  }
  
  public final void c(View paramView)
  {
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment onLocked", new Object[0]);
    paramView = (afr.c)paramView.getTag();
    if ((aF == null) || (!TextUtils.equals(aF.h(), a.d()))) {
      aF = ((afv)aG.get(a.d()));
    }
    if ((a instanceof ChatMedia))
    {
      N();
      ak.a(paramView, 1.0F);
    }
    if (aF != null)
    {
      if ((aF instanceof afu)) {
        ((afu)aF).a(this);
      }
      aF.a();
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    int i2 = 8;
    Object localObject = v;
    if (paramBoolean)
    {
      i1 = 8;
      ((View)localObject).setVisibility(i1);
      localObject = F;
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
    az = true;
  }
  
  public final void d(@cgb View paramView)
  {
    afr.c localc;
    boolean bool3;
    boolean bool2;
    long l1;
    final Object localObject1;
    label160:
    Object localObject2;
    if ((e != null) && (e.mAmIPresent))
    {
      localc = (afr.c)paramView.getTag();
      bool3 = false;
      bool2 = false;
      l1 = System.currentTimeMillis();
      if ((a instanceof akb))
      {
        localObject1 = (akb)a;
        if (!mRecipients.contains(e.mMyUsername)) {
          break label793;
        }
        long l2 = ((akb)localObject1).s();
        if (l2 > e.mLastSeqNumOfTheirChatIDisplayed)
        {
          bool2 = yj.c(e, l2);
          l1 = ((akb)localObject1).A();
          bool1 = false;
          bool3 = bool1;
          if (bool2)
          {
            if (l1 <= 0L) {
              break label609;
            }
            localObject1 = e;
            ae.postDelayed(new Runnable()
            {
              public final void run()
              {
                ChatFragment.L(ChatFragment.this);
                if (yj.a(localObject1)) {
                  ChatFragment.L(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), bit.a.RELEASE);
                }
              }
            }, l1);
            localObject1 = ab;
            localObject2 = e;
            l1 = mLastSeqNumOfTheirChatIDisplayed;
            l2 = mLastSeqNumOfTheirChatIReleased;
            long l3 = mMyLastSeqNum;
            long l4 = mLastTimestampOfSentSnapReadReceiptIReleased;
            long l5 = mLastTimestampOfReceivedSnapReadReceiptIReleased;
            bool3 = bool1;
            if (l1 > l2)
            {
              localObject3 = yj.a((ChatConversation)localObject2, Long.valueOf(l3), Long.valueOf(l1));
              Map localMap = yj.a((ChatConversation)localObject2, Long.valueOf(l5), Long.valueOf(l4));
              b.a((ChatConversation)localObject2, (Map)localObject3, localMap, bit.a.DISPLAY);
              bool3 = bool1;
            }
          }
          if (bool3) {
            ab.a(e, bit.a.RELEASE);
          }
          if ((afv)aG.get(a.d()) != null) {
            break label663;
          }
          localObject2 = aE;
          localObject1 = a;
          if (!(localObject1 instanceof akh)) {
            break label782;
          }
          Object localObject3 = (akh)localObject1;
          localObject1 = (afr.c)paramView.getTag();
          if (!((akh)localObject3).V()) {
            break label737;
          }
          localObject2 = a;
          if (a != null) {
            break label620;
          }
          throw new IllegalStateException("Discover deep link controller not initialized!");
        }
        if (!((akb)localObject1).g(l1)) {
          break label793;
        }
      }
    }
    label609:
    label620:
    label663:
    label737:
    label782:
    label788:
    label793:
    for (boolean bool1 = true;; bool1 = false)
    {
      bool2 = false;
      l1 = 0L;
      break;
      if ((a instanceof aji))
      {
        localObject1 = (aji)a;
        bool1 = bool2;
        if (((aji)localObject1).i())
        {
          l1 = ((aji)localObject1).W();
          bool1 = bool2;
          if (l1 > e.mLastTimestampOfSentSnapReadReceiptIReleased) {
            bool1 = yj.a(e, l1);
          }
        }
        l1 = 0L;
        bool2 = false;
        break;
      }
      if ((a instanceof aje))
      {
        localObject1 = (aje)a;
        bool1 = bool3;
        if (((aje)localObject1).z())
        {
          l1 = ((aje)localObject1).W();
          bool1 = bool3;
          if (l1 > e.mLastTimestampOfReceivedSnapReadReceiptIReleased) {
            bool1 = yj.b(e, l1);
          }
        }
        l1 = 0L;
        bool2 = false;
        break;
      }
      if ((a instanceof CashFeedItem))
      {
        localObject1 = (CashFeedItem)a;
        if (!((CashFeedItem)localObject1).h()) {
          ab.a(e, (CashFeedItem)localObject1);
        }
      }
      bool1 = false;
      l1 = 0L;
      bool2 = false;
      break;
      bool1 = yj.a(e);
      break label160;
      localObject1 = new aft((afr.c)localObject1, a);
      if (localObject1 != null) {
        aG.put(a.d(), localObject1);
      }
      if (bfd.b(F))
      {
        localObject1 = new Rect();
        paramView.getHitRect((Rect)localObject1);
        paramView = new Rect();
        x.getHitRect(paramView);
        if ((!Rect.intersects((Rect)localObject1, paramView)) && (!paramView.contains((Rect)localObject1))) {
          break label788;
        }
      }
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          F.b();
        }
        return;
        localObject2 = a;
        if (a == null) {
          throw new IllegalStateException("Discover deep link controller not initialized!");
        }
        localObject1 = new afu((afr.c)localObject1, a);
        break;
        localObject1 = null;
        break;
      }
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    View localView = x;
    if (paramBoolean) {}
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      return;
    }
  }
  
  protected final void e()
  {
    nf.d();
    Z.a("FIRST_MEDIA_OPENED");
    ban.a().a(new bel(TitleBarManager.Visibility.VISIBLE));
    d.a(this);
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment onVisible", new Object[0]);
    if (ReleaseManager.f())
    {
      a(u.b());
      u.a(this);
    }
    a(false);
    super.e();
    FragmentActivity localFragmentActivity = getActivity();
    h(false);
    aj = false;
    i(true);
    ban.a().a(new bal(true));
    localFragmentActivity.setVolumeControlStream(3);
    if (((localFragmentActivity instanceof LandingPageActivity)) && (ajv.g() != null) && (p.b()))
    {
      localObject1 = p;
      if (mRecentStoryReplyEvent != null) {
        break label249;
      }
    }
    label249:
    for (final Object localObject1 = null;; localObject1 = atm.b(mRecentStoryReplyEvent.friendUsername, (ajv)mUserProvider.get()))
    {
      a((Friend)localObject1, true);
      if ((f != null) && (TextUtils.isEmpty(z.getText()))) {
        z.setText(f.f());
      }
      ban.a().a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.HIGH));
      G.c.a = true;
      if ((f != null) && (e != null)) {
        break;
      }
      return;
    }
    z.setText(f.f());
    Timber.g("ChatFragment", "CHAT-LOG: ENTERED CHAT with %s", new Object[] { e.mTheirUsername });
    e.mIsUserInConversation = true;
    if (R < 0L)
    {
      R = SystemClock.elapsedRealtime();
      AnalyticsEvents.j();
    }
    B();
    e.b(true);
    G();
    F.setLockingEnabled(true);
    aH = false;
    M();
    if (!ak.b()) {
      ab.a(e, false);
    }
    g(true);
    NotificationTable.c(SnapchatApplication.b(), AndroidNotificationManager.Type.CHAT.name(), e.mTheirUsername);
    m = f.h();
    localObject1 = f;
    if (((Friend)localObject1).s() == ScCashResponsePayload.Status.OK) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        Timber.b("ChatFragment", "CASH-LOG: Refreshing CASH ELIGIBILITY for %s", new Object[] { ((Friend)localObject1).h() });
        localObject2 = new qm(((Friend)localObject1).h());
        ((qm)localObject2).a(ScCashResponsePayload.class, new ts.b() {});
        ((qm)localObject2).f();
      }
      J();
      localObject1 = s;
      Object localObject2 = f.h();
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
      nf.e();
      return;
    }
  }
  
  public final void e(boolean paramBoolean)
  {
    if ((paramBoolean) && ((g.b()) || (!((StreamView)g.a()).d())))
    {
      if (aF != null) {
        aF.b();
      }
      if (B != null) {
        p();
      }
    }
  }
  
  protected final void f()
  {
    super.f();
    d.b(this);
    if ((I) && (!az))
    {
      ??? = (CashSwiperView)S.a();
      ((CashSwiperView)???).setVisibility(8);
      ((CashSwiperView)???).a();
      ((CashSwiperView)???).setEnabled(false);
      b.v();
      ((CashSwiperView)???).c();
      ??? = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
      ((SharedPreferences.Editor)???).putString("RESUMING_FROM_SWIPE_MESSAGE", getResources().getString(2131493516, new Object[] { atm.e(e.mTheirUsername, ajv.g()) }));
      ((SharedPreferences.Editor)???).apply();
    }
    if (B != null) {
      p();
    }
    if (U) {
      ban.a().a(new bal(false));
    }
    if (aF != null)
    {
      aF.c();
      aF = null;
    }
    ??? = aG.values().iterator();
    while (((Iterator)???).hasNext()) {
      ((afv)((Iterator)???).next()).c();
    }
    aG.clear();
    if (g.b()) {
      ((StreamView)g.a()).b(DisconnectReason.L2S_SWIPE_OUT);
    }
    adl localadl;
    if (e != null)
    {
      e.b(false);
      G();
      e.e(false);
      ae.removeCallbacksAndMessages(null);
      ak.a();
      if ((N) || (ay) || (az))
      {
        Timber.g("ChatFragment", "CHAT-LOG: LEFT CHAT with %s due to app pause when ChatFragment visible or entering in-chat camera or quick snap", new Object[] { e.mTheirUsername });
        ab.a(e, true);
      }
    }
    else
    {
      G.c.a = false;
      ban.a().a(new bcd("ChatFragment"));
      A();
      ant.a().b();
      F.setLockingEnabled(false);
      F.a();
      ai = false;
      if ((!ay) && (!az)) {
        D();
      }
      if ((!N) && (!ay) && (!az))
      {
        if ((e != null) && (e.mIsStub)) {
          ac.b(e.mId, true);
        }
        F.c();
        b(0.0F);
        ban.a().a(new bam(false));
        F.setIsActive(false);
        e = null;
        f = null;
        aC = null;
        H = false;
      }
      apb.a(false);
      aa.a();
      m = null;
      localadl = t;
    }
    synchronized (i)
    {
      j.clear();
      k.clear();
      adm localadm = c;
      synchronized (a)
      {
        b.clear();
        c.clear();
        l.clear();
        n = false;
        if (ReleaseManager.f()) {
          u.b(this);
        }
        return;
        Timber.g("ChatFragment", "CHAT-LOG: SWIPED OUT OF CHAT with %s", new Object[] { e.mTheirUsername });
        aut.b();
        ab.a(e, bit.a.DELETE);
        e.r();
        e.mIsUserInConversation = false;
        o();
      }
    }
  }
  
  public final void f_()
  {
    if (mIsVisible) {
      N = true;
    }
    super.f_();
  }
  
  public final boolean g()
  {
    if (I)
    {
      ((CashSwiperView)S.a()).b();
      return true;
    }
    return false;
  }
  
  protected final ala h()
  {
    return new ala(new String[] { "CHAT" });
  }
  
  public final void i()
  {
    az = false;
  }
  
  public final alw k()
  {
    new alw()
    {
      public final boolean a(alx.a paramAnonymousa)
      {
        if (ChatFragment.n(ChatFragment.this).b()) {}
        do
        {
          return false;
          if ((alx.h.contains(c)) && (!TextUtils.equals(f.h(), a))) {
            return true;
          }
        } while (!ChatFragment.z().contains(c));
        return true;
      }
      
      public final boolean b(alx.a paramAnonymousa)
      {
        return (alx.h.contains(c)) && (f != null) && (TextUtils.equals(f.h(), a));
      }
    };
  }
  
  @boh
  public void onCancelInChatSnapEvent(bar parambar)
  {
    ay = false;
    if (mShouldDisplayHereTooltip) {
      aA.setCancelInChatSnapTime(System.currentTimeMillis());
    }
  }
  
  @boh
  public void onCancelQuickSnapEvent(bas parambas)
  {
    ay = false;
  }
  
  @boh
  public void onCashRainEvent(bau parambau)
  {
    if (!mConversation.equals(e)) {
      return;
    }
    a((int)mCount, mCreatedAt);
    aH = true;
  }
  
  @boh
  public void onChatLinkClickedEvent(bax parambax)
  {
    final Object localObject = snapchatUrlSpan;
    final ako localako = mMessage;
    parambax = new AlertDialog.Builder(getActivity());
    String str1;
    if (mType == UrlType.TEL)
    {
      i1 = 2131492998;
      str1 = getString(i1);
      if (!localako.g()) {
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
            } while ((ChatFragment.f(ChatFragment.this) == null) || (!localako.e()));
            if ((localako instanceof ChatMedia)) {}
            for (paramAnonymousDialogInterface = ChatFragment.x();; paramAnonymousDialogInterface = null)
            {
              ChatFragment.x(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), localako, paramAnonymousDialogInterface);
              ChatFragment.t(ChatFragment.this).notifyDataSetChanged();
              return;
            }
          }
          paramAnonymousDialogInterface.dismiss();
        }
      };
      parambax.setItems(new CharSequence[] { str1, str2, str3 }, (DialogInterface.OnClickListener)localObject);
      parambax.create().show();
      return;
      i1 = 2131492999;
      break;
    }
  }
  
  @boh
  public void onChatSwipeStartedEvent(bay parambay)
  {
    if (friend == null) {
      throw new NullPointerException();
    }
    a(friend, true);
  }
  
  @boh
  public void onChatUpdatedEvent(baz parambaz)
  {
    if (e == null) {}
    do
    {
      do
      {
        return;
      } while (!TextUtils.equals(mId, e.mId));
      M();
      if (mMessageId == null) {
        break;
      }
      b(mMessageId);
    } while ((!mScrollToBottom) || (F.c));
    F.c();
    O();
    return;
    if ((mScrollToBottom) && (!F.c)) {}
    for (boolean bool = true;; bool = false)
    {
      g(bool);
      return;
    }
  }
  
  @boh
  public void onClearChatTextEvent(bba parambba)
  {
    if (!E()) {
      B.setText("");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    Z = DictionaryEasyMetric.a();
    mFragmentLayout = paramLayoutInflater.inflate(2130968616, paramViewGroup, false);
    paramLayoutInflater = getResources();
    an = ((int)paramLayoutInflater.getDimension(2131296259));
    ao = ((int)paramLayoutInflater.getDimension(2131296281));
    aq = ((int)paramLayoutInflater.getDimension(2131296282));
    ap = ((int)paramLayoutInflater.getDimension(2131296290));
    aA = ((HereTooltip)c(2131362074));
    aB = ((CashTooltip)c(2131362075));
    ae = new Handler(Looper.getMainLooper());
    Y = new Handler(Looper.getMainLooper());
    W = new bgr(mFragmentLayout, 2131362076, 2131362079);
    S = new bgr(mFragmentLayout, 2131362077, 2131362080, new bgr.a()
    {
      public final void a(View paramAnonymousView)
      {
        ((CashSwiperView)ChatFragment.b(ChatFragment.this).a()).setListener(ChatFragment.this);
      }
    });
    av = new GestureDetectorCompat(getActivity(), new a((byte)0));
    af = new yd(getActivity(), this);
    paramLayoutInflater = (SpyRelativeLayout)mFragmentLayout.findViewById(2131362062);
    paramViewGroup = new SpyRelativeLayout.a()
    {
      public final void a(MotionEvent paramAnonymousMotionEvent)
      {
        if ((!CashUtils.a(f)) || ((g.b()) && (((StreamView)g.a()).e()))) {}
        yd localyd;
        label91:
        label198:
        label203:
        do
        {
          int i;
          do
          {
            return;
            localyd = ChatFragment.c(ChatFragment.this);
            i = paramAnonymousMotionEvent.getActionMasked();
            if ((i == 1) || (i == 3))
            {
              localyd.a();
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
              localyd.a();
              return;
            }
          } while ((i != 0) && (i != 5));
          if (a[0] == null) {
            a[0] = new PointF(paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY());
          }
          if ((paramAnonymousMotionEvent.getPointerCount() > 1) && (a[1] == null)) {
            a[1] = new PointF(paramAnonymousMotionEvent.getX(1), paramAnonymousMotionEvent.getY(1));
          }
        } while ((b.hasMessages(5)) || (paramAnonymousMotionEvent.getPointerCount() < 2) || (d.v_()));
        b.postDelayed(new yd.1(localyd), ViewConfiguration.getLongPressTimeout());
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
    g = new bgr(mFragmentLayout, 2131362069, 2131362081);
    v = c(2131361821);
    w = c(2131362067);
    x = c(2131362070);
    y = c(2131362073);
    L = new ArrayList();
    z = ((TextView)c(2131362065));
    A = ((TextView)c(2131362066));
    B = ((CursorCallbackEditText)c(2131362071));
    C = Float.MIN_VALUE;
    D = Float.MIN_VALUE;
    B.setInputType(49153);
    B.setHorizontallyScrolling(false);
    B.setMaxLines(8);
    B.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, @cgc KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt == 4) || ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.getKeyCode() == 66)))
        {
          ChatFragment.d(ChatFragment.this);
          return true;
        }
        return false;
      }
    });
    B.setOnFocusChangeListener(new View.OnFocusChangeListener()
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
    B.addTextChangedListener(new TextWatcher()
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
          ChatFragment.g(ChatFragment.this).setIsEmoji(axj.a(paramAnonymousCharSequence, false));
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
    paramLayoutInflater = B;
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
    B.setOnTouchListener(new View.OnTouchListener()
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
    E = ((ChatCameraButton)c(2131362072));
    E.setOnClickListener(new View.OnClickListener()
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
        final int i = xu.a(ChatFragment.i(ChatFragment.this));
        paramAnonymousView = h;
        int j = xu.a(ChatFragment.i(ChatFragment.this).getEditableText());
        final int k = ChatFragment.i(ChatFragment.this).getSelectionEnd();
        paramAnonymousView = ChatFragment.this.i;
        paramAnonymousView = ya.a(ChatFragment.f(ChatFragment.this), j + i, false);
        ChatFragment.this.i.a(paramAnonymousView, new ya.a()
        {
          public final void a()
          {
            ChatFragment.a(ChatFragment.this, paramAnonymousView);
            bgp.a(new Runnable()
            {
              public final void run()
              {
                xu localxu = h;
                xu.a(ChatFragment.i(ChatFragment.this), b);
                ChatFragment.q(ChatFragment.this);
                AnalyticsEvents.u(CashUtils.a(c));
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
    E.setOnLongClickListener(new View.OnLongClickListener()
    {
      public final boolean onLongClick(View paramAnonymousView)
      {
        ChatFragment.s(ChatFragment.this);
        return true;
      }
    });
    aa = new axf();
    F = ((LockingAboveTheFoldListView)c(2131362063));
    F.setInterface(this);
    F.setTranscriptMode(1);
    F.setDivider(null);
    F.setDividerHeight(0);
    F.setRecyclerListener(new AbsListView.RecyclerListener()
    {
      public final void onMovedToScrapHeap(View paramAnonymousView)
      {
        paramAnonymousView.getTag();
        avh.b(paramAnonymousView);
      }
    });
    F.setLockingEnabled(true);
    F.setScrollViewCallbacks(this);
    F.setMinimumFooterHeight(ao);
    F.setShouldSubtractStatusBarHeightFromFooter(true);
    ak = new yi(F);
    paramLayoutInflater = (LayoutInflater)getActivity().getSystemService("layout_inflater");
    al = paramLayoutInflater.inflate(2130968620, null);
    F.addHeaderView(al, null, false);
    O = paramLayoutInflater.inflate(2130968622, null);
    O.setOnClickListener(new View.OnClickListener()
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
    P = O.findViewById(2131362083);
    Q = O.findViewById(2131362085);
    F.addHeaderView(O, null, false);
    G = new afr(getActivity(), L, this, this);
    F.setAdapter(G);
    G.b = aG;
    F.setOnItemClickListener(new AdapterView.OnItemClickListener()
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
            } while ((localChatFeedItem.d() == null) || ((localChatFeedItem instanceof Snap)) || ((localChatFeedItem instanceof akg)));
            if ((!localChatFeedItem.O()) || (!localChatFeedItem.Q())) {
              break;
            }
            if ((localChatFeedItem instanceof akh))
            {
              new ys().a((akh)localChatFeedItem);
              return;
            }
            if ((localChatFeedItem instanceof akb))
            {
              ChatFragment.w(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), (akb)localChatFeedItem, true, true);
              return;
            }
          } while (!(localChatFeedItem instanceof CashFeedItem));
          paramAnonymousAdapterView = (CashFeedItem)localChatFeedItem;
          AnalyticsEvents.o(mCashTransaction.a());
          ChatFragment.o(ChatFragment.this);
          i.a(ChatFragment.f(ChatFragment.this), paramAnonymousAdapterView, new ya.b()
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
        } while ((!(localChatFeedItem instanceof ako)) || (!((ako)localChatFeedItem).e()));
        if ((localChatFeedItem instanceof ChatMedia)) {}
        for (paramAnonymousAdapterView = ChatFragment.x();; paramAnonymousAdapterView = null)
        {
          ChatFragment.x(ChatFragment.this).a(ChatFragment.f(ChatFragment.this), (ako)localChatFeedItem, paramAnonymousAdapterView);
          ChatFragment.a(ChatFragment.this, localChatFeedItem.d());
          return;
        }
      }
    });
    paramLayoutInflater = new SwipeableListItemTouchListener(F, SwipeableListItemTouchListener.SwipeDirection.RIGHT, this)
    {
      private long j;
      
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          ymImpl.onTouchEvent(paramAnonymousMotionEvent);
          return super.onTouch(paramAnonymousView, paramAnonymousMotionEvent);
          j = SystemClock.uptimeMillis();
          Object localObject1 = ChatFragment.this;
          Object localObject2 = ((ChatFragment)localObject1).a(paramAnonymousMotionEvent);
          if ((localObject2 instanceof Snap))
          {
            aup localaup = aup.d();
            localObject2 = (Snap)localObject2;
            localObject1 = ((ChatFragment)localObject1).getActivity();
            if (!((Snap)localObject2).f())
            {
              localaup.a((Context)localObject1, (Snap)localObject2, null);
              continue;
              if (SystemClock.uptimeMillis() - j <= 190L)
              {
                localObject1 = ChatFragment.this;
                localObject2 = ((ChatFragment)localObject1).a(paramAnonymousMotionEvent);
                if ((localObject2 instanceof Snap))
                {
                  localaup = aup.d();
                  localObject2 = (Snap)localObject2;
                  localObject1 = e;
                  if (((Snap)localObject2).f()) {
                    if ((localObject2 instanceof aje))
                    {
                      mSnapViewEventAnalytics.a(SnapViewEventAnalytics.SnapViewEventSourceType.CHAT);
                      localaup.a((aje)localObject2, new aiq(false), "chat");
                    }
                    else if ((localObject2 instanceof aji))
                    {
                      yq.a((aji)localObject2);
                      ban.a().a(new baz(mId, ((Snap)localObject2).d()));
                      ban.a().a(new bdb());
                      ni.a("chat");
                    }
                  }
                }
              }
            }
          }
        }
      }
    };
    F.setOnTouchListener(paramLayoutInflater);
    paramViewGroup = new ArrayList(4);
    paramViewGroup.add(paramLayoutInflater.a());
    paramViewGroup.add(new b((byte)0));
    paramViewGroup.add(new c((byte)0));
    paramViewGroup.add(new aql(q, "Chat"));
    ag = new aqn(paramViewGroup);
    F.setOnScrollListener(ag);
    ah = ((ViewStub)getActivity().findViewById(2131362378));
    T = new bgr(mFragmentLayout, 2131362078, 2131362280);
    try
    {
      d = ((ari)getActivity()).l();
      if (paramBundle != null)
      {
        paramLayoutInflater = paramBundle.getString("friend_username");
        if (!TextUtils.isEmpty(paramLayoutInflater)) {
          c = paramLayoutInflater;
        }
        paramLayoutInflater = (HashMap)paramBundle.getSerializable("message_drafts");
        aw.putAll(paramLayoutInflater);
        paramLayoutInflater = (HashMap)paramBundle.getSerializable("cashtag_positions");
        ax.putAll(paramLayoutInflater);
      }
      paramLayoutInflater = ((WindowManager)getActivity().getSystemService("window")).getDefaultDisplay();
      paramViewGroup = new Point();
      paramLayoutInflater.getSize(paramViewGroup);
      ak.b = x;
      aD = true;
      a(true);
      nf.e();
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
    ChatCameraButton localChatCameraButton = E;
    if (a != null) {
      a.release();
    }
  }
  
  @boh
  public void onEndpointsRefreshedEvent(bfr.a parama)
  {
    C();
  }
  
  @boh
  public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent paramSnapMessageFeedRefreshedEvent)
  {
    G.notifyDataSetChanged();
  }
  
  @boh
  public void onFeedTimerChangeEvent(bbl parambbl)
  {
    if (!TextUtils.equals(c, mFriendUsername)) {
      return;
    }
    G.notifyDataSetChanged();
  }
  
  @boh
  public void onLoadConversationPageTaskEvent(bce parambce)
  {
    a(mTaskStatus);
  }
  
  @boh
  public void onLoadSnapMediaEvent(LoadSnapMediaEvent paramLoadSnapMediaEvent)
  {
    G.notifyDataSetChanged();
  }
  
  public void onPause()
  {
    super.onPause();
    Object localObject2;
    Object localObject1;
    if ((mIsVisible) && (e != null))
    {
      N = true;
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
      C();
      B.clearFocus();
      A();
      ant.a().b();
      D();
      return;
    }
    label143:
    Object localObject3;
    if (((KeyguardManager)((Context)localObject2).getSystemService("keyguard")).inKeyguardRestrictedInputMode())
    {
      localObject2 = ajx.l();
      i1 = ((List)localObject1).size();
      if (i1 <= 0) {
        break label433;
      }
      localObject3 = (ChatFeedItem)((List)localObject1).get(i1 - 1);
      if ((((ChatFeedItem)localObject3).j().equals(localObject2)) || (((localObject3 instanceof ako)) && (((ako)localObject3).g()))) {
        break label433;
      }
      if (!(localObject3 instanceof StatefulChatFeedItem)) {}
    }
    label229:
    label433:
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
      localObject2 = G.c;
      ((agb)localObject2).a(System.currentTimeMillis());
      Timber.c("ReleaseWindow", "getLatestSeenItemTimestamp - latestItemTimestamp " + c.a + " lastNotifiedTimestamp " + c.b, new Object[0]);
      long l1 = c.a;
      localObject2 = (AlarmManager)((Context)localObject1).getSystemService("alarm");
      Object localObject4 = o;
      localObject3 = e.mId;
      localObject4 = ((aol)localObject4).b((Context)localObject1);
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
  
  @boh
  public void onPresenceUpdatedEvent(bcp parambcp)
  {
    if ((mIsVisible) && (e != null) && (TextUtils.equals(username, e.i())))
    {
      G();
      if (g.b()) {
        ((StreamView)g.a()).b(videoReceived);
      }
    }
  }
  
  public void onResume()
  {
    nf.d();
    super.onResume();
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment onResume", new Object[0]);
    N = false;
    G.notifyDataSetChanged();
    if (k)
    {
      k = false;
      Timber.c("ChatFragment", "Make this fragment visible because it was selected as the current item of the view pager before it was created", new Object[0]);
      f(true);
      b(0.0F);
    }
    nf.e();
    if (e != null) {
      G();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (f != null) {
      paramBundle.putString("friend_username", f.h());
    }
    paramBundle.putSerializable("message_drafts", aw);
    paramBundle.putSerializable("cashtag_positions", ax);
  }
  
  @boh
  public void onSecureChatSessionConnectedEvent(bde parambde)
  {
    if (e != null) {
      e.b(mIsVisible);
    }
  }
  
  @boh
  public void onSnapSelectedForReplayEvent(bdp parambdp)
  {
    G.notifyDataSetChanged();
  }
  
  @boh
  public void onSnapViewingEvent(bdm parambdm)
  {
    if (mBeingViewed) {
      ant.a().b();
    }
    while (f == null) {
      return;
    }
    B();
    g(false);
  }
  
  public final void p()
  {
    avh.a(getActivity(), B);
    h(false);
  }
  
  public final int q()
  {
    return M;
  }
  
  public final void r()
  {
    Timber.g("ChatFragment", "CHAT-LOG: ChatFragment onUnlocked", new Object[0]);
    if (aF != null) {
      aF.b();
    }
  }
  
  public final void u()
  {
    if ((e != null) && (e.mIsRecipientPresent))
    {
      yq localyq = n;
      ChatConversation localChatConversation = e;
      long l1 = ((CashSwiperView)S.a()).getDollarsSwiped();
      long l2 = ((CashSwiperView)S.a()).getFirstSwipeMillis();
      Object localObject = ajx.l();
      if (localObject != null)
      {
        localObject = (bha)asz.a(bii.a.CASH_RAIN, (String)localObject, localChatConversation.y(), mMessagingAuthToken);
        ((bha)localObject).b(Long.valueOf(l1));
        ((bha)localObject).a(Long.valueOf(l2));
        localyq.a(localChatConversation, (bhl)localObject);
      }
    }
  }
  
  public final void v()
  {
    I = false;
    J = null;
    if (!az) {
      J();
    }
    if (((CashSwiperView)S.a()).getDollarsSwiped() == 0) {
      L();
    }
  }
  
  public final boolean v_()
  {
    return I;
  }
  
  public final void w()
  {
    if ((((CashSwiperView)S.a()).getDollarsSwiped() == 0) || (e == null)) {
      return;
    }
    if (J == CashSwiperView.SwipeActivationMethod.DOLLARS) {
      B.setText("");
    }
    K();
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
        paramMotionEvent1 = (afr.c)a.getChildAt(i - j).getTag();
        if ((paramMotionEvent1 == null) || (a == null) || (!a.am())) {}
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
          if (((!yi.a(localChatFeedItem, paramAbsListView)) && (!ChatFragment.n(ChatFragment.this).b())) || (bfd.a(ChatFragment.e(ChatFragment.this))) || (bfd.b(ChatFragment.e(ChatFragment.this))))
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
      if ((!ChatFragment.t(ChatFragment.this).isEmpty()) && (paramAbsListView.getFirstVisiblePosition() < 20) && (!ChatFragment.u(ChatFragment.this).isEmpty()) && (ChatFragment.f(ChatFragment.this) != null))
      {
        paramAbsListView = ChatFragment.N(ChatFragment.this);
        if (mRenderSize >= mMessageCount) {
          break label91;
        }
      }
      label91:
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