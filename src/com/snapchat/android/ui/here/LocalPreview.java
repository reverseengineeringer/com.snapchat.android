package com.snapchat.android.ui.here;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import cgb;
import com.snapchat.android.Timber;
import com.snapchat.android.util.gl.GlTextureView;

public class LocalPreview
{
  private static boolean e;
  protected Context a;
  public a b;
  protected DisplayMetrics c;
  protected byte[] d;
  
  static
  {
    try
    {
      System.loadLibrary("stlport_shared");
      System.loadLibrary("LocalPreview");
      e = true;
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      Timber.c("GlCameraPreview", "System.loadLibrary(\"LocalPreview\") failed: %s.", new Object[] { localUnsatisfiedLinkError.getMessage() });
    }
  }
  
  public LocalPreview(@cgb Context paramContext)
  {
    if (!e) {
      throw new b("Native library failed to load.", (byte)0);
    }
    a = paramContext;
    c = paramContext.getResources().getDisplayMetrics();
    b = new a(paramContext);
  }
  
  public static void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    nativeSetPreviewSize(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static boolean a()
  {
    return e;
  }
  
  public static void b()
  {
    e = false;
  }
  
  public static boolean c()
  {
    return nativeIsPreviewSizeSet();
  }
  
  public static void d() {}
  
  public static void e() {}
  
  public static void f() {}
  
  public static void g()
  {
    nativeSetCircleRadius(1.0F);
  }
  
  private static native void nativeInitialize(int paramInt);
  
  private static native boolean nativeIsPreviewSizeSet();
  
  private static native void nativeReflectX();
  
  private static native void nativeReflectY();
  
  private native void nativeRenderFrame(byte[] paramArrayOfByte);
  
  private static native void nativeResetPreviewSize();
  
  private static native void nativeSetCircleRadius(float paramFloat);
  
  private static native void nativeSetPreviewSize(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final void a(byte[] arg1)
  {
    d = ???;
    ??? = b;
    if (mRenderThread != null) {
      synchronized (mRenderThread)
      {
        mRenderRequested = true;
        ???.notify();
        return;
      }
    }
  }
  
  final class a
    extends GlTextureView
  {
    protected a(Context paramContext)
    {
      super();
    }
    
    public final void a()
    {
      LocalPreview.a(LocalPreview.this);
    }
    
    public final void b()
    {
      LocalPreview.a(LocalPreview.this, d);
    }
  }
  
  public final class b
    extends Exception
  {
    private b(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.LocalPreview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */