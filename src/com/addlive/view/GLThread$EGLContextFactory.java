package com.addlive.view;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

public abstract interface GLThread$EGLContextFactory
{
  public abstract EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig);
  
  public abstract void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext);
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread.EGLContextFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */