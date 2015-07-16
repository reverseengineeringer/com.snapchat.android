package com.snapchat.android.camera;

import alv;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.SurfaceTexture;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import aub;
import avc;
import awj;
import azy;
import chc;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.cameraview.CameraView.b;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.List;
import javax.inject.Inject;
import wg;
import wy;
import wy.a;
import wy.b;
import wz;
import xc;
import xd;
import xe;
import xi;
import xm;
import yb;
import yc;
import yd;

@awj
public abstract class BaseCameraFragment
  extends SnapchatFragment
  implements CameraView.b, wy.a, xc
{
  private final aub a;
  protected CameraView b;
  protected wy.b c;
  protected CameraDecor d;
  protected RelativeLayout e;
  protected FrameLayout f;
  protected SharedPreferences g;
  protected xe h;
  @Inject
  public CameraModel i;
  @Inject
  public xm j;
  private final yb k;
  private final xi l;
  private final xd m = new xd(new Handler(Looper.getMainLooper()), this);
  
  public BaseCameraFragment()
  {
    this(new aub(), new yb(), new xi(yc.a()));
  }
  
  private BaseCameraFragment(aub paramaub, yb paramyb, xi paramxi)
  {
    SnapchatApplication.b().c().a(this);
    a = paramaub;
    k = paramyb;
    l = paramxi;
  }
  
  private void a(@chc SurfaceTexture paramSurfaceTexture, byte[] paramArrayOfByte)
  {
    if ((i.e) || (c == null)) {
      return;
    }
    c.a(paramSurfaceTexture);
    if (paramArrayOfByte != null)
    {
      c.a(paramArrayOfByte);
      if (h != null) {
        h.a();
      }
      paramSurfaceTexture = new HandlerThread("Preview Data Thread");
      paramSurfaceTexture.start();
      h = new xe(new Handler(paramSurfaceTexture.getLooper()), c, this);
      c.a(h);
    }
    c.g();
  }
  
  protected abstract int a();
  
  @chc
  protected avc a(@chc yd paramyd, @chc xi paramxi, @chc Camera.Parameters paramParameters)
  {
    if (i.i)
    {
      avc localavc = xi.a(paramParameters);
      if (localavc != null)
      {
        localavc.a();
        localavc.b();
        return localavc;
      }
    }
    int n = heightPixels;
    n = widthPixels;
    double d1 = wg.a(paramyd);
    paramxi = paramxi.a(paramParameters, d1);
    paramyd = paramxi;
    if (paramxi == null) {
      paramyd = l.a(paramParameters, i.c, d1, true);
    }
    paramyd.a();
    paramyd.b();
    return paramyd;
  }
  
  protected abstract CameraDecor a(RelativeLayout paramRelativeLayout);
  
  public final void a(SurfaceTexture paramSurfaceTexture)
  {
    if (i.e) {}
    avc localavc;
    do
    {
      return;
      localavc = i.f;
    } while (localavc == null);
    a(paramSurfaceTexture, a(localavc));
    b.a(localavc, new yd());
  }
  
  protected void a(Camera.Parameters paramParameters) {}
  
  public void a(Surface paramSurface) {}
  
  protected void a(CameraDecor paramCameraDecor)
  {
    d = paramCameraDecor;
  }
  
  public void a(wy.b paramb, int paramInt)
  {
    int i2 = 90;
    if (paramb == null) {}
    do
    {
      return;
      c = paramb;
      paramb = c.c();
    } while ((i.e) || (paramb == null) || (getActivity() == null));
    i.h = c;
    i.c = paramInt;
    Object localObject1 = a(new yd(), l, paramb);
    i.f = ((avc)localObject1);
    paramb.setPreviewSize(((avc)localObject1).a(), ((avc)localObject1).b());
    if ((Build.VERSION.SDK_INT >= 16) && (Build.MODEL.equals("Nexus 4")))
    {
      paramb.setRecordingHint(true);
      if (i.c == 1) {
        paramb.setExposureCompensation(paramb.getMaxExposureCompensation());
      }
    }
    if (!i.b())
    {
      localObject1 = paramb.getSupportedFocusModes();
      if ((localObject1 != null) && (((List)localObject1).contains("continuous-picture"))) {
        paramb.setFocusMode("continuous-picture");
      }
    }
    a(paramb);
    c.a(paramb);
    paramb = i;
    Object localObject2 = SnapchatApplication.b().getApplicationContext();
    localObject1 = (WindowManager)((Context)localObject2).getSystemService("window");
    localObject2 = ((Context)localObject2).getResources().getConfiguration();
    paramInt = ((WindowManager)localObject1).getDefaultDisplay().getRotation();
    int n;
    label273:
    int i1;
    if ((paramInt == 0) || (paramInt == 2))
    {
      paramInt = 1;
      if (orientation != 2) {
        break label368;
      }
      n = 1;
      if (orientation != 1) {
        break label373;
      }
      i1 = 1;
      label285:
      if (((paramInt == 0) || (n == 0)) && ((paramInt != 0) || (i1 == 0))) {
        break label379;
      }
      paramInt = 3;
      label304:
      localObject1 = paramb.e();
      if (localObject1 != null) {
        break label384;
      }
      paramInt = i2;
      label318:
      c.a(paramInt);
      if (b != null) {
        break label490;
      }
      d();
    }
    for (;;)
    {
      i.d = false;
      d.a(i.b());
      return;
      paramInt = 0;
      break;
      label368:
      n = 0;
      break label273;
      label373:
      i1 = 0;
      break label285;
      label379:
      paramInt = 0;
      break label304;
      switch (paramInt)
      {
      default: 
        label384:
        paramInt = 0;
      }
      for (;;)
      {
        n = orientation;
        if (!paramb.b()) {
          break label475;
        }
        paramInt = (360 - (paramInt + n) % 360) % 360;
        break;
        paramInt = 0;
        continue;
        paramInt = 90;
        continue;
        paramInt = 180;
        continue;
        paramInt = 270;
      }
      label475:
      paramInt = (n - paramInt + 360) % 360;
      break label318;
      label490:
      paramb = b;
      if (c == null)
      {
        c = new TextureView(paramb.getContext());
        a.addView(c);
      }
      paramb.setTextureViewParameters(this);
      paramb = c.getSurfaceTexture();
      if ((paramb != null) && (i.f != null))
      {
        a(paramb, a(i.f));
        b.a(i.f, new yd());
      }
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    if (c != null)
    {
      c.b(paramBoolean);
      c.a(null);
      if (h != null) {
        h.a();
      }
      c.a(paramBoolean);
      c = null;
    }
    CameraModel localCameraModel = i;
    c = -1;
    g = false;
    h = null;
    d = false;
  }
  
  public void a(byte[] paramArrayOfByte, wy.b paramb) {}
  
  protected byte[] a(@chc avc paramavc)
  {
    return null;
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public void b(int paramInt)
  {
    i.d = false;
  }
  
  protected boolean d()
  {
    if (b != null) {
      return false;
    }
    b = ((CameraView)f.findViewById(2131361792));
    if (b == null)
    {
      b = new CameraView(getActivity(), null);
      b.setId(2131361792);
      f.addView(b);
    }
    return true;
  }
  
  public boolean g()
  {
    return d.f();
  }
  
  protected final void g_()
  {
    d();
    if ((i.b == i.c) || (i.e)) {
      return;
    }
    a(true);
    i.d = true;
    wz.a().a(i.b, m);
  }
  
  protected final alv h()
  {
    return new alv(new String[] { "CAMERA" });
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(a(), paramViewGroup, false);
    g = PreferenceManager.getDefaultSharedPreferences(getActivity());
    f = ((FrameLayout)c(2131361908));
    e = ((RelativeLayout)c(2131361909));
    a(a(e));
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    i.e = true;
    if (i.d())
    {
      wz.a().a();
      return;
    }
    a(true);
  }
  
  public void onResume()
  {
    super.onResume();
    if (!((PowerManager)c("power")).isScreenOn()) {}
    for (boolean bool = true; bool; bool = ((KeyguardManager)c("keyguard")).inKeyguardRestrictedInputMode()) {
      return;
    }
    i.e = false;
    g_();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.BaseCameraFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */