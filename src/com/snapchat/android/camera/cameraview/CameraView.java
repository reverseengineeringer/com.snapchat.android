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
import att;
import avc;
import avp;
import awj;
import awo;
import chc;
import chd;
import com.snapchat.android.analytics.CameraEventAnalytics;
import of;
import wh;
import wi;
import yd;

public class CameraView
  extends RelativeLayout
  implements wh
{
  public FrameLayout a = new FrameLayout(getContext());
  public SurfaceView b;
  public TextureView c;
  private final of d;
  private final CameraEventAnalytics e;
  
  public CameraView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    addView(a);
    d = of.a();
    e = CameraEventAnalytics.a();
  }
  
  @awj
  @chd
  private Bitmap a(avc paramavc)
  {
    if ((paramavc == null) || (c == null)) {
      return null;
    }
    setDrawingCacheEnabled(true);
    int i = paramavc.b();
    int j = paramavc.a();
    paramavc = avp.a(new yd(), i, j);
    paramavc = awo.a().a(paramavc, true);
    if (paramavc != null) {}
    try
    {
      for (paramavc = c.getBitmap(paramavc);; paramavc = c.getBitmap(i, j))
      {
        setDrawingCacheEnabled(false);
        return paramavc;
      }
    }
    catch (OutOfMemoryError paramavc)
    {
      for (;;)
      {
        System.gc();
        paramavc = c.getBitmap(i, j);
      }
    }
  }
  
  public static boolean a(double paramDouble1, double paramDouble2)
  {
    return paramDouble1 < paramDouble2;
  }
  
  public final void a()
  {
    if (att.HAS_SURFACE_TEXTURE_RECORDING) {}
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
  
  public final void a(avc paramavc, wi paramwi)
  {
    e.a(false);
    paramwi.a(a(paramavc));
  }
  
  public final void a(@chc avc paramavc, @chc yd paramyd)
  {
    float f1 = heightPixels / widthPixels;
    float f2 = (float)paramavc.c();
    if (a(f1, f2)) {}
    for (paramavc = new a(1.0F, f2 / f1);; paramavc = new a(f1 / f2, 1.0F))
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
        paramb.a(paramAnonymousSurfaceTexture);
      }
      
      public final boolean onSurfaceTextureDestroyed(SurfaceTexture paramAnonymousSurfaceTexture)
      {
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