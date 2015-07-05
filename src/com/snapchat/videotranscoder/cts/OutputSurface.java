package com.snapchat.videotranscoder.cts;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;
import cgb;
import cgc;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.FragmentShader;

public class OutputSurface
  implements SurfaceTexture.OnFrameAvailableListener
{
  private static final String TAG = "OutputSurface";
  protected EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
  protected EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
  protected EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
  protected boolean mFrameAvailable;
  protected Object mFrameSyncObject = new Object();
  @cgc
  private final Bitmap mOverlayBitmap;
  protected Surface mSurface;
  protected SurfaceTexture mSurfaceTexture;
  protected TextureRenderer mTextureRenderer;
  protected final TranscodingResources mTranscodingResources;
  
  public OutputSurface(@cgb TranscodingResources paramTranscodingResources, int paramInt1, int paramInt2, @cgb float[] paramArrayOfFloat, @cgc Bitmap paramBitmap)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramArrayOfFloat == null) {
      throw new NullPointerException("transformationMatrix is null");
    }
    mTranscodingResources = paramTranscodingResources;
    mOverlayBitmap = paramBitmap;
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      throw new IllegalArgumentException();
    }
    eglSetup(paramInt1, paramInt2);
    makeCurrent();
    setup(paramArrayOfFloat);
  }
  
  public OutputSurface(@cgb TranscodingResources paramTranscodingResources, @cgb float[] paramArrayOfFloat, @cgc Bitmap paramBitmap)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramArrayOfFloat == null) {
      throw new NullPointerException("transformationMatrix is null");
    }
    mTranscodingResources = paramTranscodingResources;
    mOverlayBitmap = paramBitmap;
    setup(paramArrayOfFloat);
  }
  
  private void checkEglError(String paramString)
  {
    int i = EGL14.eglGetError();
    if (i != 12288) {
      throw new RuntimeException(paramString + ": EGL error: 0x" + Integer.toHexString(i));
    }
  }
  
  private void eglSetup(int paramInt1, int paramInt2)
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
    if (!EGL14.eglChooseConfig(mEGLDisplay, new int[] { 12324, 8, 12323, 8, 12322, 8, 12352, 4, 12339, 1, 12344 }, 0, (EGLConfig[])localObject, 0, 1, arrayOfInt, 0)) {
      throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
    }
    mEGLContext = EGL14.eglCreateContext(mEGLDisplay, localObject[0], EGL14.EGL_NO_CONTEXT, new int[] { 12440, 2, 12344 }, 0);
    checkEglError("eglCreateContext");
    if (mEGLContext == null) {
      throw new RuntimeException("null context");
    }
    mEGLSurface = EGL14.eglCreatePbufferSurface(mEGLDisplay, localObject[0], new int[] { 12375, paramInt1, 12374, paramInt2, 12344 }, 0);
    checkEglError("eglCreatePbufferSurface");
    if (mEGLSurface == null) {
      throw new RuntimeException("surface was null");
    }
  }
  
  public void awaitNewImage()
  {
    VerboseLogging.verboseLog("OutputSurface", "Awaiting a new image");
    synchronized (mFrameSyncObject)
    {
      boolean bool = mFrameAvailable;
      if (bool) {
        break label88;
      }
      try
      {
        mFrameSyncObject.wait(500L);
        if (!mFrameAvailable)
        {
          Utils.getInstance().haveLooper("OutputSurface");
          throw new RuntimeException("Surface frame wait timed out");
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new RuntimeException(localInterruptedException);
      }
    }
    if (!mFrameAvailable) {
      VerboseLogging.verboseLog("OutputSurface", "Trying to get frame again");
    }
    label88:
    mFrameAvailable = false;
    mTextureRenderer.checkGlError("before updateTexImage");
    mSurfaceTexture.updateTexImage();
    VerboseLogging.verboseLog("OutputSurface", "Done with updateTexImage");
  }
  
  public void changeFragmentShader(@cgb FragmentShader paramFragmentShader)
  {
    mTextureRenderer.changeFragmentShader(paramFragmentShader);
  }
  
  public boolean checkForNewImage(int paramInt)
  {
    VerboseLogging.verboseLog("OutputSurface", "Checking for a new image");
    synchronized (mFrameSyncObject)
    {
      for (;;)
      {
        boolean bool = mFrameAvailable;
        if (!bool) {
          try
          {
            mFrameSyncObject.wait(paramInt);
            if (!mFrameAvailable)
            {
              VerboseLogging.verboseLog("OutputSurface", "No new image");
              return false;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            throw new RuntimeException(localInterruptedException);
          }
        }
      }
    }
    mFrameAvailable = false;
    VerboseLogging.verboseLog("OutputSurface", "New image available");
    mTextureRenderer.checkGlError("before updateTexImage");
    mSurfaceTexture.updateTexImage();
    return true;
  }
  
  public void drawImage()
  {
    mTextureRenderer.drawFrame();
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
  
  public void onFrameAvailable(SurfaceTexture arg1)
  {
    VerboseLogging.verboseLog("OutputSurface", "new frame available");
    synchronized (mFrameSyncObject)
    {
      if (mFrameAvailable) {
        throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
      }
    }
    mFrameAvailable = true;
    mFrameSyncObject.notifyAll();
  }
  
  public void release()
  {
    mTextureRenderer.release();
    if (mEGLDisplay != EGL14.EGL_NO_DISPLAY)
    {
      VerboseLogging.verboseLog("OutputSurface", "mEGLDisplay: " + mEGLDisplay);
      VerboseLogging.verboseLog("OutputSurface", "eglDestroySurface");
      EGL14.eglDestroySurface(mEGLDisplay, mEGLSurface);
      VerboseLogging.verboseLog("OutputSurface", "eglDestroyContext");
      EGL14.eglDestroyContext(mEGLDisplay, mEGLContext);
      VerboseLogging.verboseLog("OutputSurface", "eglReleaseThread");
      EGL14.eglReleaseThread();
      VerboseLogging.verboseLog("OutputSurface", "eglTerminate");
      EGL14.eglTerminate(mEGLDisplay);
    }
    VerboseLogging.verboseLog("OutputSurface", "releasing surface");
    mSurface.release();
    mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    mEGLContext = EGL14.EGL_NO_CONTEXT;
    mEGLSurface = EGL14.EGL_NO_SURFACE;
    mTextureRenderer = null;
    mSurface = null;
    mSurfaceTexture = null;
  }
  
  protected void setup(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null) {
      throw new NullPointerException("transformationMatrix is null");
    }
    if (paramArrayOfFloat.length != 16) {
      throw new IllegalArgumentException("transformationMatrix must be a a 4x4 matrix of length 16");
    }
    mTextureRenderer = new TextureRenderer(mTranscodingResources, paramArrayOfFloat);
    mTextureRenderer.setOverlayBitmap(mOverlayBitmap);
    mTextureRenderer.initialize();
    VerboseLogging.verboseLog("OutputSurface", "textureID=" + mTextureRenderer.getExternalTextureId());
    mSurfaceTexture = new SurfaceTexture(mTextureRenderer.getExternalTextureId());
    mSurfaceTexture.setOnFrameAvailableListener(this);
    mSurface = new Surface(mSurfaceTexture);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.OutputSurface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */