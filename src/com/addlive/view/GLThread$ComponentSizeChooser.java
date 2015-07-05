package com.addlive.view;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

class GLThread$ComponentSizeChooser
  extends GLThread.BaseConfigChooser
{
  protected int mAlphaSize;
  protected int mBlueSize;
  protected int mDepthSize;
  protected int mGreenSize;
  protected int mRedSize;
  protected int mStencilSize;
  private int[] mValue = new int[1];
  
  public GLThread$ComponentSizeChooser(GLThread paramGLThread, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(paramGLThread, new int[] { 12324, paramInt1, 12323, paramInt2, 12322, paramInt3, 12321, paramInt4, 12325, paramInt5, 12326, paramInt6, 12344 });
    mRedSize = paramInt1;
    mGreenSize = paramInt2;
    mBlueSize = paramInt3;
    mAlphaSize = paramInt4;
    mDepthSize = paramInt5;
    mStencilSize = paramInt6;
  }
  
  private int findConfigAttrib(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
  {
    if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, mValue)) {
      paramInt2 = mValue[0];
    }
    return paramInt2;
  }
  
  public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
  {
    int j = paramArrayOfEGLConfig.length;
    int i = 0;
    while (i < j)
    {
      EGLConfig localEGLConfig = paramArrayOfEGLConfig[i];
      int k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12325, 0);
      int m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12326, 0);
      if ((k >= mDepthSize) && (m >= mStencilSize))
      {
        k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12324, 0);
        m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12323, 0);
        int n = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12322, 0);
        int i1 = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12321, 0);
        if ((k == mRedSize) && (m == mGreenSize) && (n == mBlueSize) && (i1 == mAlphaSize)) {
          return localEGLConfig;
        }
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread.ComponentSizeChooser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */