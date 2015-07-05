package com.addlive.impl.cam;

import android.content.Context;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.service.Device;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class ADLCameraSurfaceView
  implements SurfaceHolder.Callback, ADLCamera
{
  private static final String LOG_TAG = "AddLive_SDK_SCam";
  private ADLCameraHelper camHelper;
  private SurfaceHolder holder;
  
  public ADLCameraSurfaceView(ADLInjectFrameCb paramADLInjectFrameCb, Context paramContext, CaptureConfig paramCaptureConfig)
  {
    camHelper = new ADLCameraHelper(paramContext, paramADLInjectFrameCb, paramCaptureConfig);
    camHelper.checkHardware();
  }
  
  private void initCam()
  {
    try
    {
      Log.d("AddLive_SDK_SCam", "Initialising camera");
      CountDownLatch localCountDownLatch = new CountDownLatch(1);
      camHelper.configure(localCountDownLatch);
      if (holder != null)
      {
        Log.d("AddLive_SDK_SCam", "Already received surface view. Starting preview");
        startPreview();
        if (!localCountDownLatch.await(5L, TimeUnit.SECONDS))
        {
          Log.e("AddLive_SDK_SCam", "Failed to receive the first frame");
          camHelper.stopCam();
          throw new IOException("Failed to receive frames from the camera");
        }
      }
    }
    finally {}
    Log.d("AddLive_SDK_SCam", "Camera initialized");
  }
  
  /* Error */
  private void startPreview()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 16
    //   4: ldc 94
    //   6: invokestatic 49	com/addlive/impl/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: aload_0
    //   11: getfield 32	com/addlive/impl/cam/ADLCameraSurfaceView:camHelper	Lcom/addlive/impl/cam/ADLCameraHelper;
    //   14: invokevirtual 98	com/addlive/impl/cam/ADLCameraHelper:isCamWorking	()Z
    //   17: ifne +14 -> 31
    //   20: ldc 16
    //   22: ldc 100
    //   24: invokestatic 103	com/addlive/impl/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   27: pop
    //   28: aload_0
    //   29: monitorexit
    //   30: return
    //   31: aload_0
    //   32: getfield 32	com/addlive/impl/cam/ADLCameraSurfaceView:camHelper	Lcom/addlive/impl/cam/ADLCameraHelper;
    //   35: new 12	com/addlive/impl/cam/ADLCameraSurfaceView$2
    //   38: dup
    //   39: aload_0
    //   40: invokespecial 106	com/addlive/impl/cam/ADLCameraSurfaceView$2:<init>	(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)V
    //   43: invokevirtual 110	com/addlive/impl/cam/ADLCameraHelper:doOnCam	(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    //   46: goto -18 -> 28
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	ADLCameraSurfaceView
    //   49	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	28	49	finally
    //   31	46	49	finally
  }
  
  public void dispose()
  {
    camHelper.dispose();
  }
  
  public List<Device> getCameraDevices()
  {
    return camHelper.getCameraDevices();
  }
  
  public String getDevice()
  {
    return camHelper.getDevice();
  }
  
  public int processProperty(String paramString1, String paramString2)
  {
    return camHelper.processProperty(paramString1, paramString2);
  }
  
  public void setDevice(String paramString)
  {
    camHelper.setDevice(paramString);
    if (camHelper.isCamWorking())
    {
      camHelper.stopCam();
      initCam();
    }
  }
  
  public void start(Object paramObject)
  {
    Log.d("AddLive_SDK_SCam", "Starting camera preview");
    if (!(paramObject instanceof SurfaceHolder)) {
      throw new IllegalArgumentException("Surface View cam used with a surface view");
    }
    if (camHelper.isCamWorking())
    {
      Log.d("AddLive_SDK_SCam", "Camera was already in use. Releasing it");
      stop();
    }
    initCam();
    SurfaceHolder localSurfaceHolder = (SurfaceHolder)paramObject;
    if (paramObject != holder)
    {
      holder = ((SurfaceHolder)paramObject);
      holder.addCallback(this);
    }
    if (!localSurfaceHolder.isCreating()) {
      surfaceCreated(holder);
    }
  }
  
  public void stop()
  {
    try
    {
      Log.d("AddLive_SDK_SCam", "Stopping camera");
      if (holder != null)
      {
        holder.removeCallback(this);
        holder = null;
      }
      camHelper.stopCam();
      return;
    }
    finally {}
  }
  
  /* Error */
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 16
    //   4: ldc -87
    //   6: invokestatic 49	com/addlive/impl/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: aload_0
    //   11: getfield 32	com/addlive/impl/cam/ADLCameraSurfaceView:camHelper	Lcom/addlive/impl/cam/ADLCameraHelper;
    //   14: invokevirtual 98	com/addlive/impl/cam/ADLCameraHelper:isCamWorking	()Z
    //   17: ifne +14 -> 31
    //   20: ldc 16
    //   22: ldc -85
    //   24: invokestatic 103	com/addlive/impl/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   27: pop
    //   28: aload_0
    //   29: monitorexit
    //   30: return
    //   31: aload_0
    //   32: getfield 40	com/addlive/impl/cam/ADLCameraSurfaceView:holder	Landroid/view/SurfaceHolder;
    //   35: astore 5
    //   37: aload_1
    //   38: aload 5
    //   40: if_acmpeq -12 -> 28
    //   43: aload_0
    //   44: getfield 32	com/addlive/impl/cam/ADLCameraSurfaceView:camHelper	Lcom/addlive/impl/cam/ADLCameraHelper;
    //   47: new 10	com/addlive/impl/cam/ADLCameraSurfaceView$1
    //   50: dup
    //   51: aload_0
    //   52: invokespecial 172	com/addlive/impl/cam/ADLCameraSurfaceView$1:<init>	(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)V
    //   55: invokevirtual 110	com/addlive/impl/cam/ADLCameraHelper:doOnCam	(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    //   58: goto -30 -> 28
    //   61: astore_1
    //   62: aload_1
    //   63: invokevirtual 175	java/lang/Exception:printStackTrace	()V
    //   66: goto -38 -> 28
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	ADLCameraSurfaceView
    //   0	74	1	paramSurfaceHolder	SurfaceHolder
    //   0	74	2	paramInt1	int
    //   0	74	3	paramInt2	int
    //   0	74	4	paramInt3	int
    //   35	4	5	localSurfaceHolder	SurfaceHolder
    // Exception table:
    //   from	to	target	type
    //   43	58	61	java/lang/Exception
    //   2	28	69	finally
    //   31	37	69	finally
    //   43	58	69	finally
    //   62	66	69	finally
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("AddLive_SDK_SCam", "Got surface texture available");
    holder = paramSurfaceHolder;
    try
    {
      startPreview();
      return;
    }
    catch (Exception paramSurfaceHolder)
    {
      paramSurfaceHolder.printStackTrace();
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("AddLive_SDK_SCam", "Got surface texture destroyed");
    try
    {
      stop();
      return;
    }
    catch (Exception paramSurfaceHolder)
    {
      paramSurfaceHolder.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraSurfaceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */