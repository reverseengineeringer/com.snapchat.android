package com.snapchat.android.camera;

import ala;
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
import atc;
import aue;
import avl;
import aza;
import cgb;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.cameraview.CameraView.b;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.List;
import javax.inject.Inject;
import vk;
import wc;
import wc.a;
import wc.b;
import wd;
import wg;
import wh;
import wi;
import wm;
import wq;
import xf;
import xg;
import xh;

@avl
public abstract class BaseCameraFragment
  extends SnapchatFragment
  implements CameraView.b, wc.a, wg
{
  private final atc a;
  protected CameraView b;
  protected wc.b c;
  protected CameraDecor d;
  protected RelativeLayout e;
  protected FrameLayout f;
  protected SharedPreferences g;
  protected wi h;
  @Inject
  public CameraModel i;
  @Inject
  public wq j;
  private final xf k;
  private final wm l;
  private final wh m = new wh(new Handler(Looper.getMainLooper()), this);
  
  public BaseCameraFragment()
  {
    this(new atc(), new xf(), new wm(xg.a()));
  }
  
  private BaseCameraFragment(atc paramatc, xf paramxf, wm paramwm)
  {
    SnapchatApplication.b().c().a(this);
    a = paramatc;
    k = paramxf;
    l = paramwm;
  }
  
  private void a(@cgb SurfaceTexture paramSurfaceTexture, byte[] paramArrayOfByte)
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
      h = new wi(new Handler(paramSurfaceTexture.getLooper()), c, this);
      c.a(h);
    }
    c.g();
  }
  
  protected abstract int a();
  
  @cgb
  protected aue a(@cgb xh paramxh, @cgb wm paramwm, @cgb Camera.Parameters paramParameters)
  {
    if (i.i)
    {
      aue localaue = wm.a(paramParameters);
      if (localaue != null)
      {
        Timber.c("BaseCameraFragment", "Preview Size Finding: preview size %d x %d", new Object[] { Integer.valueOf(localaue.a()), Integer.valueOf(localaue.b()) });
        return localaue;
      }
    }
    Timber.c("BaseCameraFragment", "Preview Size Finding: display [%d, %d]", new Object[] { Integer.valueOf(heightPixels), Integer.valueOf(widthPixels) });
    double d1 = vk.a(paramxh);
    paramwm = paramwm.a(paramParameters, d1);
    paramxh = paramwm;
    if (paramwm == null) {
      paramxh = l.a(paramParameters, i.c, d1, true);
    }
    Timber.c("BaseCameraFragment", "Preview Size Finding: preview size [%d, %d]", new Object[] { Integer.valueOf(paramxh.a()), Integer.valueOf(paramxh.b()) });
    return paramxh;
  }
  
  protected abstract CameraDecor a(RelativeLayout paramRelativeLayout);
  
  public final void a(SurfaceTexture paramSurfaceTexture)
  {
    if (i.e) {}
    aue localaue;
    do
    {
      return;
      localaue = i.f;
    } while (localaue == null);
    a(paramSurfaceTexture, a(localaue));
    b.a(localaue, new xh());
  }
  
  protected void a(Camera.Parameters paramParameters) {}
  
  public void a(Surface paramSurface) {}
  
  protected void a(CameraDecor paramCameraDecor)
  {
    d = paramCameraDecor;
  }
  
  public void a(wc.b paramb, int paramInt)
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
    Object localObject1 = a(new xh(), l, paramb);
    i.f = ((aue)localObject1);
    paramb.setPreviewSize(((aue)localObject1).a(), ((aue)localObject1).b());
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
    label274:
    int i1;
    if ((paramInt == 0) || (paramInt == 2))
    {
      paramInt = 1;
      if (orientation != 2) {
        break label369;
      }
      n = 1;
      if (orientation != 1) {
        break label374;
      }
      i1 = 1;
      label286:
      if (((paramInt == 0) || (n == 0)) && ((paramInt != 0) || (i1 == 0))) {
        break label380;
      }
      paramInt = 3;
      label305:
      localObject1 = paramb.e();
      if (localObject1 != null) {
        break label385;
      }
      paramInt = i2;
      label319:
      c.a(paramInt);
      if (b != null) {
        break label517;
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
      label369:
      n = 0;
      break label274;
      label374:
      i1 = 0;
      break label286;
      label380:
      paramInt = 0;
      break label305;
      switch (paramInt)
      {
      default: 
        label385:
        paramInt = 0;
      }
      for (;;)
      {
        n = orientation;
        Timber.c("CameraPreviewRotationFinder", "Camera Orientation [%d] and Display Orientation [%d]", new Object[] { Integer.valueOf(n), Integer.valueOf(paramInt) });
        if (!paramb.b()) {
          break label502;
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
      label502:
      paramInt = (n - paramInt + 360) % 360;
      break label319;
      label517:
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
        b.a(i.f, new xh());
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
  
  public void a(byte[] paramArrayOfByte, wc.b paramb) {}
  
  protected byte[] a(@cgb aue paramaue)
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
  
  protected final ala h()
  {
    return new ala(new String[] { "CAMERA" });
  }
  
  protected final void i_()
  {
    d();
    if ((i.b == i.c) || (i.e)) {
      return;
    }
    a(true);
    i.d = true;
    wd.a().a(i.b, m);
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
    Timber.a("BaseCameraFragment", "BaseCameraFragment onPause", new Object[0]);
    i.e = true;
    if (i.d())
    {
      wd.a().a();
      return;
    }
    a(true);
  }
  
  public void onResume()
  {
    super.onResume();
    Timber.a("BaseCameraFragment", "BaseCameraFragment onResume", new Object[0]);
    if (!((PowerManager)c("power")).isScreenOn()) {}
    for (boolean bool = true; bool; bool = ((KeyguardManager)c("keyguard")).inKeyguardRestrictedInputMode()) {
      return;
    }
    i.e = false;
    i_();
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