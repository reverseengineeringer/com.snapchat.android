package com.snapchat.android.camera.cameraview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import asu;
import aue;
import aur;
import avl;
import avq;
import cgb;
import cgc;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import no;
import vl;
import vm;
import xh;

public class CameraView
  extends RelativeLayout
  implements vl
{
  public FrameLayout a = new FrameLayout(getContext());
  public SurfaceView b;
  public TextureView c;
  private final no d;
  private final CameraEventAnalytics e;
  
  public CameraView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    addView(a);
    d = no.a();
    e = CameraEventAnalytics.a();
  }
  
  @avl
  @cgc
  private Bitmap a(aue paramaue)
  {
    if ((paramaue == null) || (c == null)) {
      return null;
    }
    setDrawingCacheEnabled(true);
    int i = paramaue.b();
    int j = paramaue.a();
    paramaue = aur.a(new xh(), i, j);
    paramaue = avq.a().a(paramaue, true);
    if (paramaue != null) {}
    try
    {
      for (paramaue = c.getBitmap(paramaue);; paramaue = c.getBitmap(i, j))
      {
        setDrawingCacheEnabled(false);
        return paramaue;
      }
    }
    catch (OutOfMemoryError paramaue)
    {
      for (;;)
      {
        System.gc();
        paramaue = c.getBitmap(i, j);
      }
    }
  }
  
  public static boolean a(double paramDouble1, double paramDouble2)
  {
    return paramDouble1 < paramDouble2;
  }
  
  public final void a()
  {
    if (asu.HAS_SURFACE_TEXTURE_RECORDING) {}
    do
    {
      return;
      if (b != null) {
        post(new Runnable()
        {
          public final void run()
          {
            CameraView.a(CameraView.this).removeView(b);
            b = null;
          }
        });
      }
    } while (c == null);
    c.setVisibility(0);
  }
  
  public final void a(aue paramaue, vm paramvm)
  {
    e.a(false);
    paramvm.a(a(paramaue));
  }
  
  public final void a(@cgb aue paramaue, @cgb xh paramxh)
  {
    float f1 = heightPixels / widthPixels;
    float f2 = (float)paramaue.c();
    if (a(f1, f2)) {}
    for (paramaue = new a(1.0F, f2 / f1);; paramaue = new a(f1 / f2, 1.0F))
    {
      c.setScaleX(a);
      c.setScaleY(b);
      return;
    }
  }
  
  public void setTextureViewParameters(final b paramb)
  {
    c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    c.setSurfaceTextureListener(new TextureView.SurfaceTextureListener()
    {
      public final void onSurfaceTextureAvailable(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        Timber.c("CameraView", "Camera View: Surface texture available", new Object[0]);
        paramb.a(paramAnonymousSurfaceTexture);
      }
      
      public final boolean onSurfaceTextureDestroyed(SurfaceTexture paramAnonymousSurfaceTexture)
      {
        Timber.c("CameraView", "Surface Destroyed", new Object[0]);
        return true;
      }
      
      public final void onSurfaceTextureSizeChanged(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public final void onSurfaceTextureUpdated(SurfaceTexture paramAnonymousSurfaceTexture) {}
    });
  }
  
  public final class a
  {
    float a;
    float b;
    
    a(float paramFloat1, float paramFloat2)
    {
      a = paramFloat1;
      b = paramFloat2;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(SurfaceTexture paramSurfaceTexture);
    
    public abstract void a(Surface paramSurface);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.cameraview.CameraView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */