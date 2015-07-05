package com.addlive.view;

import javax.microedition.khronos.opengles.GL10;

class GLThread$GLThreadManager
{
  private static String TAG = "GLThreadManager";
  private static final String kADRENO = "Adreno";
  private static final int kGLES_20 = 131072;
  private static final String kMSM7K_RENDERER_PREFIX = "Q3Dimension MSM7500 ";
  private GLThread mEglOwner;
  private boolean mGLESDriverCheckComplete;
  private int mGLESVersion;
  private boolean mGLESVersionCheckComplete;
  private boolean mLimitedGLESContexts;
  private boolean mMultipleGLESContextsAllowed;
  
  private void checkGLESVersion()
  {
    if (!mGLESVersionCheckComplete)
    {
      mMultipleGLESContextsAllowed = true;
      mGLESVersionCheckComplete = true;
    }
  }
  
  public void checkGLDriver(GL10 paramGL10)
  {
    boolean bool2 = false;
    label98:
    for (;;)
    {
      try
      {
        if (!mGLESDriverCheckComplete)
        {
          checkGLESVersion();
          paramGL10 = paramGL10.glGetString(7937);
          if (mGLESVersion < 131072)
          {
            if (!paramGL10.startsWith("Q3Dimension MSM7500 "))
            {
              bool1 = true;
              mMultipleGLESContextsAllowed = bool1;
              notifyAll();
            }
          }
          else
          {
            if (!mMultipleGLESContextsAllowed) {
              break label98;
            }
            bool1 = bool2;
            if (paramGL10.startsWith("Adreno")) {
              break label98;
            }
            mLimitedGLESContexts = bool1;
            mGLESDriverCheckComplete = true;
          }
        }
        else
        {
          return;
        }
        boolean bool1 = false;
        continue;
        bool1 = true;
      }
      finally {}
    }
  }
  
  public void releaseEglContextLocked(GLThread paramGLThread)
  {
    if (mEglOwner == paramGLThread) {
      mEglOwner = null;
    }
    notifyAll();
  }
  
  public boolean shouldReleaseEGLContextWhenPausing()
  {
    try
    {
      boolean bool = mLimitedGLESContexts;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean shouldTerminateEGLWhenPausing()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 48	com/addlive/view/GLThread$GLThreadManager:checkGLESVersion	()V
    //   6: aload_0
    //   7: getfield 42	com/addlive/view/GLThread$GLThreadManager:mMultipleGLESContextsAllowed	Z
    //   10: istore_1
    //   11: iload_1
    //   12: ifne +9 -> 21
    //   15: iconst_1
    //   16: istore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_1
    //   20: ireturn
    //   21: iconst_0
    //   22: istore_1
    //   23: goto -6 -> 17
    //   26: astore_2
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_2
    //   30: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	GLThreadManager
    //   10	13	1	bool	boolean
    //   26	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	11	26	finally
  }
  
  public void threadExiting(GLThread paramGLThread)
  {
    try
    {
      GLThread.access$302(paramGLThread, true);
      if (mEglOwner == paramGLThread) {
        mEglOwner = null;
      }
      notifyAll();
      return;
    }
    finally {}
  }
  
  public boolean tryAcquireEglContextLocked(GLThread paramGLThread)
  {
    if ((mEglOwner == paramGLThread) || (mEglOwner == null))
    {
      mEglOwner = paramGLThread;
      notifyAll();
    }
    do
    {
      return true;
      checkGLESVersion();
    } while (mMultipleGLESContextsAllowed);
    if (mEglOwner != null) {
      mEglOwner.requestReleaseEglContextLocked();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread.GLThreadManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */