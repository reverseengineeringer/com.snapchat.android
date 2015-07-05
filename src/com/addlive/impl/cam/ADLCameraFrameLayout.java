package com.addlive.impl.cam;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.opengl.Matrix;
import android.os.Bundle;
import android.view.Display;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.service.Device;
import com.addlive.service.VideoCaptureDevice;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class ADLCameraFrameLayout
  implements Application.ActivityLifecycleCallbacks, SurfaceTexture.OnFrameAvailableListener, ADLCamera
{
  private static final String LOG_TAG = "AddLive_SDK_FCam";
  private InternalCamera mCamera;
  private Context mContext;
  private FrameLayout mFrameLayout;
  private GLSurfaceView mGLSurfaceView;
  private InternalRenderer mRenderer;
  
  public ADLCameraFrameLayout(ADLInjectFrameCb paramADLInjectFrameCb, Context paramContext, CaptureConfig paramCaptureConfig)
  {
    Log.d("AddLive_SDK_FCam", "constructor");
    mContext = paramContext;
    paramContext = mContext.getApplicationContext();
    if ((paramContext instanceof Application)) {
      ((Application)paramContext).registerActivityLifecycleCallbacks(this);
    }
    mCamera = new InternalCamera(mContext, paramCaptureConfig);
    mRenderer = new InternalRenderer(paramADLInjectFrameCb, mCamera.getWidth(), mCamera.getHeight());
    mGLSurfaceView = new GLSurfaceView(mContext);
    mGLSurfaceView.setEGLContextClientVersion(2);
    mGLSurfaceView.setRenderer(mRenderer);
    mGLSurfaceView.setRenderMode(0);
  }
  
  private static int createFramebuffer(int paramInt)
  {
    int[] arrayOfInt = new int[1];
    GLES20.glGenFramebuffers(1, arrayOfInt, 0);
    GLES20.glFramebufferTexture2D(36160, 36064, 3553, paramInt, 0);
    if (GLES20.glCheckFramebufferStatus(36160) != 36053) {
      Log.e("AddLive_SDK_FCam", "framebuffer not complete");
    }
    return arrayOfInt[0];
  }
  
  private static int createProgram(String paramString1, String paramString2)
  {
    int i = loadShader(35633, paramString1);
    if (i == 0) {}
    int j;
    int k;
    do
    {
      do
      {
        return 0;
        j = loadShader(35632, paramString2);
      } while (j == 0);
      k = GLES20.glCreateProgram();
    } while (k == 0);
    GLES20.glAttachShader(k, i);
    GLES20.glAttachShader(k, j);
    GLES20.glLinkProgram(k);
    paramString1 = new int[1];
    GLES20.glGetProgramiv(k, 35714, paramString1, 0);
    if (paramString1[0] != 1)
    {
      Log.e("AddLive_SDK_FCam", "Could not link program: " + GLES20.glGetProgramInfoLog(k));
      GLES20.glDeleteProgram(k);
      return 0;
    }
    return k;
  }
  
  private static int createTexture(int paramInt)
  {
    int[] arrayOfInt = new int[1];
    GLES20.glGenTextures(1, arrayOfInt, 0);
    GLES20.glBindTexture(paramInt, arrayOfInt[0]);
    GLES20.glTexParameterf(paramInt, 10241, 9729.0F);
    GLES20.glTexParameterf(paramInt, 10240, 9729.0F);
    GLES20.glTexParameteri(paramInt, 10242, 33071);
    GLES20.glTexParameteri(paramInt, 10243, 33071);
    return arrayOfInt[0];
  }
  
  private static int loadShader(int paramInt, String paramString)
  {
    int i = GLES20.glCreateShader(paramInt);
    if (i == 0) {
      return 0;
    }
    GLES20.glShaderSource(i, paramString);
    GLES20.glCompileShader(i);
    paramString = new int[1];
    GLES20.glGetShaderiv(i, 35713, paramString, 0);
    if (paramString[0] == 0)
    {
      Log.e("AddLive_SDK_FCam", "Could not compile shader " + paramInt + ":" + GLES20.glGetShaderInfoLog(i));
      GLES20.glDeleteShader(i);
      return 0;
    }
    return i;
  }
  
  private void startCamera(SurfaceTexture paramSurfaceTexture)
  {
    Log.d("AddLive_SDK_FCam", "startCamera");
    paramSurfaceTexture.setOnFrameAvailableListener(this);
    if (mCamera != null) {
      mCamera.start(paramSurfaceTexture);
    }
  }
  
  private void stopCamera(SurfaceTexture paramSurfaceTexture)
  {
    paramSurfaceTexture.setOnFrameAvailableListener(null);
  }
  
  public void dispose()
  {
    Log.d("AddLive_SDK_FCam", "dispose");
    Context localContext = mContext.getApplicationContext();
    if ((localContext instanceof Application)) {
      ((Application)localContext).unregisterActivityLifecycleCallbacks(this);
    }
    mGLSurfaceView = null;
    mRenderer = null;
    mCamera = null;
  }
  
  public List<Device> getCameraDevices()
  {
    return mCamera.getCameraDevices();
  }
  
  public String getDevice()
  {
    return mCamera.getDevice();
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    Log.d("AddLive_SDK_FCam", "onActivityCreated");
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    Log.d("AddLive_SDK_FCam", "onActivityDestroyed");
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    Log.d("AddLive_SDK_FCam", "onActivityPaused");
    mRenderer.stopCamera();
    mCamera.stop();
    mGLSurfaceView.onPause();
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    Log.d("AddLive_SDK_FCam", "onActivityResumed");
    mCamera.configure();
    mGLSurfaceView.onResume();
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    Log.d("AddLive_SDK_FCam", "onActivitySaveInst");
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    Log.d("AddLive_SDK_FCam", "onActivityStarted");
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    Log.d("AddLive_SDK_FCam", "onActivityStopped");
  }
  
  public void onFrameAvailable(SurfaceTexture paramSurfaceTexture)
  {
    mGLSurfaceView.queueEvent(new Runnable()
    {
      int deviceOrient = wm.getDefaultDisplay().getRotation();
      long now = System.currentTimeMillis();
      int orient = mCamera.getOrientation();
      WindowManager wm = (WindowManager)mContext.getSystemService("window");
      
      public void run()
      {
        mRenderer.drawFrame(orient, deviceOrient, now);
      }
    });
    mGLSurfaceView.requestRender();
  }
  
  public int processProperty(String paramString1, String paramString2)
  {
    return mCamera.processProperty(paramString1, paramString2);
  }
  
  public void setDevice(String paramString)
  {
    mCamera.setDevice(paramString);
    mCamera.stop();
    mCamera.configure();
    mRenderer.startCamera();
  }
  
  public void start(Object paramObject)
  {
    Log.d("AddLive_SDK_FCam", "start");
    if (!(paramObject instanceof FrameLayout)) {
      throw new IllegalArgumentException("ADLCameraFrameLayout expects a FrameLayout object");
    }
    stop();
    mCamera.configure();
    mFrameLayout = ((FrameLayout)paramObject);
    mFrameLayout.addView(mGLSurfaceView, new LinearLayout.LayoutParams(-1, -1));
  }
  
  /* Error */
  public void stop()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 25
    //   4: ldc_w 331
    //   7: invokestatic 48	com/addlive/impl/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_0
    //   12: getfield 79	com/addlive/impl/cam/ADLCameraFrameLayout:mRenderer	Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;
    //   15: invokevirtual 268	com/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer:stopCamera	()V
    //   18: aload_0
    //   19: getfield 67	com/addlive/impl/cam/ADLCameraFrameLayout:mCamera	Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;
    //   22: invokevirtual 271	com/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera:stop	()V
    //   25: aload_0
    //   26: getfield 320	com/addlive/impl/cam/ADLCameraFrameLayout:mFrameLayout	Landroid/widget/FrameLayout;
    //   29: aload_0
    //   30: getfield 86	com/addlive/impl/cam/ADLCameraFrameLayout:mGLSurfaceView	Landroid/opengl/GLSurfaceView;
    //   33: invokevirtual 335	android/widget/FrameLayout:removeView	(Landroid/view/View;)V
    //   36: aload_0
    //   37: aconst_null
    //   38: putfield 320	com/addlive/impl/cam/ADLCameraFrameLayout:mFrameLayout	Landroid/widget/FrameLayout;
    //   41: aload_0
    //   42: monitorexit
    //   43: return
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    //   49: astore_1
    //   50: goto -9 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	ADLCameraFrameLayout
    //   44	4	1	localObject	Object
    //   49	1	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	25	44	finally
    //   25	41	44	finally
    //   25	41	49	java/lang/Exception
  }
  
  class InternalCamera
  {
    private Camera mCamera;
    private List<Device> mCameraDevices = new LinkedList();
    private Context mContext;
    private int mFps;
    private ADLInjectFrameCb mFrameReceiver;
    private int mHeight;
    private Map<String, Integer> mId2IdxMap = new HashMap();
    private int mWidth;
    
    public InternalCamera(Context paramContext, CaptureConfig paramCaptureConfig)
    {
      mContext = paramContext;
      mWidth = paramCaptureConfig.getWidth();
      mHeight = paramCaptureConfig.getHeight();
      mFps = paramCaptureConfig.getFps();
      if (mContext == null) {
        throw new RuntimeException("Invalid context.");
      }
      if ((mContext.getPackageManager().hasSystemFeature("android.hardware.camera")) || (mContext.getPackageManager().hasSystemFeature("android.hardware.camera.front"))) {}
      for (int i = 1; i == 0; i = 0) {
        throw new RuntimeException("Camera feature is not supported by system.");
      }
      int k = Camera.getNumberOfCameras();
      this$1 = new Camera.CameraInfo();
      i = j;
      if (i < k)
      {
        Camera.getCameraInfo(i, ADLCameraFrameLayout.this);
        if (facing == 1)
        {
          mCameraDevices.add(new Device(VideoCaptureDevice.FRONT_CAMERA.getId(), "Front Camera"));
          mId2IdxMap.put(VideoCaptureDevice.FRONT_CAMERA.getId(), Integer.valueOf(i));
        }
        for (;;)
        {
          i += 1;
          break;
          mCameraDevices.add(new Device(VideoCaptureDevice.BACK_CAMERA.getId(), "Back Camera"));
          mId2IdxMap.put(VideoCaptureDevice.BACK_CAMERA.getId(), Integer.valueOf(i));
        }
      }
      if (!mId2IdxMap.containsKey(ADLCameraHelper.getSelectedCam())) {
        ADLCameraHelper.setSelectedCam(VideoCaptureDevice.BACK_CAMERA.getId());
      }
    }
    
    public void configure()
    {
      mCamera = Camera.open(((Integer)mId2IdxMap.get(ADLCameraHelper.getSelectedCam())).intValue());
      int i = getOrientation();
      mCamera.setDisplayOrientation(i);
      Camera.Parameters localParameters = mCamera.getParameters();
      localParameters.setPreviewFormat(17);
      localParameters.setPreviewSize(mWidth, mHeight);
      int[] arrayOfInt = getFrameRateRange(localParameters.getSupportedPreviewFpsRange(), mFps);
      localParameters.setPreviewFpsRange(arrayOfInt[0], arrayOfInt[1]);
      mCamera.setParameters(localParameters);
    }
    
    public List<Device> getCameraDevices()
    {
      return mCameraDevices;
    }
    
    public String getDevice()
    {
      return ADLCameraHelper.getSelectedCam();
    }
    
    public int[] getFrameRateRange(List<int[]> paramList, int paramInt)
    {
      int k = -1;
      Object localObject1 = new StringBuilder();
      Object localObject2 = paramList.iterator();
      int[] arrayOfInt;
      while (((Iterator)localObject2).hasNext())
      {
        arrayOfInt = (int[])((Iterator)localObject2).next();
        ((StringBuilder)localObject1).append('[').append(arrayOfInt[0]).append(';').append(arrayOfInt[1]).append("], ");
      }
      ((StringBuilder)localObject1).delete(((StringBuilder)localObject1).length() - 2, ((StringBuilder)localObject1).length());
      Log.d("AddLive_SDK_FCam", "Looking up for best frame rate range within available ones:");
      Log.d("AddLive_SDK_FCam", ((StringBuilder)localObject1).toString());
      localObject1 = new LinkedList();
      localObject2 = paramList.iterator();
      for (int i = -1; ((Iterator)localObject2).hasNext(); i = j)
      {
        arrayOfInt = (int[])((Iterator)localObject2).next();
        j = i;
        if (arrayOfInt[1] <= paramInt * 1000)
        {
          j = i;
          if (i < arrayOfInt[1]) {
            j = arrayOfInt[1];
          }
          ((List)localObject1).add(arrayOfInt);
        }
      }
      if (((List)localObject1).isEmpty())
      {
        paramList = (int[])paramList.get(0);
        Log.w("AddLive_SDK_FCam", "The camera does not support framerate as low as the requested one. Will use the lowest framerate range possible: [" + paramList[0] + ";" + paramList[1] + "]");
        return paramList;
      }
      paramList = new LinkedList();
      localObject1 = ((List)localObject1).iterator();
      int j = 0;
      paramInt = k;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (int[])((Iterator)localObject1).next();
        if (localObject2[1] == i)
        {
          k = paramInt;
          if (paramInt < localObject2[0])
          {
            k = localObject2[0];
            j = paramList.size();
          }
          paramList.add(localObject2);
          paramInt = k;
        }
      }
      paramList = (int[])paramList.get(j);
      Log.d("AddLive_SDK_FCam", "Will use FPS range: [" + paramList[0] + ";" + paramList[1] + "]");
      return paramList;
    }
    
    public int getHeight()
    {
      return mHeight;
    }
    
    public int getOrientation()
    {
      int i = ((Integer)mId2IdxMap.get(ADLCameraHelper.getSelectedCam())).intValue();
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      Camera.getCameraInfo(i, localCameraInfo);
      i = ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getRotation();
      if (facing == 1) {
        return (360 - (i * 90 + orientation) % 360) % 360;
      }
      return (orientation - i * 90 + 360) % 360;
    }
    
    public int getWidth()
    {
      return mWidth;
    }
    
    public int processProperty(String paramString1, String paramString2)
    {
      int j = 1002;
      try
      {
        if (paramString1.equals("global.dev.camera.FPS"))
        {
          mFps = Integer.parseInt(paramString2);
        }
        else if (paramString1.equals("global.dev.camera.height"))
        {
          mHeight = Integer.parseInt(paramString2);
        }
        else if (paramString1.equals("global.dev.camera.width"))
        {
          mWidth = Integer.parseInt(paramString2);
        }
        else
        {
          i = j;
          if (!paramString1.equals("global.dev.camera.mode")) {
            break label140;
          }
          paramString1 = Pattern.compile("(\\d{1,3})x(\\d{1,3})@(\\d{1,2})").matcher(paramString2);
          i = j;
          if (!paramString1.matches()) {
            break label140;
          }
          mWidth = Integer.parseInt(paramString1.group(1));
          mHeight = Integer.parseInt(paramString1.group(2));
          mFps = Integer.parseInt(paramString1.group(3));
        }
        int i = 0;
        label140:
        return i;
      }
      catch (NumberFormatException paramString1) {}
      return 1002;
    }
    
    public void setDevice(String paramString)
    {
      if (!mId2IdxMap.keySet().contains(paramString)) {
        throw new IllegalArgumentException("There is no camera device with id: " + paramString);
      }
      if (!ADLCameraHelper.getSelectedCam().equals(paramString)) {
        ADLCameraHelper.setSelectedCam(paramString);
      }
    }
    
    public void start(SurfaceTexture paramSurfaceTexture)
    {
      if (mCamera == null) {
        return;
      }
      mCamera.setPreviewTexture(paramSurfaceTexture);
      mCamera.startPreview();
    }
    
    public void stop()
    {
      if (mCamera == null) {
        return;
      }
      mCamera.stopPreview();
      mCamera.release();
      mCamera = null;
    }
  }
  
  class InternalRenderer
    implements GLSurfaceView.Renderer
  {
    private int mCamHeight;
    private int mCamWidth;
    private final String mFragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private ADLInjectFrameCb mFrameReceiver;
    private int mHeight;
    private float[] mMVPMatrix = new float[16];
    private int mProgram;
    private ADLCameraFrameLayout.RenderTexture mRenderTextureL;
    private ADLCameraFrameLayout.RenderTexture mRenderTextureP;
    private float[] mSTMatrix = new float[16];
    private SurfaceTexture mSurfaceTexture;
    private int mTextureId;
    private final String mVertexShader = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private int mWidth;
    private final float[] mXyzUv = { -1.0F, -1.0F, 0.0F, 0.0F, 0.0F, 1.0F, -1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F };
    private FloatBuffer mXyzUvBuffer;
    private int maPositionHandle;
    private int maTextureHandle;
    private int muMVPMatrixHandle;
    private int muSTMatrixHandle;
    
    public InternalRenderer(ADLInjectFrameCb paramADLInjectFrameCb, int paramInt1, int paramInt2)
    {
      mCamWidth = paramInt1;
      mCamHeight = paramInt2;
      mXyzUvBuffer = ByteBuffer.allocateDirect(80).order(ByteOrder.nativeOrder()).asFloatBuffer();
      mXyzUvBuffer.put(mXyzUv).position(0);
      Matrix.setIdentityM(mSTMatrix, 0);
      mFrameReceiver = paramADLInjectFrameCb;
    }
    
    public void drawFrame(int paramInt1, int paramInt2, long paramLong)
    {
      mSurfaceTexture.updateTexImage();
      float f = 1.5707964F * (paramInt1 + 3);
      if ((paramInt1 == 0) || (paramInt1 == 2))
      {
        mRenderTextureL.onDrawFrame(mSurfaceTexture, mTextureId, f);
        mFrameReceiver.injectFrame(null, mCamWidth, mCamHeight, 0, 0, paramInt1, paramInt2, paramLong);
      }
      for (;;)
      {
        mSurfaceTexture.getTransformMatrix(mSTMatrix);
        GLES20.glViewport(0, 0, mWidth, mHeight);
        GLES20.glUseProgram(mProgram);
        GLES20.glClear(16384);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, mTextureId);
        mXyzUvBuffer.position(0);
        GLES20.glVertexAttribPointer(maPositionHandle, 3, 5126, false, 20, mXyzUvBuffer);
        GLES20.glEnableVertexAttribArray(maPositionHandle);
        mXyzUvBuffer.position(3);
        GLES20.glVertexAttribPointer(maTextureHandle, 3, 5126, false, 20, mXyzUvBuffer);
        GLES20.glEnableVertexAttribArray(maTextureHandle);
        Matrix.setIdentityM(mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(muMVPMatrixHandle, 1, false, mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(muSTMatrixHandle, 1, false, mSTMatrix, 0);
        GLES20.glDrawArrays(5, 0, 4);
        return;
        mRenderTextureP.onDrawFrame(mSurfaceTexture, mTextureId, f);
        mFrameReceiver.injectFrame(null, mCamHeight, mCamWidth, 0, 0, paramInt1, paramInt2, paramLong);
      }
    }
    
    public void onDrawFrame(GL10 paramGL10) {}
    
    public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
    {
      mWidth = paramInt1;
      mHeight = paramInt2;
    }
    
    public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
    {
      Log.d("AddLive_SDK_FCam", "onSurfaceCreated");
      mTextureId = ADLCameraFrameLayout.createTexture(36197);
      mSurfaceTexture = new SurfaceTexture(mTextureId);
      mRenderTextureL = new ADLCameraFrameLayout.RenderTexture(ADLCameraFrameLayout.this, mCamWidth, mCamHeight);
      mRenderTextureP = new ADLCameraFrameLayout.RenderTexture(ADLCameraFrameLayout.this, mCamHeight, mCamWidth);
      mProgram = ADLCameraFrameLayout.createProgram("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
      maPositionHandle = GLES20.glGetAttribLocation(mProgram, "aPosition");
      maTextureHandle = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
      muMVPMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uMVPMatrix");
      muSTMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uSTMatrix");
      try
      {
        startCamera();
        return;
      }
      catch (Exception paramGL10)
      {
        Log.e("AddLive_SDK_FCam", "critical error: failed to start camera");
      }
    }
    
    public void startCamera()
    {
      if (mSurfaceTexture != null) {
        ADLCameraFrameLayout.this.startCamera(mSurfaceTexture);
      }
    }
    
    public void stopCamera()
    {
      if (mSurfaceTexture != null) {
        ADLCameraFrameLayout.this.stopCamera(mSurfaceTexture);
      }
    }
  }
  
  class RenderTexture
  {
    private final String mFragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private int mFramebufferId;
    private int mHeight;
    private float[] mMVPMatrix = new float[16];
    private int mProgram;
    private float[] mSTMatrix = new float[16];
    private int mTextureId;
    private final String mVertexShader = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private int mWidth;
    private final float[] mXyzUv = { -1.0F, -1.0F, 0.0F, 0.0F, 0.0F, 1.0F, -1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F };
    private FloatBuffer mXyzUvBuffer;
    private int maPositionHandle;
    private int maTextureHandle;
    private int muMVPMatrixHandle;
    private int muSTMatrixHandle;
    
    public RenderTexture(int paramInt1, int paramInt2)
    {
      mWidth = paramInt1;
      mHeight = paramInt2;
      mTextureId = ADLCameraFrameLayout.createTexture(3553);
      GLES20.glTexImage2D(3553, 0, 6408, mWidth, mHeight, 0, 6408, 5121, null);
      GLES20.glBindTexture(3553, 0);
      mFramebufferId = ADLCameraFrameLayout.createFramebuffer(mTextureId);
      mXyzUvBuffer = ByteBuffer.allocateDirect(80).order(ByteOrder.nativeOrder()).asFloatBuffer();
      mXyzUvBuffer.put(mXyzUv).position(0);
      mProgram = ADLCameraFrameLayout.createProgram("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
      maPositionHandle = GLES20.glGetAttribLocation(mProgram, "aPosition");
      maTextureHandle = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
      muMVPMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uMVPMatrix");
      muSTMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uSTMatrix");
      GLES20.glBindFramebuffer(36160, 0);
    }
    
    public void onDrawFrame(SurfaceTexture paramSurfaceTexture, int paramInt, float paramFloat)
    {
      paramSurfaceTexture.getTransformMatrix(mSTMatrix);
      GLES20.glBindFramebuffer(36160, mFramebufferId);
      GLES20.glFramebufferTexture2D(36160, 36064, 3553, mTextureId, 0);
      if (GLES20.glCheckFramebufferStatus(36160) != 36053) {
        Log.e("AddLive_SDK_FCam", "framebuffer not complete");
      }
      GLES20.glViewport(0, 0, mWidth, mHeight);
      GLES20.glUseProgram(mProgram);
      GLES20.glActiveTexture(33984);
      GLES20.glBindTexture(36197, paramInt);
      mXyzUvBuffer.position(0);
      GLES20.glVertexAttribPointer(maPositionHandle, 3, 5126, false, 20, mXyzUvBuffer);
      GLES20.glEnableVertexAttribArray(maPositionHandle);
      mXyzUvBuffer.position(3);
      GLES20.glVertexAttribPointer(maTextureHandle, 3, 5126, false, 20, mXyzUvBuffer);
      GLES20.glEnableVertexAttribArray(maTextureHandle);
      float f = (float)Math.cos(paramFloat);
      paramFloat = (float)Math.sin(paramFloat);
      Matrix.setIdentityM(mMVPMatrix, 0);
      mMVPMatrix[0] = f;
      mMVPMatrix[1] = (-paramFloat);
      mMVPMatrix[4] = paramFloat;
      mMVPMatrix[5] = f;
      GLES20.glUniformMatrix4fv(muMVPMatrixHandle, 1, false, mMVPMatrix, 0);
      GLES20.glUniformMatrix4fv(muSTMatrixHandle, 1, false, mSTMatrix, 0);
      GLES20.glDrawArrays(5, 0, 4);
      GLES20.glBindFramebuffer(36160, 0);
      GLES20.glFinish();
      GLES20.glBindTexture(3553, mTextureId);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */