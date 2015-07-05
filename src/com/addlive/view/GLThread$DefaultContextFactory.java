package com.addlive.view;

import com.addlive.impl.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

class GLThread$DefaultContextFactory
  implements GLThread.EGLContextFactory
{
  private int EGL_CONTEXT_CLIENT_VERSION = 12440;
  
  private GLThread$DefaultContextFactory(GLThread paramGLThread) {}
  
  public EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
  {
    int i = EGL_CONTEXT_CLIENT_VERSION;
    return paramEGL10.eglCreateContext(paramEGLDisplay, paramEGLConfig, EGL10.EGL_NO_CONTEXT, new int[] { i, 2, 12344 });
  }
  
  public void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
  {
    if (!paramEGL10.eglDestroyContext(paramEGLDisplay, paramEGLContext))
    {
      Log.e("DefaultContextFactory", "display:" + paramEGLDisplay + " context: " + paramEGLContext);
      throw new RuntimeException("eglDestroyContext failed: ");
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread.DefaultContextFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */