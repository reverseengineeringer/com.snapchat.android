package com.addlive.impl.cam;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.service.Device;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class ADLCameraTextureView
  implements TextureView.SurfaceTextureListener, ADLCamera
{
  private ADLCameraHelper camHelper;
  private Context ctx;
  private SurfaceTexture surface;
  private TextureView textureView;
  
  public ADLCameraTextureView(ADLInjectFrameCb paramADLInjectFrameCb, Context paramContext, CaptureConfig paramCaptureConfig)
  {
    camHelper = new ADLCameraHelper(paramContext, paramADLInjectFrameCb, paramCaptureConfig);
    camHelper.checkHardware();
    ctx = paramContext;
  }
  
  private void startInternal()
  {
    try
    {
      CountDownLatch localCountDownLatch = new CountDownLatch(1);
      camHelper.configure(localCountDownLatch);
      if (surface != null)
      {
        Log.d("AddLive_SDK", "Already received surface view. Starting preview");
        startPreview();
        if (!localCountDownLatch.await(5L, TimeUnit.SECONDS))
        {
          Log.e("AddLive_SDK", "Failed to receive the first frame");
          camHelper.stopCam();
          throw new IOException("Failed to receive frames from the camera");
        }
      }
    }
    finally {}
    Log.d("AddLive_SDK", "Camera initialized");
  }
  
  /* Error */
  private void startPreview()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 30	com/addlive/impl/cam/ADLCameraTextureView:camHelper	Lcom/addlive/impl/cam/ADLCameraHelper;
    //   6: invokevirtual 96	com/addlive/impl/cam/ADLCameraHelper:isCamWorking	()Z
    //   9: ifne +14 -> 23
    //   12: ldc 52
    //   14: ldc 98
    //   16: invokestatic 101	com/addlive/impl/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   19: pop
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield 30	com/addlive/impl/cam/ADLCameraTextureView:camHelper	Lcom/addlive/impl/cam/ADLCameraHelper;
    //   27: new 10	com/addlive/impl/cam/ADLCameraTextureView$1
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 104	com/addlive/impl/cam/ADLCameraTextureView$1:<init>	(Lcom/addlive/impl/cam/ADLCameraTextureView;)V
    //   35: invokevirtual 108	com/addlive/impl/cam/ADLCameraHelper:doOnCam	(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    //   38: goto -18 -> 20
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	ADLCameraTextureView
    //   41	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	41	finally
    //   23	38	41	finally
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
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    Log.d("AddLive_SDK", "Got surface texture available");
    surface = paramSurfaceTexture;
    try
    {
      startPreview();
      return;
    }
    catch (Exception paramSurfaceTexture)
    {
      paramSurfaceTexture.printStackTrace();
    }
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    Log.d("AddLive_SDK", "Got surface texture destroyed");
    try
    {
      stop();
      return false;
    }
    catch (Exception paramSurfaceTexture)
    {
      for (;;)
      {
        paramSurfaceTexture.printStackTrace();
      }
    }
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    Log.d("AddLive_SDK", "onSurfaceTextureSizeChanged");
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
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
      startInternal();
    }
  }
  
  public void start(Object paramObject)
  {
    Log.d("AddLive_SDK", "Starting camera preview");
    if (!(paramObject instanceof TextureView)) {
      throw new IllegalArgumentException("TextureView cam used with a surface view");
    }
    if (camHelper.isCamWorking())
    {
      Log.d("AddLive_SDK", "Camera was already in use. Releasing it");
      stop();
    }
    startInternal();
    textureView = ((TextureView)paramObject);
    textureView.setWillNotDraw(false);
    if (textureView.isAvailable())
    {
      surface = textureView.getSurfaceTexture();
      startPreview();
    }
    textureView.setSurfaceTextureListener(this);
  }
  
  public void stop()
  {
    try
    {
      Log.d("AddLive_SDK", "Stopping camera");
      camHelper.stopCam();
      textureView.setSurfaceTextureListener(null);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraTextureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */