package com.snapchat.android.util.gl;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLUtils;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

public abstract class GlTextureView
  extends TextureView
  implements TextureView.SurfaceTextureListener
{
  private static final String TAG = "GLTextureView";
  public a mRenderThread;
  
  public GlTextureView(Context paramContext)
  {
    super(paramContext);
    setSurfaceTextureListener(this);
    setOpaque(false);
  }
  
  public abstract void a();
  
  public abstract void b();
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    if (mRenderThread == null)
    {
      mRenderThread = new a(paramSurfaceTexture);
      mRenderThread.start();
    }
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    mRenderThread.mFinished = true;
    mRenderThread = null;
    return true;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
  public final class a
    extends Thread
  {
    static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    static final int EGL_OPENGL_ES2_BIT = 4;
    private EGL10 mEgl;
    private EGLContext mEglContext;
    private EGLDisplay mEglDisplay;
    private EGLSurface mEglSurface;
    volatile boolean mFinished = false;
    public volatile boolean mRenderRequested = false;
    private final SurfaceTexture mSurface;
    
    a(SurfaceTexture paramSurfaceTexture)
    {
      mSurface = paramSurfaceTexture;
      setName("GlTextureView rendering thread.");
      setPriority(10);
    }
    
    public final void run()
    {
      mEgl = ((EGL10)EGLContext.getEGL());
      mEglDisplay = mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
      if (mEglDisplay == EGL10.EGL_NO_DISPLAY) {
        throw new RuntimeException("eglGetDisplay failed " + GLUtils.getEGLErrorString(mEgl.eglGetError()));
      }
      int[] arrayOfInt = new int[2];
      if (!mEgl.eglInitialize(mEglDisplay, arrayOfInt)) {
        throw new RuntimeException("eglInitialize failed " + GLUtils.getEGLErrorString(mEgl.eglGetError()));
      }
      arrayOfInt = new int[1];
      EGLConfig[] arrayOfEGLConfig = new EGLConfig[1];
      if (!mEgl.eglChooseConfig(mEglDisplay, new int[] { 12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 1, 12325, 0, 12326, 0, 12344 }, arrayOfEGLConfig, 1, arrayOfInt)) {
        throw new IllegalArgumentException("eglChooseConfig failed " + GLUtils.getEGLErrorString(mEgl.eglGetError()));
      }
      if (arrayOfInt[0] > 0) {}
      for (arrayOfInt = arrayOfEGLConfig[0]; arrayOfInt == null; arrayOfInt = null) {
        throw new RuntimeException("eglConfig not initialized");
      }
      mEglContext = mEgl.eglCreateContext(mEglDisplay, arrayOfInt, EGL10.EGL_NO_CONTEXT, new int[] { 12440, 2, 12344 });
      mEglSurface = mEgl.eglCreateWindowSurface(mEglDisplay, arrayOfInt, mSurface, null);
      int i;
      if ((mEglSurface == null) || (mEglSurface == EGL10.EGL_NO_SURFACE))
      {
        i = mEgl.eglGetError();
        if (i != 12299) {
          throw new RuntimeException("createWindowSurface failed " + GLUtils.getEGLErrorString(i));
        }
      }
      else if (!mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext))
      {
        throw new RuntimeException("eglMakeCurrent failed " + GLUtils.getEGLErrorString(mEgl.eglGetError()));
      }
      a();
      while (!mFinished)
      {
        b();
        mEgl.eglSwapBuffers(mEglDisplay, mEglSurface);
        i = mEgl.eglGetError();
        if (i != 12288) {
          new StringBuilder("EGL error = 0x").append(Integer.toHexString(i));
        }
        try
        {
          while (!mRenderRequested) {}
          mRenderRequested = false;
        }
        finally {}
      }
      mEgl.eglDestroyContext(mEglDisplay, mEglContext);
      mEgl.eglDestroySurface(mEglDisplay, mEglSurface);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.gl.GlTextureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */