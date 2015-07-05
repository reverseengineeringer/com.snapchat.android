package com.addlive.view;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public abstract interface GLThread$EGLConfigChooser
{
  public abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay);
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread.EGLConfigChooser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */