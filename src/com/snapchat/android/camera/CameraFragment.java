package com.snapchat.android.camera;

import aio;
import akf.a;
import akn;
import akr;
import aku.a;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.ImageFormat;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.Area;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import aoo;
import aoo.1;
import aop;
import aph;
import att;
import aux;
import avc;
import avf;
import avv;
import awf;
import awj;
import awp;
import awy;
import azy;
import ban;
import bbk;
import bbl;
import bbo;
import bbp;
import bbq;
import bbr;
import bbs;
import bbt;
import bbu;
import bcg;
import bcv;
import bdd;
import bdg;
import bdr;
import bdv;
import bdz;
import bea;
import bed;
import beg;
import bej;
import bem;
import bev;
import bfe;
import bff;
import bfk;
import bfz;
import bhp;
import bpi;
import chc;
import chd;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetricManager;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.cameraview.CameraView.3;
import com.snapchat.android.camera.cameraview.CameraView.b;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.CameraModel.CameraType;
import com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper;
import com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType;
import com.snapchat.android.camera.videocamera.VideoCameraHandler.c;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.addfriends.AddedMeFragment;
import com.snapchat.android.fragments.addfriends.ProfileFragment;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.model.Mediabryo.a;
import com.snapchat.android.notification.AndroidNotificationManager.Destination;
import com.snapchat.android.scan.SnapScan;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.here.HoldToStreamView;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.util.Property;
import com.snapchat.android.util.StartupPath;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.fragment.SnapchatFragment.a;
import com.squareup.otto.Bus;
import dr;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import javax.inject.Inject;
import nw;
import of;
import og;
import oj;
import ox;
import wg;
import wi;
import wj;
import wl;
import wm;
import wn;
import wo;
import wp;
import wr;
import ws;
import wv;
import wy.a;
import wy.b;
import wy.c;
import xb;
import xc;
import xf;
import xg;
import xh;
import xi;
import xj;
import xm;
import xn;
import yd;

public class CameraFragment
  extends BaseCameraFragment
  implements SharedPreferences.OnSharedPreferenceChangeListener, aop, CameraDecor.CameraDecorInterface, CameraView.b, VideoCameraHandler.c, wi, wy.a, xc
{
  private static final Set<String> H = dr.a(SharedPreferenceKey.HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE.getKey(), SharedPreferenceKey.HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE.getKey());
  protected static boolean a = false;
  private final nw A;
  private final CameraEventAnalytics B;
  private final of C;
  private final og D;
  private final aio E;
  private aoo F;
  private ImageView G;
  protected final TakeSnapButtonTouchIntent k;
  protected CameraViewFlipper l;
  @Inject
  public ws m;
  @Inject
  public wv n;
  @Inject
  public xh o;
  @Inject
  public xf p;
  @Inject
  public xg q;
  @Inject
  public xj r;
  @Inject
  public ban s;
  private bfz t;
  private byte[] u;
  private TextView v;
  private wr w;
  private boolean x = false;
  private final Handler y;
  private final Bus z;
  
  public CameraFragment()
  {
    this(bbo.a(), new Handler(Looper.getMainLooper()), nw.a(), CameraEventAnalytics.a(), of.a(), og.a(), aio.c(), new TakeSnapButtonTouchIntent());
  }
  
  @SuppressLint({"ValidFragment"})
  private CameraFragment(Bus paramBus, Handler paramHandler, nw paramnw, CameraEventAnalytics paramCameraEventAnalytics, of paramof, og paramog, aio paramaio, TakeSnapButtonTouchIntent paramTakeSnapButtonTouchIntent)
  {
    SnapchatApplication.b().c().a(this);
    z = paramBus;
    y = paramHandler;
    A = paramnw;
    B = paramCameraEventAnalytics;
    C = paramof;
    D = paramog;
    E = paramaio;
    k = paramTakeSnapButtonTouchIntent;
  }
  
  private void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      v.setText(paramString);
      v.setVisibility(0);
      int i1 = awf.a(v);
      int j = PreferenceManager.getDefaultSharedPreferences(getActivity()).getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_PORTRAIT.getKey(), -1);
      int i = j;
      if (j == -1) {
        i = (int)(ydheightPixels * 0.5F);
      }
      paramString = (FrameLayout.LayoutParams)v.getLayoutParams();
      paramString.setMargins(leftMargin, i - i1, rightMargin, bottomMargin);
      v.setLayoutParams(paramString);
      return;
    }
    v.setVisibility(4);
  }
  
  private boolean a(@chd Surface paramSurface, @chc avc paramavc)
  {
    if (q.a) {
      return false;
    }
    if ((!att.HAS_SURFACE_TEXTURE_RECORDING) && (paramSurface == null))
    {
      a(VideoCameraHandler.VideoFailureType.NO_SURFACE_PROVIDED);
      return false;
    }
    return n.a(this, w, paramavc, paramSurface);
  }
  
  @awj
  private void c(boolean paramBoolean)
  {
    CameraViewFlipper localCameraViewFlipper;
    if (l != null)
    {
      localCameraViewFlipper = l;
      if ((!paramBoolean) || (!d.getClass().equals(wj.class))) {
        break label40;
      }
    }
    label40:
    for (paramBoolean = true;; paramBoolean = false)
    {
      localCameraViewFlipper.setScrollable(paramBoolean);
      return;
    }
  }
  
  public static String t()
  {
    return "CameraFragment";
  }
  
  @awj
  private void u()
  {
    if (!d.getClass().equals(wj.class)) {
      a(new wj(getActivity(), e, this));
    }
  }
  
  private void v()
  {
    if (b == null) {
      return;
    }
    C.a(false);
    g.edit().putInt(SharedPreferenceKey.SNAP_CAPTURE_ROTATION.getKey(), awf.d(getActivity())).apply();
    m.a(b, this, w);
    e.setVisibility(8);
  }
  
  private void w()
  {
    if (q.c) {
      return;
    }
    C.a(true);
    q.c = true;
    n.a(this, w, false);
    d.e();
  }
  
  private aoo x()
  {
    int j = 0;
    for (;;)
    {
      try
      {
        boolean bool = Build.CPU_ABI.startsWith("x86");
        Object localObject1;
        if (bool)
        {
          localObject1 = null;
          return (aoo)localObject1;
        }
        if ((F == null) && (c != null))
        {
          localObject1 = c.c();
          if (localObject1 == null) {
            break label124;
          }
          i1 = ((Camera.Parameters)localObject1).getPreviewFormat();
          localObject1 = ((Camera.Parameters)localObject1).getPreviewSize();
          if (localObject1 != null)
          {
            i = width;
            j = height;
            F = new aoo(i1, i, j, this);
          }
        }
        else
        {
          localObject1 = F;
          continue;
        }
        i = 0;
      }
      finally {}
      continue;
      label124:
      int i = 0;
      int i1 = 0;
    }
  }
  
  private void y()
  {
    aoo localaoo = x();
    if (localaoo != null)
    {
      if (!d.get()) {
        break label56;
      }
      g.set(System.nanoTime());
    }
    for (;;)
    {
      if ((G != null) && (G.getVisibility() == 0)) {
        G.setVisibility(8);
      }
      return;
      label56:
      e.set(false);
      d.set(true);
    }
  }
  
  protected final int a()
  {
    return 2130968596;
  }
  
  @chc
  protected final avc a(@chc yd paramyd, @chc xi paramxi, @chc Camera.Parameters paramParameters)
  {
    if (paramParameters.getSupportedVideoSizes() == null) {}
    for (int i = 1; (i != 0) && (!att.HAS_SURFACE_TEXTURE_RECORDING); i = 0)
    {
      i = heightPixels;
      i = widthPixels;
      return j.a(paramParameters, ic, wg.a(paramyd), false);
    }
    paramyd = super.a(paramyd, paramxi, paramParameters);
    paramyd.a();
    paramyd.b();
    return paramyd;
  }
  
  public final CameraDecor a(RelativeLayout paramRelativeLayout)
  {
    paramRelativeLayout = getActivity();
    if ((paramRelativeLayout instanceof SnapkidzHomeActivity)) {
      return new wo(paramRelativeLayout, e, this);
    }
    return new wj(paramRelativeLayout, e, this);
  }
  
  public final void a(float paramFloat)
  {
    if ((this.i.b()) || (c == null)) {
      return;
    }
    Object localObject = o;
    a *= paramFloat;
    a = Math.max(1.0F, Math.min(a, 1.8F));
    paramFloat = (o.a - 1.0F) / 0.8F;
    localObject = c.c();
    if ((localObject == null) || (!((Camera.Parameters)localObject).isZoomSupported())) {}
    for (int i = 0; i != 0; i = 1)
    {
      c.a((Camera.Parameters)localObject);
      return;
      ((Camera.Parameters)localObject).setZoom((int)Math.ceil(paramFloat * ((Camera.Parameters)localObject).getMaxZoom()));
    }
    o.a = 1.0F;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if ((c == null) || (ig))
    {
      y();
      return;
    }
    Object localObject1 = c.c();
    int i;
    label50:
    Object localObject4;
    Object localObject2;
    if ((localObject1 == null) || (this.i.b()))
    {
      i = 0;
      if (i == 0) {
        break label217;
      }
      ig = true;
      d.a(paramInt1, paramInt2);
      localObject4 = b;
      localObject1 = c;
      if (localObject4 != null)
      {
        localObject2 = ((wy.b)localObject1).c();
        if ((localObject2 != null) && (((Camera.Parameters)localObject2).getMaxNumFocusAreas() != 0)) {
          break label219;
        }
      }
    }
    for (;;)
    {
      c.a(new xb(new Handler(Looper.getMainLooper()), c, new wy.c()
      {
        public final void a()
        {
          i.g = false;
        }
      }));
      break;
      localObject2 = ((Camera.Parameters)localObject1).getSupportedFocusModes();
      if ((localObject2 == null) || (!((List)localObject2).contains("auto")))
      {
        i = 0;
        break label50;
      }
      if (!((Camera.Parameters)localObject1).getFocusMode().equals("auto"))
      {
        ((Camera.Parameters)localObject1).setFocusMode("auto");
        c.a((Camera.Parameters)localObject1);
      }
      i = 1;
      break label50;
      label217:
      break;
      label219:
      Matrix localMatrix = new Matrix();
      Object localObject3 = new Matrix();
      i = ((View)localObject4).getWidth();
      int j = ((View)localObject4).getHeight();
      ((Matrix)localObject3).setScale(1.0F, 1.0F);
      ((Matrix)localObject3).postRotate(90.0F);
      ((Matrix)localObject3).postScale(i / 2000.0F, j / 2000.0F);
      ((Matrix)localObject3).postTranslate(i / 2.0F, j / 2.0F);
      ((Matrix)localObject3).invert(localMatrix);
      localObject3 = new ArrayList();
      j = ((View)localObject4).getWidth();
      i = ((View)localObject4).getHeight();
      if (((ArrayList)localObject3).size() == 0) {
        ((ArrayList)localObject3).add(new Camera.Area(new Rect(), 1));
      }
      localObject4 = get0rect;
      paramInt1 = wg.a(paramInt1 - 133, j - 266);
      paramInt2 = wg.a(paramInt2 - 133, i - 266);
      RectF localRectF = new RectF(paramInt1, paramInt2, paramInt1 + 266, paramInt2 + 266);
      localMatrix.mapRect(localRectF);
      left = Math.round(left);
      top = Math.round(top);
      right = Math.round(right);
      bottom = Math.round(bottom);
      ((Camera.Parameters)localObject2).setFocusAreas((List)localObject3);
      if (((Camera.Parameters)localObject2).getMaxNumMeteringAreas() != 0) {
        ((Camera.Parameters)localObject2).setMeteringAreas((List)localObject3);
      }
      ((wy.b)localObject1).a((Camera.Parameters)localObject2);
    }
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    if ((t != null) && (l.getCurrentPanel() == 1))
    {
      l.setEnabled(false);
      t.a(paramInt, paramBoolean);
    }
  }
  
  public final void a(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      z.a(new bcg("CameraFragment"));
      aph.a().a(getActivity(), paramInt, paramArrayOfByte);
    }
  }
  
  public final void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      new awy(paramBitmap, new yd()).executeOnExecutor(avf.HIGH_PRIORITY_EXECUTOR, new Void[0]);
    }
    boolean bool = d instanceof wn;
    paramBitmap = new akf.a();
    mSnapType = Mediabryo.SnapType.SNAP;
    paramBitmap = (akf.a)paramBitmap;
    mIsFrontFacingSnap = i.b();
    paramBitmap = (akf.a)paramBitmap;
    mIsFlashOn = p.a;
    paramBitmap = (akf.a)paramBitmap;
    mIsReply = bool;
    paramBitmap = (akf.a)paramBitmap;
    Camera.CameraInfo localCameraInfo = i.e();
    if (localCameraInfo != null) {
      mSnapOrientation = orientation;
    }
    paramBitmap = paramBitmap.c();
    og.a(paramBitmap);
    z.a(new bej(paramBitmap, SnapCaptureContext.CAMERA));
  }
  
  protected final void a(Camera.Parameters paramParameters)
  {
    w.a(paramParameters, p.a);
  }
  
  public final void a(Uri paramUri)
  {
    
    if (mFragmentInterface != null) {
      mFragmentInterface.a(true);
    }
    if (paramUri == null)
    {
      a(VideoCameraHandler.VideoFailureType.VIDEO_STORAGE_EXCEPTION);
      return;
    }
    d.e();
    boolean bool1 = this.i.b();
    Object localObject = this.i.e();
    if (localObject == null) {}
    for (int i = 0;; i = orientation)
    {
      q.a = false;
      q.c = false;
      a(false);
      if (b != null)
      {
        b.a();
        b.setAlpha(0.0F);
      }
      n.b();
      e.setVisibility(8);
      CameraEventAnalytics.e();
      boolean bool2 = d instanceof wn;
      localObject = new aku.a();
      mVideoUri = paramUri;
      paramUri = (aku.a)localObject;
      mSnapType = Mediabryo.SnapType.SNAP;
      paramUri = (aku.a)paramUri;
      mIsFrontFacingSnap = bool1;
      paramUri = (aku.a)paramUri;
      mIsFlashOn = p.a;
      paramUri = (aku.a)paramUri;
      mSnapOrientation = i;
      paramUri = (aku.a)paramUri;
      mIsReply = bool2;
      paramUri = ((aku.a)paramUri).c();
      og.a(paramUri);
      z.a(new bej(paramUri, SnapCaptureContext.CAMERA));
      return;
    }
  }
  
  public final void a(Surface paramSurface)
  {
    avc localavc = r.a();
    if (localavc == null)
    {
      a(VideoCameraHandler.VideoFailureType.INITIALIZATION_ERROR);
      return;
    }
    Object localObject1 = b;
    Object localObject2 = new yd();
    int i1;
    int i2;
    int j;
    int i;
    if (b != null)
    {
      i1 = localavc.b();
      i2 = localavc.a();
      j = heightPixels;
      i = widthPixels;
      double d = heightPixels / widthPixels;
      if (!CameraView.a(localavc.c(), d)) {
        break label177;
      }
      d = i2;
      j = (int)(i / i1 * d);
    }
    for (;;)
    {
      localObject2 = new avc(i, j);
      localObject1 = b;
      localObject2 = new FrameLayout.LayoutParams(((avc)localObject2).a(), ((avc)localObject2).b());
      gravity = 17;
      ((SurfaceView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      a(paramSurface, localavc);
      return;
      label177:
      i = (int)(i1 * (j / i2));
    }
  }
  
  public final void a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction paramTakeSnapButtonAction)
  {
    int i = 1;
    switch (6.b[paramTakeSnapButtonAction.ordinal()])
    {
    default: 
      return;
    case 1: 
      k.a = TakeSnapButtonTouchIntent.MediaCaptureType.PHOTO;
      y.postDelayed(new Runnable()
      {
        public final void run()
        {
          CameraFragment.a(CameraFragment.this).d();
          k.a = TakeSnapButtonTouchIntent.MediaCaptureType.VIDEO;
          m();
        }
      }, 500L);
      akr.L();
      c(false);
      z.a(new beg(false));
      return;
    }
    c(true);
    if (k.a == TakeSnapButtonTouchIntent.MediaCaptureType.VIDEO)
    {
      if (i == 0) {
        break label143;
      }
      if (q.a) {
        w();
      }
    }
    for (;;)
    {
      d.e();
      y.removeCallbacksAndMessages(null);
      return;
      i = 0;
      break;
      label143:
      B.d();
      v();
      if (akn.a().a("ENABLE_SNAP_TO_SCAN", "option", "on").equals("on")) {
        y();
      }
    }
  }
  
  @awj
  protected final void a(CameraDecor paramCameraDecor)
  {
    super.a(paramCameraDecor);
    c(true);
  }
  
  public final void a(CameraModel.CameraType paramCameraType)
  {
    if (b == null) {
      return;
    }
    i.a(paramCameraType);
    g_();
  }
  
  public final void a(@chc VideoCameraHandler.VideoFailureType paramVideoFailureType)
  {
    int j = 1;
    bhp.a();
    if (mFragmentInterface != null) {
      mFragmentInterface.a(true);
    }
    d.e();
    q.a = false;
    q.c = false;
    z.a(new beg(true));
    int i;
    switch (6.c[paramVideoFailureType.ordinal()])
    {
    default: 
      i = 2131493593;
    }
    for (;;)
    {
      label96:
      if (j != 0)
      {
        z.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, i));
        s.a(new ox(paramVideoFailureType.name()));
        CameraEventAnalytics.a(paramVideoFailureType);
      }
      if ((b != null) && (!att.HAS_SURFACE_TEXTURE_RECORDING))
      {
        b.a();
        a(false);
        n.b();
        b.setAlpha(0.0F);
        g_();
      }
      d.a();
      return;
      if (ReleaseManager.e())
      {
        str = getResources().getString(2131493114, new Object[] { Environment.getExternalStorageState() });
        z.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, str));
      }
      String str = Environment.getExternalStorageState();
      i = -1;
      switch (str.hashCode())
      {
      }
      for (;;)
      {
        switch (i)
        {
        default: 
          i = 2131492950;
          break label96;
          if (str.equals("shared"))
          {
            i = 0;
            continue;
            if (str.equals("checking"))
            {
              i = 1;
              continue;
              if (str.equals("removed")) {
                i = 2;
              }
            }
          }
          break;
        }
      }
      i = 2131492951;
      continue;
      i = 2131492949;
      continue;
      i = 2131492944;
      continue;
      v();
      j = 0;
      i = 0;
    }
  }
  
  public final void a(wy.b paramb, int paramInt)
  {
    super.a(paramb, paramInt);
    if ((i.e) || (i.h == null)) {
      return;
    }
    d.a();
    n.a();
    Object localObject2 = A;
    if (mOldStartupMetric != null)
    {
      localObject1 = avv.b();
      paramb = (wy.b)localObject1;
      if (localObject1 == StartupPath.FROM_DESTROYED_STATE) {
        paramb = StartupPath.FROM_KILLED_STATE;
      }
      mOldStartupMetric.a("type", paramb);
      mOldStartupMetric.a(false);
      mOldStartupMetric = null;
    }
    StreamView.setCameraInfo(i.e());
    StreamView.setCameraPreviewSize(i.f);
    paramb = new awp(avf.HIGH_PRIORITY_EXECUTOR);
    Object localObject1 = i.f;
    localObject2 = getResources().getDisplayMetrics();
    if (!a)
    {
      if (localObject1 != null) {
        paramb.a(((avc)localObject1).b(), ((avc)localObject1).a(), Bitmap.Config.ARGB_8888);
      }
      paramb.a(widthPixels, heightPixels, Bitmap.Config.ARGB_8888);
      a = true;
    }
    z.a(new bbp(true, i.j));
    i.j = false;
  }
  
  protected final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    x = true;
    u = null;
    z.a(new bbp(false, i.j));
  }
  
  public final void a(byte[] paramArrayOfByte, wy.b paramb)
  {
    super.a(paramArrayOfByte, paramb);
    bhp.a(new Runnable()
    {
      public final void run()
      {
        if ((!i.d()) && (b != null) && (b.getAlpha() == 0.0F)) {
          b.animate().alpha(1.0F).setDuration(100L).start();
        }
      }
    });
    if (x)
    {
      x = false;
      B.c();
    }
    if (paramb == null) {}
    do
    {
      do
      {
        return;
        bhp.b();
        HoldToStreamView localHoldToStreamView = HoldToStreamView.getLastInstance();
        if (localHoldToStreamView != null) {
          localHoldToStreamView.a(paramArrayOfByte);
        }
        paramb.a(u);
        paramb = x();
      } while ((paramb == null) || (paramArrayOfByte == null) || (b != 17) || (!d.get()));
      if (!SnapScan.a())
      {
        paramb.a();
        return;
      }
      if (e.compareAndSet(false, true))
      {
        i = 0;
        f.set(false);
        h = System.nanoTime();
        g.set(h);
      }
      if (aoo.a(g.get()) >= c)
      {
        new StringBuilder("Stopped scanning - Scan time is expired: ").append(aoo.a(h)).append(" seconds.");
        paramb.a();
      }
    } while (!f.compareAndSet(false, true));
    new aoo.1(paramb, paramArrayOfByte).executeOnExecutor(a, new Void[0]);
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    return d.a(paramMotionEvent);
  }
  
  protected final byte[] a(@chc avc paramavc)
  {
    int i = aux.a((int)(paramavc.d() * ImageFormat.getBitsPerPixel(17) / 8.0D));
    new StringBuilder("Allocating a Callback Buffer of ").append(paramavc.d() * ImageFormat.getBitsPerPixel(17)).append(" divided by 8 = ").append(i).append(" bytes");
    u = new byte[i];
    return u;
  }
  
  public final void b(int paramInt)
  {
    super.b(paramInt);
    if (!getUserVisibleHint()) {
      return;
    }
    Object localObject = getActivity();
    if (localObject != null)
    {
      localObject = new AlertDialog.Builder((Context)localObject);
      ((AlertDialog.Builder)localObject).setMessage(2131493082);
      ((AlertDialog.Builder)localObject).setCancelable(true);
      ((AlertDialog.Builder)localObject).setNegativeButton(2131492952, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
        }
      });
      ((AlertDialog.Builder)localObject).setPositiveButton(2131493159, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          System.exit(-1);
        }
      });
      ((AlertDialog.Builder)localObject).show();
    }
    d.a();
    s.a(new oj());
    new ErrorMetric("CAMERA_FAILED_TO_OPEN").e();
  }
  
  public final void b(Bitmap paramBitmap)
  {
    if ((Property.ENABLE_SNAPSCAN_DEBUG.getBoolean()) && (paramBitmap != null))
    {
      if (G == null)
      {
        G = new ImageView(getActivity());
        localObject = new RelativeLayout.LayoutParams(-2, -2);
        ((RelativeLayout.LayoutParams)localObject).addRule(13);
        ((RelativeLayout)mFragmentLayout.findViewById(2131361945)).addView(G, (ViewGroup.LayoutParams)localObject);
      }
      Object localObject = G;
      ((ImageView)localObject).setImageBitmap(paramBitmap);
      ((ImageView)localObject).setVisibility(0);
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    if (q.a) {
      return;
    }
    i.a();
    boolean bool = i.b(i.b);
    CameraEventAnalytics localCameraEventAnalytics = B;
    String str1;
    if (paramBoolean)
    {
      str1 = "double_tap";
      if (!bool) {
        break label103;
      }
    }
    label103:
    for (String str2 = "front_facing_camera";; str2 = "back_facing_camera")
    {
      mEasyMetricManager.b("CAMERA_SWITCH").a("context", str1).a("switch_to", str2).b();
      x = true;
      g_();
      return;
      str1 = "toggle_button";
      break;
    }
  }
  
  protected final boolean d()
  {
    boolean bool = super.d();
    if ((bool) && (b != null)) {
      b.setAlpha(0.0F);
    }
    return bool;
  }
  
  protected final void e()
  {
    nw.d();
    a(b());
    E.b();
    if (l.getCurrentPanel() == 1) {
      z.a(new bfk(TitleBarManager.Visibility.HIDDEN));
    }
    z.a(new bed());
    Object localObject = getActivity();
    if ((localObject instanceof LandingPageActivity))
    {
      localObject = ((LandingPageActivity)localObject).g();
      if ((localObject == null) || (mOriginatingFragment != 3)) {
        z.a(new bea());
      }
    }
    z.a(new bbq(CameraDisplayState.SHOW));
    if (getView() != null) {
      ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(getView().getWindowToken(), 0);
    }
    if (d != null)
    {
      d.a();
      d.c();
    }
    if (e != null) {
      e.setVisibility(0);
    }
    l.setEnabled(true);
    if (l.getCurrentPanel() == 0) {
      z.a(new beg(false));
    }
    l.a(l.getCurrentPanel(), 0.0D);
    B.b();
    nw.e();
  }
  
  public final void f()
  {
    super.f();
    aoo localaoo = x();
    if (localaoo != null) {
      localaoo.a();
    }
    l.setEnabled(false);
    z.a(new bdd("CameraFragment"));
  }
  
  public final boolean g()
  {
    if (l.getCurrentPanel() == 0)
    {
      ProfileFragment localProfileFragment = (ProfileFragment)getChildFragmentManager().findFragmentById(2131361940);
      if ((localProfileFragment != null) && (localProfileFragment.n()))
      {
        if (!localProfileFragment.m()) {
          return true;
        }
        if (localProfileFragment.l()) {
          return true;
        }
      }
      l.a(1, 0.0D);
      return true;
    }
    return super.g();
  }
  
  public final FragmentActivity i()
  {
    return super.getActivity();
  }
  
  public final boolean i_()
  {
    return p.a;
  }
  
  public final boolean l()
  {
    return i.b();
  }
  
  public final boolean m()
  {
    if (i.d()) {
      return false;
    }
    if (att.HAS_SURFACE_TEXTURE_RECORDING)
    {
      localObject = r.a();
      if (localObject == null)
      {
        a(VideoCameraHandler.VideoFailureType.INITIALIZATION_ERROR);
        return false;
      }
      return a(null, (avc)localObject);
    }
    c.b(true);
    Object localObject = b;
    b = new SurfaceView(((CameraView)localObject).getContext());
    a.addView(b);
    b.getHolder().addCallback(new CameraView.3((CameraView)localObject, this));
    b.setVisibility(0);
    c.setVisibility(8);
    return true;
  }
  
  public final boolean n()
  {
    return q.a;
  }
  
  public final boolean o()
  {
    boolean bool2 = false;
    boolean bool1;
    if (i.b()) {
      bool1 = akr.ab();
    }
    Object localObject;
    do
    {
      do
      {
        do
        {
          return bool1;
          localObject = c;
          bool1 = bool2;
        } while (localObject == null);
        localObject = ((wy.b)localObject).c();
        bool1 = bool2;
      } while (localObject == null);
      localObject = ((Camera.Parameters)localObject).getSupportedFlashModes();
      bool1 = bool2;
    } while (localObject == null);
    return ((List)localObject).contains("torch");
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    FragmentManager localFragmentManager = getChildFragmentManager();
    ProfileFragment localProfileFragment = (ProfileFragment)localFragmentManager.findFragmentById(2131361940);
    paramBundle = localProfileFragment;
    if (localProfileFragment == null) {
      paramBundle = new ProfileFragment();
    }
    b = l;
    c = new a((byte)0);
    if (!paramBundle.isAdded()) {
      localFragmentManager.beginTransaction().add(2131361940, paramBundle).commit();
    }
  }
  
  @bpi
  public void onAdjustForQuickSnapEvent(bbl parambbl)
  {
    if (b == null) {
      return;
    }
    if (mShouldPrepare) {
      i.a(CameraModel.CameraType.FRONT_FACING);
    }
    g_();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof bfz)) {
      t = ((bfz)paramActivity);
    }
  }
  
  @bpi
  public void onCameraStateEvent(bbq parambbq)
  {
    int j = 0;
    if (parambbq.a())
    {
      if (cameraToResume != null) {
        this.i.a(cameraToResume);
      }
      g_();
      if (displayState == CameraDisplayState.SHOW)
      {
        i = 1;
        parambbq = e;
        if (i == 0) {
          break label65;
        }
      }
      label65:
      for (int i = j;; i = 4)
      {
        parambbq.setVisibility(i);
        return;
        i = 0;
        break;
      }
    }
    a(false);
    if (b != null) {
      b.setAlpha(0.0F);
    }
    n.b();
  }
  
  @bpi
  public void onCancelCardLinkEvent(bbr parambbr)
  {
    u();
    awf.a(getActivity(), b);
  }
  
  @bpi
  public void onCancelInChatSnapEvent(bbs parambbs)
  {
    u();
    a(null);
  }
  
  @bpi
  public void onCancelQuickSnapEvent(bbt parambbt)
  {
    u();
    a(null);
  }
  
  @bpi
  public void onCancelReplyEvent(bbu parambbu)
  {
    u();
  }
  
  @bpi
  public void onChangePreviewQualityEvent(ChangePreviewQualityEvent paramChangePreviewQualityEvent)
  {
    switch (6.a[previewQuality.ordinal()])
    {
    }
    do
    {
      do
      {
        return;
      } while (!i.i);
      i.j = true;
      a(true);
      i.i = false;
      g_();
      return;
    } while (i.i);
    i.j = true;
    a(true);
    i.i = true;
    g_();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    nw.d();
    super.onCreate(paramBundle);
    nw.e();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if ((b != null) && (att.HAS_SURFACE_TEXTURE_RECORDING)) {
      c(2131361943).setVisibility(8);
    }
    l = ((CameraViewFlipper)c(2131361939));
    l.setEnabled(false);
    l.setScrollable(true);
    this.i.a(g.getInt(SharedPreferenceKey.CAMERA_NUMBER_PREFERENCE.getKey(), 0));
    w = new wp(c(2131361942));
    v = ((TextView)c(2131361944));
    paramLayoutInflater = new yd();
    int i = Math.min(widthPixels, heightPixels);
    int j = Math.max(widthPixels, heightPixels);
    v.setTextSize(Math.min(i, j) * 0.053125F / density);
    nw.e();
    return mFragmentLayout;
  }
  
  @bpi
  public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent paramSnapMessageFeedRefreshedEvent)
  {
    d.a();
  }
  
  @bpi
  public void onKeyDownEvent(bcv parambcv)
  {
    if ((!mIsVisible) || (l.getCurrentPanel() == 0) || (l.e())) {
      return;
    }
    switch (keyCode)
    {
    default: 
      return;
    }
    CameraDecor localCameraDecor = d;
    if (event.getAction() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localCameraDecor.b(bool);
      return;
    }
  }
  
  @bpi
  public void onLockScreenOpenedEvent(bdg parambdg)
  {
    onResume();
  }
  
  public void onPause()
  {
    if (q.a)
    {
      n.a(null, w, true);
      q.a = false;
    }
    super.onPause();
    n.b();
    if (b != null) {
      b.setAlpha(0.0F);
    }
  }
  
  @bpi
  public void onProfileViewScrollEvent(bdr parambdr)
  {
    l.a(destinationPage, 1.0D);
  }
  
  @bpi
  public void onRefreshCameraNotificationBoxesEvent(bdv parambdv)
  {
    d.b();
  }
  
  @bpi
  public void onReplySnapEvent(bdz parambdz)
  {
    a(new wn(getActivity(), e, this, parambdz));
    a(null);
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    Intent localIntent = getActivity().getIntent();
    if ((AndroidNotificationManager.Destination)localIntent.getSerializableExtra("destinationPage") == AndroidNotificationManager.Destination.ADD_FRIENDS)
    {
      if (getActivitymFragments.getBackStackEntryCount() == 0)
      {
        l.a(0, 0.0D);
        bbo.a().a(new bev(new AddedMeFragment()));
      }
      localIntent.removeExtra("destinationPage");
    }
    nw.e();
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if ((H.contains(paramString)) && (d != null)) {
      d.a();
    }
  }
  
  @bpi
  public void onSnapViewingEvent(bem parambem)
  {
    d.a();
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
    if (getFragmentManager().getBackStackEntryCount() == 0) {
      l.a(1, 1.0D);
    }
  }
  
  @bpi
  public void onSwitchToInChatCameraEvent(bfe parambfe)
  {
    a(new wl(getActivity(), e, this, parambfe));
    a(mCaptionText);
    z.a(new beg(false));
  }
  
  @bpi
  public void onSwitchToQuickSnapCameraEvent(bff parambff)
  {
    a(new wm(getActivity(), e, this));
    a(mCaptionText);
    z.a(new beg(false));
  }
  
  @bpi
  public void onViewedFriendFeedEvent(bbk parambbk)
  {
    d.a();
  }
  
  public final void p()
  {
    if (!o()) {
      return;
    }
    xf localxf = p;
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      w.a(null, p.a);
      d.a();
      return;
    }
  }
  
  public final void q()
  {
    bhp.a();
    B.a(true);
    d.d();
    if (mFragmentInterface != null) {
      mFragmentInterface.a(false);
    }
    if ((b != null) && (b.getAlpha() == 0.0F)) {
      b.animate().alpha(1.0F).setDuration(100L).start();
    }
  }
  
  public final void r()
  {
    bhp.a();
    d.e();
    w();
  }
  
  public final void s()
  {
    b(true);
  }
  
  final class a
    implements xn
  {
    private a() {}
    
    public final void a(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      b.setScaleX(paramFloat1);
      b.setScaleY(paramFloat2);
      b.setTranslationY(paramFloat3);
    }
    
    public final void a(wi paramwi)
    {
      if (b == null) {
        return;
      }
      m.b(b, paramwi, CameraFragment.b(CameraFragment.this));
    }
    
    public final boolean a()
    {
      return i.b();
    }
    
    public final boolean b()
    {
      return i.c();
    }
    
    public final void c()
    {
      b(false);
    }
    
    public final boolean d()
    {
      return !i.d;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.CameraFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */