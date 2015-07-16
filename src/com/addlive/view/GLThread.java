package com.addlive.view;

import android.graphics.SurfaceTexture;
import android.opengl.GLSurfaceView.Renderer;
import com.addlive.impl.Log;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

public class GLThread
  extends Thread
{
  private static final GLThreadManager sGLThreadManager = new GLThreadManager(null);
  private EglHelper mEglHelper;
  private ArrayList<Runnable> mEventQueue = new ArrayList();
  private boolean mExited;
  private boolean mHasSurface;
  private boolean mHaveEglContext;
  private boolean mHaveEglSurface;
  private int mHeight = 0;
  private boolean mPaused;
  private boolean mPreserveEGLContextOnPause = true;
  private boolean mRenderComplete;
  private GLSurfaceView.Renderer mRenderer;
  private boolean mRequestPaused;
  private boolean mRequestRender = true;
  private boolean mShouldExit;
  private boolean mShouldReleaseEglContext;
  private boolean mSizeChanged = false;
  private boolean mWaitingForSurface;
  private int mWidth = 0;
  private SurfaceTexture surface;
  private VideoViewType type;
  
  GLThread(GLSurfaceView.Renderer paramRenderer, VideoViewType paramVideoViewType)
  {
    mRenderer = paramRenderer;
    mPaused = false;
    type = paramVideoViewType;
  }
  
  private void checkRenderThreadState() {}
  
  private void guardedRun()
  {
    mEglHelper = new EglHelper();
    mHaveEglContext = false;
    mHaveEglSurface = false;
    m = 0;
    n = 0;
    i3 = 0;
    j = 0;
    ??? = null;
    Object localObject3 = null;
    i6 = 0;
    i = 0;
    i2 = 0;
    k = 0;
    try
    {
      for (;;)
      {
        int i1;
        int i4;
        int i5;
        int i7;
        int i8;
        int i9;
        boolean bool;
        synchronized (sGLThreadManager)
        {
          if (mShouldExit) {
            synchronized (sGLThreadManager)
            {
              stopEglSurfaceLocked();
              stopEglContextLocked();
              return;
            }
          }
          if (!mEventQueue.isEmpty())
          {
            ??? = (Runnable)mEventQueue.remove(0);
            i1 = i3;
            i4 = i2;
            i2 = i;
            i = k;
            i3 = m;
            m = i4;
            k = j;
            j = i2;
            i2 = i3;
            if (??? != null)
            {
              ((Runnable)???).run();
              ??? = null;
              i5 = m;
              i4 = i;
              i3 = i1;
              m = i2;
              i2 = i5;
              i = j;
              j = k;
              k = i4;
            }
          }
          else
          {
            if (mPaused != mRequestPaused) {
              mPaused = mRequestPaused;
            }
            if (!mShouldReleaseEglContext) {
              break label866;
            }
            stopEglSurfaceLocked();
            stopEglContextLocked();
            mShouldReleaseEglContext = false;
            i4 = 1;
            if (n == 0) {
              break label860;
            }
            stopEglSurfaceLocked();
            stopEglContextLocked();
            k = 0;
            if ((mHaveEglSurface) && (mPaused))
            {
              stopEglSurfaceLocked();
              if ((!mPreserveEGLContextOnPause) || (sGLThreadManager.shouldReleaseEGLContextWhenPausing())) {
                stopEglContextLocked();
              }
              if (sGLThreadManager.shouldTerminateEGLWhenPausing()) {
                mEglHelper.finish();
              }
            }
            if ((!mHasSurface) && (!mWaitingForSurface))
            {
              if (mHaveEglSurface) {
                stopEglSurfaceLocked();
              }
              mWaitingForSurface = true;
            }
            if ((mHasSurface) && (mWaitingForSurface)) {
              mWaitingForSurface = false;
            }
            if (i6 != 0) {
              mRenderComplete = true;
            }
            i5 = i4;
            i7 = i3;
            i8 = m;
            i9 = i2;
            if (readyToDraw())
            {
              i1 = i4;
              n = i2;
              if (!mHaveEglContext)
              {
                if (i4 != 0)
                {
                  i1 = 0;
                  n = i2;
                }
              }
              else
              {
                i4 = i3;
                i2 = m;
                if (mHaveEglContext)
                {
                  i4 = i3;
                  i2 = m;
                  if (!mHaveEglSurface)
                  {
                    mHaveEglSurface = true;
                    i2 = 1;
                    i4 = 1;
                  }
                }
                i5 = i1;
                i7 = i4;
                i8 = i2;
                i9 = n;
                if (!mHaveEglSurface) {
                  break label626;
                }
                if (!mSizeChanged) {
                  break label853;
                }
                m = 1;
                j = mWidth;
                i = mHeight;
                mSizeChanged = false;
                mRequestRender = false;
                i3 = j;
                i4 = n;
                n = k;
                j = i;
                k = i3;
                i = i1;
                i1 = m;
                m = i4;
                continue;
              }
              bool = sGLThreadManager.tryAcquireEglContextLocked(this);
              i1 = i4;
              n = i2;
              if (!bool) {
                continue;
              }
              try
              {
                mEglHelper.start();
                mHaveEglContext = true;
                n = 1;
                i1 = i4;
              }
              catch (RuntimeException localRuntimeException)
              {
                sGLThreadManager.releaseEglContextLocked(this);
                throw localRuntimeException;
              }
            }
          }
        }
        synchronized (sGLThreadManager)
        {
          stopEglSurfaceLocked();
          stopEglContextLocked();
          throw ((Throwable)localObject5);
          n = k;
          k = i5;
          i3 = i7;
          m = i8;
          i2 = i9;
          continue;
          if (i2 != 0)
          {
            GL10 localGL101 = (GL10)mEglHelper.createSurface(surface);
            if (localGL101 == null)
            {
              Log.e("AddLive_SDK", "Failed to create an OpenGL Surface. Ending the GLThread run loop");
              synchronized (sGLThreadManager)
              {
                stopEglSurfaceLocked();
                stopEglContextLocked();
                return;
              }
            }
            sGLThreadManager.checkGLDriver(localGL102);
            i3 = 0;
            i2 = m;
            if (m != 0)
            {
              mRenderer.onSurfaceCreated(localGL102, mEglHelper.mEglConfig);
              i2 = 0;
            }
            m = i1;
            if (i1 != 0)
            {
              mEglHelper.purgeBuffers();
              mRenderer.onSurfaceChanged(localGL102, k, j);
              m = 0;
            }
            mRenderer.onDrawFrame(localGL102);
            bool = mEglHelper.swap();
            if (bool) {
              break label872;
            }
            n = 1;
            i6 = 1;
            i1 = i3;
            i4 = i;
            i3 = m;
            m = i1;
            i = j;
            j = k;
            k = i4;
          }
        }
      }
    }
    finally {}
  }
  
  private boolean readyToDraw()
  {
    return (!mPaused) && (mHasSurface) && (mWidth > 0) && (mHeight > 0) && (mRequestRender);
  }
  
  private void stopEglContextLocked()
  {
    if (mHaveEglContext)
    {
      mEglHelper.finish();
      mHaveEglContext = false;
      sGLThreadManager.releaseEglContextLocked(this);
    }
  }
  
  private void stopEglSurfaceLocked()
  {
    if (mHaveEglSurface)
    {
      mHaveEglSurface = false;
      mEglHelper.destroySurface();
    }
  }
  
  private void waitForRenderComplete()
  {
    while ((!mExited) && (!mPaused) && (!mRenderComplete) && (ableToDraw())) {}
  }
  
  public boolean ableToDraw()
  {
    return (mHaveEglContext) && (mHaveEglSurface) && (readyToDraw());
  }
  
  public void onPause()
  {
    synchronized (sGLThreadManager)
    {
      mRequestPaused = true;
      return;
    }
  }
  
  public void onResume()
  {
    synchronized (sGLThreadManager)
    {
      mRequestPaused = false;
      mRequestRender = true;
      mRenderComplete = false;
      return;
    }
  }
  
  public void onWindowResize(int paramInt1, int paramInt2)
  {
    synchronized (sGLThreadManager)
    {
      mWidth = paramInt1;
      mHeight = paramInt2;
      mSizeChanged = true;
      mRequestRender = true;
      mRenderComplete = false;
      waitForRenderComplete();
      return;
    }
  }
  
  public void queueEvent(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      throw new IllegalArgumentException("r must not be null");
    }
    synchronized (sGLThreadManager)
    {
      mEventQueue.add(paramRunnable);
      return;
    }
  }
  
  public void requestExitAndWait()
  {
    synchronized (sGLThreadManager)
    {
      mShouldExit = true;
      return;
    }
  }
  
  public void requestReleaseEglContextLocked()
  {
    mShouldReleaseEglContext = true;
  }
  
  public void requestRender()
  {
    synchronized (sGLThreadManager)
    {
      mRequestRender = true;
      mRenderComplete = false;
      return;
    }
  }
  
  public void run()
  {
    setName("GLThread " + getId());
    try
    {
      guardedRun();
      return;
    }
    catch (Exception localException)
    {
      Log.e("AddLive_SDK", "Got an error during rendering loop", localException);
      return;
    }
    finally
    {
      sGLThreadManager.threadExiting(this);
    }
  }
  
  public void setSurface(SurfaceTexture paramSurfaceTexture)
  {
    surface = paramSurfaceTexture;
  }
  
  public void surfaceCreated()
  {
    Log.w("AddLive_SDK", "Processing surface created");
    synchronized (sGLThreadManager)
    {
      mHasSurface = true;
      Log.w("AddLive_SDK", "surface created processed");
      return;
    }
  }
  
  public void surfaceDestroyed()
  {
    synchronized (sGLThreadManager)
    {
      mHasSurface = false;
      return;
    }
  }
  
  abstract class BaseConfigChooser
    implements GLThread.EGLConfigChooser
  {
    protected int[] mConfigSpec = filterConfigSpec(paramArrayOfInt);
    
    public BaseConfigChooser(int[] paramArrayOfInt) {}
    
    private int[] filterConfigSpec(int[] paramArrayOfInt)
    {
      int i = paramArrayOfInt.length;
      int[] arrayOfInt = new int[i + 2];
      System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i - 1);
      arrayOfInt[(i - 1)] = 12352;
      arrayOfInt[i] = 4;
      arrayOfInt[(i + 1)] = 12344;
      return arrayOfInt;
    }
    
    public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay)
    {
      int[] arrayOfInt = new int[1];
      if (!paramEGL10.eglChooseConfig(paramEGLDisplay, mConfigSpec, null, 0, arrayOfInt)) {
        throw new IllegalArgumentException("eglChooseConfig failed");
      }
      int i = arrayOfInt[0];
      if (i <= 0) {
        throw new IllegalArgumentException("No configs match configSpec");
      }
      EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
      if (!paramEGL10.eglChooseConfig(paramEGLDisplay, mConfigSpec, arrayOfEGLConfig, i, arrayOfInt)) {
        throw new IllegalArgumentException("eglChooseConfig#2 failed");
      }
      paramEGL10 = chooseConfig(paramEGL10, paramEGLDisplay, arrayOfEGLConfig);
      if (paramEGL10 == null) {
        throw new IllegalArgumentException("No config chosen");
      }
      return paramEGL10;
    }
    
    abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig);
  }
  
  class CircleEGLConfigChooser
    extends GLThread.ComponentSizeChooser
  {
    public CircleEGLConfigChooser(boolean paramBoolean) {}
  }
  
  class ComponentSizeChooser
    extends GLThread.BaseConfigChooser
  {
    protected int mAlphaSize;
    protected int mBlueSize;
    protected int mDepthSize;
    protected int mGreenSize;
    protected int mRedSize;
    protected int mStencilSize;
    private int[] mValue = new int[1];
    
    public ComponentSizeChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
    {
      super(new int[] { 12324, paramInt1, 12323, paramInt2, 12322, paramInt3, 12321, paramInt4, 12325, paramInt5, 12326, paramInt6, 12344 });
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
  
  class DefaultContextFactory
    implements GLThread.EGLContextFactory
  {
    private int EGL_CONTEXT_CLIENT_VERSION = 12440;
    
    private DefaultContextFactory() {}
    
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
  
  static class DefaultWindowSurfaceFactory
    implements GLThread.EGLWindowSurfaceFactory
  {
    public EGLSurface createWindowSurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject)
    {
      try
      {
        paramEGL10 = paramEGL10.eglCreateWindowSurface(paramEGLDisplay, paramEGLConfig, paramObject, null);
        return paramEGL10;
      }
      catch (IllegalArgumentException paramEGL10)
      {
        Log.e("AddLive_SDK", "eglCreateWindowSurface", paramEGL10);
      }
      return null;
    }
    
    public void destroySurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface)
    {
      paramEGL10.eglDestroySurface(paramEGLDisplay, paramEGLSurface);
    }
  }
  
  public static abstract interface EGLConfigChooser
  {
    public abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay);
  }
  
  public static abstract interface EGLContextFactory
  {
    public abstract EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig);
    
    public abstract void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext);
  }
  
  public static abstract interface EGLWindowSurfaceFactory
  {
    public abstract EGLSurface createWindowSurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject);
    
    public abstract void destroySurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface);
  }
  
  class EglHelper
  {
    GLThread.EGLConfigChooser mEGLConfigChooser;
    GLThread.EGLContextFactory mEGLContextFactory;
    GLThread.EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
    EGL10 mEgl;
    EGLConfig mEglConfig;
    EGLContext mEglContext;
    EGLDisplay mEglDisplay;
    EGLSurface mEglSurface;
    
    public EglHelper()
    {
      if (type == VideoViewType.CIRCLE) {}
      for (mEGLConfigChooser = new GLThread.CircleEGLConfigChooser(GLThread.this, true);; mEGLConfigChooser = new GLThread.SimpleEGLConfigChooser(GLThread.this, true))
      {
        mEGLContextFactory = new GLThread.DefaultContextFactory(GLThread.this, null);
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
  
  static class GLThreadManager
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
      label94:
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
              }
            }
            else
            {
              if (!mMultipleGLESContextsAllowed) {
                break label94;
              }
              bool1 = bool2;
              if (paramGL10.startsWith("Adreno")) {
                break label94;
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
        return;
      }
      finally
      {
        paramGLThread = finally;
        throw paramGLThread;
      }
    }
    
    public boolean tryAcquireEglContextLocked(GLThread paramGLThread)
    {
      if ((mEglOwner == paramGLThread) || (mEglOwner == null)) {
        mEglOwner = paramGLThread;
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
  
  class SimpleEGLConfigChooser
    extends GLThread.ComponentSizeChooser
  {
    public SimpleEGLConfigChooser(boolean paramBoolean) {}
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */