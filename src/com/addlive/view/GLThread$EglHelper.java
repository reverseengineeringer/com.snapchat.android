package com.addlive.view;

import android.graphics.SurfaceTexture;
import com.addlive.impl.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;

class GLThread$EglHelper
{
  GLThread.EGLConfigChooser mEGLConfigChooser;
  GLThread.EGLContextFactory mEGLContextFactory;
  GLThread.EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
  EGL10 mEgl;
  EGLConfig mEglConfig;
  EGLContext mEglContext;
  EGLDisplay mEglDisplay;
  EGLSurface mEglSurface;
  
  public GLThread$EglHelper(GLThread paramGLThread)
  {
    if (GLThread.access$000(paramGLThread) == VideoViewType.CIRCLE) {}
    for (mEGLConfigChooser = new GLThread.CircleEGLConfigChooser(paramGLThread, true);; mEGLConfigChooser = new GLThread.SimpleEGLConfigChooser(paramGLThread, true))
    {
      mEGLContextFactory = new GLThread.DefaultContextFactory(paramGLThread, null);
      mEGLWindowSurfaceFactory = new GLThread.DefaultWindowSurfaceFactory(null);
      return;
    }
  }
  
  private void throwEglException(String paramString)
  {
    throwEglException(paramString, mEgl.eglGetError());
  }
  
  private void throwEglException(String paramString, int paramInt)
  {
    throw new RuntimeException(paramString + " failed: " + paramInt);
  }
  
  public GL createSurface(SurfaceTexture paramSurfaceTexture)
  {
    if (mEgl == null) {
      throw new RuntimeException("egl not initialized");
    }
    if (mEglDisplay == null) {
      throw new RuntimeException("eglDisplay not initialized");
    }
    if (mEglConfig == null) {
      throw new RuntimeException("mEglConfig not initialized");
    }
    if ((mEglSurface != null) && (mEglSurface != EGL10.EGL_NO_SURFACE))
    {
      mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      mEGLWindowSurfaceFactory.destroySurface(mEgl, mEglDisplay, mEglSurface);
    }
    mEglSurface = mEGLWindowSurfaceFactory.createWindowSurface(mEgl, mEglDisplay, mEglConfig, paramSurfaceTexture);
    if ((mEglSurface == null) || (mEglSurface == EGL10.EGL_NO_SURFACE))
    {
      if (mEgl.eglGetError() == 12299) {
        Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
      }
      return null;
    }
    if (!mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext)) {
      throwEglException("eglMakeCurrent");
    }
    return mEglContext.getGL();
  }
  
  public void destroySurface()
  {
    if ((mEglSurface != null) && (mEglSurface != EGL10.EGL_NO_SURFACE))
    {
      mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      mEGLWindowSurfaceFactory.destroySurface(mEgl, mEglDisplay, mEglSurface);
      mEglSurface = null;
    }
  }
  
  public void finish()
  {
    if (mEglContext != null)
    {
      mEGLContextFactory.destroyContext(mEgl, mEglDisplay, mEglContext);
      mEglContext = null;
    }
    if (mEglDisplay != null)
    {
      mEgl.eglTerminate(mEglDisplay);
      mEglDisplay = null;
    }
  }
  
  public void purgeBuffers()
  {
    mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
    mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext);
  }
  
  public void start()
  {
    mEgl = ((EGL10)EGLContext.getEGL());
    mEglDisplay = mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    if (mEglDisplay == EGL10.EGL_NO_DISPLAY) {
      throw new RuntimeException("eglGetDisplay failed");
    }
    int[] arrayOfInt = new int[2];
    if (!mEgl.eglInitialize(mEglDisplay, arrayOfInt)) {
      throw new RuntimeException("eglInitialize failed");
    }
    mEglConfig = mEGLConfigChooser.chooseConfig(mEgl, mEglDisplay);
    mEglContext = mEGLContextFactory.createContext(mEgl, mEglDisplay, mEglConfig);
    if ((mEglContext == null) || (mEglContext == EGL10.EGL_NO_CONTEXT))
    {
      mEglContext = null;
      throwEglException("createContext");
    }
    mEglSurface = null;
  }
  
  public boolean swap()
  {
    if (!mEgl.eglSwapBuffers(mEglDisplay, mEglSurface))
    {
      int i = mEgl.eglGetError();
      switch (i)
      {
      case 12300: 
      case 12301: 
      default: 
        throwEglException("eglSwapBuffers", i);
      }
    }
    for (;;)
    {
      return true;
      return false;
      Log.e("EglHelper", "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid=" + Thread.currentThread().getId());
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread.EglHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */