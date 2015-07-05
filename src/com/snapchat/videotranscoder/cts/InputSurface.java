package com.snapchat.videotranscoder.cts;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;

public class InputSurface
{
  private static final int EGL_OPENGL_ES2_BIT = 4;
  private static final int EGL_RECORDABLE_ANDROID = 12610;
  private static final String TAG = "InputSurface";
  private static final boolean VERBOSE = false;
  private EGLContext mEGLContext;
  private EGLDisplay mEGLDisplay;
  private EGLSurface mEGLSurface;
  private boolean mShouldReleaseSurface = true;
  private Surface mSurface;
  
  public InputSurface(Surface paramSurface)
  {
    this(paramSurface, true);
  }
  
  public InputSurface(Surface paramSurface, boolean paramBoolean)
  {
    if (paramSurface == null) {
      throw new NullPointerException();
    }
    mSurface = paramSurface;
    mShouldReleaseSurface = paramBoolean;
    eglSetup();
  }
  
  private void checkEglError(String paramString)
  {
    for (int i = 0;; i = 1)
    {
      int j = EGL14.eglGetError();
      if (j == 12288) {
        break;
      }
      new StringBuilder().append(paramString).append(": EGL error: 0x").append(Integer.toHexString(j));
    }
    if (i != 0) {
      throw new RuntimeException("EGL error encountered (see log)");
    }
  }
  
  private void eglSetup()
  {
    mEGLDisplay = EGL14.eglGetDisplay(0);
    if (mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
      throw new RuntimeException("unable to get EGL14 display");
    }
    Object localObject = new int[2];
    if (!EGL14.eglInitialize(mEGLDisplay, (int[])localObject, 0, (int[])localObject, 1))
    {
      mEGLDisplay = null;
      throw new RuntimeException("unable to initialize EGL14");
    }
    localObject = new EGLConfig[1];
    int[] arrayOfInt = new int[1];
    if (!EGL14.eglChooseConfig(mEGLDisplay, new int[] { 12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344 }, 0, (EGLConfig[])localObject, 0, 1, arrayOfInt, 0)) {
      throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
    }
    mEGLContext = EGL14.eglCreateContext(mEGLDisplay, localObject[0], EGL14.EGL_NO_CONTEXT, new int[] { 12440, 2, 12344 }, 0);
    checkEglError("eglCreateContext");
    if (mEGLContext == null) {
      throw new RuntimeException("null context");
    }
    mEGLSurface = EGL14.eglCreateWindowSurface(mEGLDisplay, localObject[0], mSurface, new int[] { 12344 }, 0);
    checkEglError("eglCreateWindowSurface");
    if (mEGLSurface == null) {
      throw new RuntimeException("surface was null");
    }
  }
  
  public Surface getSurface()
  {
    return mSurface;
  }
  
  public void makeCurrent()
  {
    if (!EGL14.eglMakeCurrent(mEGLDisplay, mEGLSurface, mEGLSurface, mEGLContext)) {
      throw new RuntimeException("eglMakeCurrent failed");
    }
  }
  
  public void release()
  {
    if (EGL14.eglGetCurrentContext().equals(mEGLContext)) {
      EGL14.eglMakeCurrent(mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
    }
    EGL14.eglDestroySurface(mEGLDisplay, mEGLSurface);
    EGL14.eglDestroyContext(mEGLDisplay, mEGLContext);
    if (mShouldReleaseSurface)
    {
      mSurface.release();
      mShouldReleaseSurface = false;
    }
    mEGLDisplay = null;
    mEGLContext = null;
    mEGLSurface = null;
    mSurface = null;
  }
  
  public void setPresentationTime(long paramLong)
  {
    EGLExt.eglPresentationTimeANDROID(mEGLDisplay, mEGLSurface, paramLong);
  }
  
  public boolean swapBuffers()
  {
    return EGL14.eglSwapBuffers(mEGLDisplay, mEGLSurface);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.InputSurface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */