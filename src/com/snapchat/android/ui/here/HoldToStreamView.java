package com.snapchat.android.ui.here;

import ahj;
import ahl;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Shader.TileMode;
import android.hardware.Camera;
import android.os.Handler;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout.LayoutParams;
import aqg;
import ats;
import avh;
import avk;
import ban;
import bao;
import bap;
import bdg;
import beu;
import bi;
import bic;
import bj;
import bj.a;
import bl;
import boh;
import bp;
import cgb;
import cgc;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.addlive.view.ALVideoTextureView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.HereAnalytics.OutgoingVideoState;
import com.snapchat.android.analytics.HereAnalytics.SetupPhase;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.camera.model.CameraModel.CameraType;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ConnectingRippleView;
import com.snapchat.android.ui.CustomVolumeView.VolumeViewType;
import com.snapchat.android.ui.QuickSnapOnboardingOverlay;
import com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality;
import com.squareup.otto.Bus;
import hu;
import vq;
import yq;

@TargetApi(14)
public class HoldToStreamView
  extends StreamView
{
  private static final String l = HoldToStreamView.class.getSimpleName();
  private static HoldToStreamView z;
  private SharedPreferences A;
  private ChatConversation B;
  private boolean C;
  private boolean D;
  private boolean E;
  private float F;
  private boolean G;
  private boolean H = false;
  private long I = 0L;
  private boolean J = false;
  private bj K;
  private bj L;
  private final Bus M;
  private final avh N;
  private boolean O = false;
  private byte[] P;
  private final HereAnalytics Q = new HereAnalytics();
  private boolean R = false;
  private Activity S;
  private final Runnable T = new Runnable()
  {
    public final void run()
    {
      if (h.getVisibility() != 0) {}
      while (f.getScaleX() > 0.35000002F) {
        return;
      }
      HoldToStreamView.b(HoldToStreamView.this);
    }
  };
  protected StreamView.a a;
  protected boolean b = false;
  protected ahl c = new ahj();
  protected MotionEvent d;
  protected boolean e = false;
  protected View f;
  protected LockToStreamView g;
  protected ALVideoTextureView h;
  protected ConnectingRippleView i;
  private int m = 1000;
  private long n;
  private float o;
  private MotionEvent p;
  private ViewPropertyAnimator q;
  private GestureDetector r;
  private CameraModel.CameraType s;
  private CameraModel.CameraType t;
  private QuickSnapOnboardingOverlay u;
  private boolean v = false;
  private final Handler w = new Handler();
  private float x;
  private boolean y;
  
  public HoldToStreamView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
    M = ban.a();
    N = new avh(paramContext);
  }
  
  public HoldToStreamView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    M = ban.a();
    N = new avh(paramContext);
  }
  
  public HoldToStreamView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    M = ban.a();
    N = new avh(paramContext);
  }
  
  private void a(Context paramContext)
  {
    if (isInEditMode()) {
      return;
    }
    Timber.c(l, "Setting up the HoldToStream view.", new Object[0]);
    z = this;
    x = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    i = new ConnectingRippleView(paramContext);
    addView(i);
    f = k.a(paramContext);
    addView(f);
    A = PreferenceManager.getDefaultSharedPreferences(paramContext);
    u = new QuickSnapOnboardingOverlay(paramContext);
    addView(u);
    u.setVisibility(8);
    bl localbl = new bl(320.0D, 24.0D);
    bp localbp = avk.a();
    K = localbp.a();
    K.a(localbl);
    K.a(new bi()
    {
      public final void a(bj paramAnonymousbj)
      {
        if (!e) {
          return;
        }
        f.setX((float)d.a - f.getWidth() / 2);
        g.setX((float)d.a - g.getRadius());
        g.b();
        HoldToStreamView.a(HoldToStreamView.this);
      }
    });
    L = localbp.a();
    L.a(localbl);
    L.a(new bi()
    {
      public final void a(bj paramAnonymousbj)
      {
        if (!e) {}
        while (g.d) {
          return;
        }
        f.setY((float)d.a);
        HoldToStreamView.a(HoldToStreamView.this);
      }
    });
    g = new LockToStreamView(paramContext, f, Q);
    g.setY(getResources().getDimension(2131296332));
    addView(g, 0, 0);
    r = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener());
    r.setOnDoubleTapListener(new GestureDetector.SimpleOnGestureListener()
    {
      public final boolean onDoubleTap(MotionEvent paramAnonymousMotionEvent)
      {
        if (HoldToStreamView.k(HoldToStreamView.this)) {
          return true;
        }
        if (HoldToStreamView.l(HoldToStreamView.this) == CameraModel.CameraType.BACK_FACING) {
          HoldToStreamView.a(HoldToStreamView.this, CameraModel.CameraType.FRONT_FACING);
        }
        for (;;)
        {
          HoldToStreamView.m(HoldToStreamView.this);
          return true;
          HoldToStreamView.a(HoldToStreamView.this, CameraModel.CameraType.BACK_FACING);
        }
      }
    });
    setWillNotDraw(false);
  }
  
  private void c(DisconnectReason paramDisconnectReason)
  {
    if (!b) {}
    do
    {
      return;
      b = false;
    } while (g.d);
    M.a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.HIGH));
    g();
    g.a();
    Q.a(paramDisconnectReason);
  }
  
  private void f()
  {
    float f1 = f.getX();
    float f2 = f.getWidth() / 2;
    float f3 = f.getY();
    float f4 = f.getHeight() / 2;
    i.setRippleCenter(f1 + f2, f3 + f4);
  }
  
  private void g()
  {
    J = false;
    b = false;
    c.d();
    l();
    k();
    a.d(false);
    j();
    i.setRipplesEnabled(false);
    u.setVisibility(8);
    M.a(new bdg(true));
  }
  
  public static HoldToStreamView getLastInstance()
  {
    return z;
  }
  
  private void h()
  {
    if (v) {
      return;
    }
    q = f.animate();
    if (q == null) {
      throw new NullPointerException();
    }
    q.alpha(1.0F);
    i();
    v = true;
    g.a(255);
  }
  
  private void i()
  {
    q.setDuration(250L);
    q.setListener(new AnimatorListenerAdapter()
    {
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        HoldToStreamView.c(HoldToStreamView.this);
      }
    });
  }
  
  private void j()
  {
    boolean bool2 = true;
    int j;
    int k;
    if ((h != null) && (h.getVisibility() == 0))
    {
      j = 1;
      if ((!b) && (!g.d)) {
        break label65;
      }
      k = 1;
      label41:
      if ((j == 0) || (k == 0)) {
        break label70;
      }
    }
    label65:
    label70:
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool1 != y) {
        break label75;
      }
      return;
      j = 0;
      break;
      k = 0;
      break label41;
    }
    label75:
    avh localavh;
    if (bool1)
    {
      M.a(new beu(CustomVolumeView.VolumeViewType.HERE));
      y = bool1;
      localavh = N;
      if (bool1) {
        break label166;
      }
    }
    label166:
    for (bool1 = bool2;; bool1 = false)
    {
      localavh.a(this, bool1);
      postDelayed(new Runnable()
      {
        public final void run()
        {
          StreamView.k.b();
        }
      }, getResources().getInteger(2131427331));
      return;
      M.a(new beu(CustomVolumeView.VolumeViewType.MEDIA));
      break;
    }
  }
  
  private void k()
  {
    boolean bool = false;
    if ((h == null) || (f == null)) {
      return;
    }
    if (h.getVisibility() == 0) {}
    for (int j = 1;; j = 0)
    {
      if ((j != 0) || (e)) {
        bool = true;
      }
      setKeepScreenOn(bool);
      return;
    }
  }
  
  private void l()
  {
    if (q != null) {
      q.cancel();
    }
    f.setVisibility(4);
    e = false;
  }
  
  private void m()
  {
    w.removeCallbacks(T);
    if (g.d) {}
    for (long l1 = 5000L;; l1 = 2000L)
    {
      w.postDelayed(T, l1);
      return;
    }
  }
  
  public final void a()
  {
    Q.mAdlConnectedToScope = true;
  }
  
  public final void a(@cgb Activity paramActivity, @cgb StreamView.a parama)
  {
    S = paramActivity;
    if (h == null)
    {
      h = new ALVideoTextureView(S);
      h.setVisibility(4);
      c.a(h);
      k();
      h.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.p();
        }
      });
      h.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          return onTouchEvent(paramAnonymousMotionEvent);
        }
      });
      addView(h);
      g.bringToFront();
      i.bringToFront();
      f.bringToFront();
    }
    a = parama;
    R = true;
  }
  
  public final void a(@cgb MotionEvent paramMotionEvent)
  {
    d = MotionEvent.obtainNoHistory(paramMotionEvent);
    if ((h == null) || (f == null)) {}
    do
    {
      return;
      if (g != null) {
        break;
      }
    } while (!b);
    int j;
    while ((b) || (g.d))
    {
      j = paramMotionEvent.getActionMasked();
      if ((j != 1) && (j != 3) && (j != 5) && (j != 6)) {
        break label119;
      }
      c(DisconnectReason.HERE_BTN_RELEASED);
      if (!g.d) {
        break;
      }
      M.a(new bdg(true));
      return;
    }
    return;
    label119:
    label198:
    label278:
    label281:
    LockToStreamView localLockToStreamView;
    label337:
    float f1;
    float f2;
    float f3;
    float f4;
    boolean bool1;
    label417:
    boolean bool2;
    label429:
    boolean bool3;
    label457:
    label508:
    Object localObject;
    if (paramMotionEvent.getRawY() > o)
    {
      u.setUpperRegionHighlight(false);
      paramMotionEvent = CameraModel.CameraType.FRONT_FACING;
      long l1 = System.currentTimeMillis() - I;
      if (t != paramMotionEvent)
      {
        if (l1 < m) {
          I = System.currentTimeMillis();
        }
        t = paramMotionEvent;
      }
      if (t == s) {
        break label913;
      }
      j = 1;
      if ((j != 0) && ((l1 > m) || (g.d)))
      {
        M.a(new bap(CameraDisplayState.SHOW, t));
        s = t;
        I = System.currentTimeMillis();
      }
      if (p != null) {
        break label919;
      }
      p = MotionEvent.obtain(d);
      j = 0;
      if (j != 0)
      {
        m();
        h();
      }
      localLockToStreamView = g;
      paramMotionEvent = d;
      if (!e)
      {
        if ((c == null) && (localLockToStreamView.getWidth() != 0) && (localLockToStreamView.getHeight() != 0)) {
          break label988;
        }
        float f5;
        if ((!d) && (!e))
        {
          f1 = localLockToStreamView.getParentHeight();
          f2 = paramMotionEvent.getRawY();
          f3 = localLockToStreamView.getParentHeight() / 2;
          f4 = localLockToStreamView.getResources().getDimension(2131296331);
          f5 = localLockToStreamView.getResources().getDimension(2131296328);
          if (Math.abs(f2 - f3) >= f4) {
            break label1130;
          }
          bool1 = true;
          if (localLockToStreamView.getVisibility() != 4) {
            break label1136;
          }
          bool2 = true;
          if ((!f) && (Math.abs(f2 - localLockToStreamView.getParentHeight()) <= f5)) {
            break label1142;
          }
          bool3 = true;
          f = bool3;
          if ((f) && (bool1 != bool2))
          {
            f4 = localLockToStreamView.getResources().getDimension(2131296333);
            if (!bool1) {
              break label1156;
            }
            if (f2 >= f3) {
              break label1148;
            }
            f1 = -f4;
            localObject = localLockToStreamView.animate();
            ((ViewPropertyAnimator)localObject).translationY(f1);
            ((ViewPropertyAnimator)localObject).setListener(new LockToStreamView.1(localLockToStreamView, bool1));
            ((ViewPropertyAnimator)localObject).setDuration(150L);
            e = true;
          }
        }
        localLockToStreamView.a(paramMotionEvent, false);
        bool1 = localLockToStreamView.a(paramMotionEvent);
        if (bool1 != d)
        {
          d = bool1;
          if (!bool1) {
            break label1233;
          }
          f1 = g.getWidth();
          f2 = g.getScaleX();
          f3 = localLockToStreamView.getResources().getDimensionPixelSize(2131296330) * 2 + f1 * f2;
          j = localLockToStreamView.getResources().getDimensionPixelOffset(2131296326);
          f4 = localLockToStreamView.getParentHeight();
          f5 = f4 / 2.0F;
          f2 = j + f3 / 2.0F;
          f1 = f2;
          if (paramMotionEvent.getRawY() > f5) {
            f1 = f4 - f2;
          }
          paramMotionEvent = g.animate();
          paramMotionEvent.translationX(localLockToStreamView.getX() + localLockToStreamView.getRadius() - g.getWidth() / 2);
          paramMotionEvent.translationY(f1 - g.getHeight() / 2);
          paramMotionEvent.setDuration(300L);
          paramMotionEvent = localLockToStreamView.animate();
          f2 = f3 / localLockToStreamView.getHeight();
          paramMotionEvent.scaleX(f3 / localLockToStreamView.getWidth());
          paramMotionEvent.scaleY(f2);
          paramMotionEvent.translationY(f1 - f3 / 2.0F);
          paramMotionEvent.setListener(new LockToStreamView.2(localLockToStreamView));
          paramMotionEvent.setDuration(300L);
          localLockToStreamView.a(255, 0);
          e = true;
          localLockToStreamView.invalidate();
          if (localLockToStreamView.getY() <= localLockToStreamView.getParentHeight() / 2) {
            break label1220;
          }
          j = 1;
          label855:
          localObject = new EasyMetric("HERE_PUBLISH_LOCKED");
          if (j == 0) {
            break label1226;
          }
          paramMotionEvent = "bottom";
          label876:
          ((EasyMetric)localObject).a("position", paramMotionEvent).d();
        }
      }
    }
    for (;;)
    {
      localLockToStreamView.bringToFront();
      invalidate();
      return;
      u.setUpperRegionHighlight(true);
      paramMotionEvent = CameraModel.CameraType.BACK_FACING;
      break;
      label913:
      j = 0;
      break label198;
      label919:
      f1 = p.getRawX() - d.getRawX();
      f2 = p.getRawY() - d.getRawY();
      if ((float)Math.sqrt(f1 * f1 + f2 * f2) <= x) {
        break label278;
      }
      p = MotionEvent.obtain(d);
      j = 1;
      break label281;
      label988:
      c = new Paint();
      c.setStyle(Paint.Style.FILL);
      c.setAntiAlias(true);
      j = localLockToStreamView.getWidth() - (int)(2.0F * b.getStrokeWidth());
      localObject = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(localLockToStreamView.getResources(), 2130837841), j, j, true);
      c.setShader(new BitmapShader((Bitmap)localObject, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      i = (localLockToStreamView.getResources().getDimensionPixelSize(2131296329) / localLockToStreamView.getWidth());
      h = (i * 0.5F);
      localLockToStreamView.invalidate();
      break label337;
      label1130:
      bool1 = false;
      break label417;
      label1136:
      bool2 = false;
      break label429;
      label1142:
      bool3 = false;
      break label457;
      label1148:
      f1 = f4 + f1;
      break label508;
      label1156:
      if (f2 < f3) {
        localLockToStreamView.setY(-f4);
      }
      for (;;)
      {
        localLockToStreamView.setVisibility(0);
        if (c != null) {
          c.setAlpha(255);
        }
        f1 = localLockToStreamView.a(f2, f3);
        break;
        localLockToStreamView.setY(f4 + f1);
      }
      label1220:
      j = 0;
      break label855;
      label1226:
      paramMotionEvent = "top";
      break label876;
      label1233:
      localLockToStreamView.a(0, 255);
      localLockToStreamView.a(paramMotionEvent, true);
      localLockToStreamView.invalidate();
    }
  }
  
  public final void a(ChatConversation paramChatConversation)
  {
    if (!R) {}
    bic localbic;
    do
    {
      return;
      if (!c.b()) {
        c.a(S, this, Q);
      }
      localbic = mHereAuth;
    } while (localbic == null);
    B = paramChatConversation;
    c.a(localbic);
    D = true;
  }
  
  public final void a(@cgc DisconnectReason paramDisconnectReason)
  {
    D = false;
    HereAnalytics localHereAnalytics = Q;
    mAdlConnectedToScope = false;
    localHereAnalytics.a(paramDisconnectReason);
    setCanStreamVideo(false, paramDisconnectReason);
  }
  
  public final void a(final boolean paramBoolean)
  {
    if (h == null) {
      return;
    }
    post(new Runnable()
    {
      public final void run()
      {
        Object localObject = HoldToStreamView.d(HoldToStreamView.this);
        boolean bool = paramBoolean;
        if (mIsDisplayingVideo != bool)
        {
          mIsDisplayingVideo = bool;
          yq.a().a((ChatConversation)localObject, mAmIPresent, mIsRecipientPresent, mIsDisplayingVideo);
        }
        a.b(paramBoolean);
        a.c(paramBoolean);
        HoldToStreamView.e(HoldToStreamView.this);
        HoldToStreamView.f(HoldToStreamView.this);
        if (paramBoolean)
        {
          HoldToStreamView.g(HoldToStreamView.this);
          a.p();
          localObject = HoldToStreamView.i(HoldToStreamView.this);
          bool = paramBoolean;
          if (mIsVideoIncoming != bool)
          {
            mIsVideoIncoming = bool;
            if (!mIsVideoIncoming) {
              break label228;
            }
            new EasyMetric("HERE_INCOMING_SESSION_START").d();
            mVideoIncomingStart = SystemClock.elapsedRealtime();
          }
        }
        for (;;)
        {
          ((HereAnalytics)localObject).a("setIncomingVideo(" + Boolean.toString(bool) + ")");
          invalidate();
          return;
          HoldToStreamView.h(HoldToStreamView.this);
          break;
          label228:
          long l = SystemClock.elapsedRealtime() - mVideoIncomingStart;
          hu localhu = new hu();
          view_time_sec = Double.valueOf(l / 1000.0D);
          ScAnalyticsEventEngine.a(localhu);
          new EasyMetric("HERE_INCOMING_SESSION_END").a(l).a("reason", null).d();
        }
      }
    });
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    if (j.getInfo() == null) {
      throw new IllegalStateException("Must call setCameraInfo() first.");
    }
    if ((j.getWidth() == 0) || (j.getHeight() == 0)) {
      throw new IllegalStateException("Must call setCameraPreviewSize() first.");
    }
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      if ((b) || ((g != null) && (g.d)))
      {
        if (H)
        {
          H = false;
          post(new Runnable()
          {
            public final void run()
            {
              HoldToStreamView.j(HoldToStreamView.this);
            }
          });
        }
        c.a(paramArrayOfByte, j);
        k.a(j.getWidth(), j.getHeight(), f.getMeasuredWidth(), f.getMeasuredHeight(), j.getInfo());
        if (P != null) {
          k.a(P);
        }
        while (O)
        {
          P = ((byte[])paramArrayOfByte.clone());
          M.a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.LOW));
          O = false;
          return;
          k.a(paramArrayOfByte);
        }
      }
    }
  }
  
  public final void b()
  {
    M.a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.HIGH));
    if (!R) {
      return;
    }
    c.a(DisconnectReason.L2S_SWIPE_OUT);
    c.a();
    a.c(false);
    S = null;
    a = null;
    R = false;
  }
  
  public final void b(@cgb DisconnectReason paramDisconnectReason)
  {
    M.a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.HIGH));
    if (!R) {
      return;
    }
    c.a(paramDisconnectReason);
    l();
    k();
    a.c(false);
  }
  
  public final void b(boolean paramBoolean)
  {
    C = paramBoolean;
    Object localObject = i;
    if ((b) && (!C)) {}
    for (boolean bool = true;; bool = false)
    {
      ((ConnectingRippleView)localObject).setRipplesEnabled(bool);
      if (paramBoolean)
      {
        localObject = Q;
        if (mOutgoingVideoState == HereAnalytics.OutgoingVideoState.CONNECTING)
        {
          mOutgoingVideoState = HereAnalytics.OutgoingVideoState.CONNECTED;
          long l1 = SystemClock.elapsedRealtime();
          long l2 = mVideoOutgoingStart;
          ((HereAnalytics)localObject).a(HereAnalytics.SetupPhase.HERE_CONFIRMED);
          new EasyMetric("HERE_OUTGOING_ACKED").a(l1 - l2).d();
        }
      }
      return;
    }
  }
  
  public final void c()
  {
    int k = 1;
    O = true;
    t = CameraModel.CameraType.FRONT_FACING;
    s = CameraModel.CameraType.FRONT_FACING;
    M.a(new bap(CameraDisplayState.SHOW, t));
    I = System.currentTimeMillis();
    if (!c.b())
    {
      localObject1 = getContext();
      if (localObject1 != null) {
        AlertDialogUtils.a("Cannot connect", (Context)localObject1);
      }
    }
    while (b) {
      return;
    }
    b = true;
    k.a();
    f.setScaleX(0.0F);
    f.setScaleY(0.0F);
    int j = getResources().getDimensionPixelSize(2131296330);
    float f1 = f.getWidth();
    f1 = j * 2 + f1 * 0.4F;
    updateViewLayout(g, new FrameLayout.LayoutParams((int)f1, (int)f1));
    K.a(getMeasuredWidth());
    L.a(getMeasuredHeight());
    c.c();
    if (q != null) {
      q.cancel();
    }
    e = true;
    if (d != null)
    {
      f.setX(d.getRawX() - f.getWidth() / 2);
      f.setY(d.getRawY() - f.getHeight() / 2);
      f();
    }
    f.setVisibility(0);
    g.bringToFront();
    k();
    a.p();
    a.d(true);
    j();
    Object localObject1 = i;
    boolean bool;
    label345:
    label466:
    Object localObject2;
    if ((b) && (!C))
    {
      bool = true;
      ((ConnectingRippleView)localObject1).setRipplesEnabled(bool);
      F = 1.0F;
      E = true;
      o = vq.a(getContext());
      if (Camera.getNumberOfCameras() > 1)
      {
        u.setHeightThreshold((int)o);
        u.setVisibility(0);
        u.bringToFront();
        j = A.getInt(SharedPreferenceKey.VIDEO_CHAT_ONBOARDING_REPEATS.getKey(), 0);
        if (j >= 5) {
          break label638;
        }
        localObject1 = A.edit();
        ((SharedPreferences.Editor)localObject1).putInt(SharedPreferenceKey.VIDEO_CHAT_ONBOARDING_REPEATS.getKey(), j + 1);
        ((SharedPreferences.Editor)localObject1).apply();
        j = 1;
        localObject2 = u;
        if (j == 0) {
          break label643;
        }
        localObject1 = QuickSnapOnboardingOverlay.OverlayMode.MODE_SOLID_EXPIRE;
        label481:
        ((QuickSnapOnboardingOverlay)localObject2).setOverlayMode((QuickSnapOnboardingOverlay.OverlayMode)localObject1);
      }
      M.a(new bdg(false));
      invalidate();
      localObject1 = Q;
      if (mOutgoingVideoState == HereAnalytics.OutgoingVideoState.DISCONNECTED) {
        break label651;
      }
      j = k;
      label526:
      if (j != 0) {
        break label654;
      }
      mOutgoingVideoState = HereAnalytics.OutgoingVideoState.CONNECTING;
      if (mTimeStartCanStreamVideo != -1L) {
        break label656;
      }
    }
    label638:
    label643:
    label651:
    label654:
    label656:
    for (long l1 = -1L;; l1 = SystemClock.elapsedRealtime() - mTimeStartCanStreamVideo)
    {
      bool = mAdlConnectedToScope;
      localObject2 = new EasyMetric("HERE_OUTGOING_SESSION_START");
      if (l1 != -1L) {
        ((EasyMetric)localObject2).a(l1);
      }
      ((EasyMetric)localObject2).a("is_connected_to_scope", Boolean.valueOf(bool)).d();
      mVideoOutgoingStart = SystemClock.elapsedRealtime();
      mTimeStartCanStreamVideo = -1L;
      ((HereAnalytics)localObject1).a("startHoldingToStream()");
      return;
      bool = false;
      break label345;
      j = 0;
      break label466;
      localObject1 = QuickSnapOnboardingOverlay.OverlayMode.MODE_BLINK;
      break label481;
      j = 0;
      break label526;
      break;
    }
  }
  
  public final boolean d()
  {
    return y;
  }
  
  protected void dispatchDraw(@cgb Canvas paramCanvas)
  {
    float f2 = 1.0F;
    if ((d == null) || (f == null) || (!e))
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    float f3 = (float)(SystemClock.elapsedRealtime() - n) / 400.0F - 1.0F;
    float f1;
    label91:
    label116:
    label186:
    int j;
    if ((!g.d) && (-1.0F < f3) && (f3 < 1.0F))
    {
      f1 = (float)Math.abs(Math.sin(f3 * 3.141592653589793D / 2.0D));
      if (f3 > 0.0F) {
        G = false;
      }
      f3 = F;
      if (!E) {
        break label306;
      }
      F = ats.a(f3, f2, 0.04F);
      if (F < 0.01F) {
        c(DisconnectReason.CONNECTION_LOST);
      }
      if ((h == null) || (h.getVisibility() != 0)) {
        break label311;
      }
      f2 = F * ats.a(f.getScaleX(), 0.3F, 0.08F);
      if (f.getScaleX() == f2) {
        break label336;
      }
      j = 1;
      label201:
      f.setScaleX(f2);
      f.setScaleY(f1 * f2);
      if (j != 0) {
        g.b();
      }
      f1 = f.getWidth() * f.getScaleX() / 2.0F;
      i.setRippleScale(f1);
      k.a();
      K.b(d.getRawX());
      if (!g.d) {
        break label342;
      }
      f();
    }
    for (;;)
    {
      invalidate();
      break;
      f1 = 1.0F;
      break label91;
      label306:
      f2 = 0.0F;
      break label116;
      label311:
      f2 = F * ats.a(f.getScaleX(), 0.4F, 0.08F);
      break label186;
      label336:
      j = 0;
      break label201;
      label342:
      f1 = f.getWidth();
      L.b(d.getRawY() - f.getHeight() / 2 - f2 * (0.9F * f1));
    }
  }
  
  public final boolean e()
  {
    return e;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    M.c(this);
  }
  
  @boh
  public void onCameraReadyEvent(bao parambao)
  {
    if ((ready) && (!isChangingQuality))
    {
      n = SystemClock.elapsedRealtime();
      return;
    }
    if ((ready) && (isChangingQuality)) {
      P = null;
    }
    G = true;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    M.b(this);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LockToStreamView localLockToStreamView = g;
    if ((!d) && (!e) && (localLockToStreamView.getVisibility() == 0)) {
      localLockToStreamView.setY(localLockToStreamView.a(localLockToStreamView.getY(), localLockToStreamView.getParentHeight() / 2));
    }
    g.b();
    k.b();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if (g == null)
    {
      bool = super.onTouchEvent(paramMotionEvent);
      return bool;
    }
    if (g.d)
    {
      h();
      m();
    }
    int j = paramMotionEvent.getActionMasked();
    if (((g.d) && (g.a(paramMotionEvent)) && (j == 0)) || (J))
    {
      switch (j)
      {
      }
      for (;;)
      {
        J = true;
        b = true;
        a(paramMotionEvent);
        if ((j != 3) && (j != 1) && (j != 6)) {
          break;
        }
        J = false;
        return true;
        M.a(new bdg(false));
      }
    }
    r.onTouchEvent(paramMotionEvent);
    if (g.d) {
      ((View)getParent()).onTouchEvent(paramMotionEvent);
    }
    return g.d;
  }
  
  public void setCanStreamVideo(boolean paramBoolean, @cgc DisconnectReason paramDisconnectReason)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramBoolean) && (D))
    {
      bool1 = true;
      E = bool1;
      if (!paramBoolean)
      {
        Q.a(paramDisconnectReason);
        g.a();
        g();
        M.a(new ChangePreviewQualityEvent(ChangePreviewQualityEvent.PreviewQuality.HIGH));
      }
      paramDisconnectReason = Q;
      if (mTimeStartCanStreamVideo == -1L) {
        break label106;
      }
      bool1 = bool2;
      label80:
      if (paramBoolean != bool1) {
        if (!paramBoolean) {
          break label111;
        }
      }
    }
    label106:
    label111:
    for (long l1 = SystemClock.elapsedRealtime();; l1 = -1L)
    {
      mTimeStartCanStreamVideo = l1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label80;
    }
  }
  
  public void setLiveChatProvider(ahl paramahl)
  {
    c = paramahl;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HoldToStreamView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */