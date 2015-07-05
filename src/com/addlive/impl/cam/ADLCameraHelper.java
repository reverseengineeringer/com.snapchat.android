package com.addlive.impl.cam;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.service.Device;
import com.addlive.service.VideoCaptureDevice;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ADLCameraHelper
  extends HandlerThread
  implements Camera.PreviewCallback
{
  private static final int NUM_BUFFERS = 2;
  private static String selectedCam = VideoCaptureDevice.FRONT_CAMERA.getId();
  private Camera camera;
  private List<Device> cameraDevices = new LinkedList();
  private Context context;
  private CountDownLatch firstFrameLatch;
  private int fps;
  private ADLInjectFrameCb frameReceiver;
  private int height;
  private Map<String, Integer> id2IdxMap = new HashMap();
  private int prevOrientation = -1;
  private Handler taskHandler = null;
  private int width;
  
  public ADLCameraHelper(Context paramContext, ADLInjectFrameCb paramADLInjectFrameCb, CaptureConfig paramCaptureConfig)
  {
    super("CameraHandlerThread");
    width = paramCaptureConfig.getWidth();
    height = paramCaptureConfig.getHeight();
    fps = paramCaptureConfig.getFps();
    context = paramContext;
    frameReceiver = paramADLInjectFrameCb;
    start();
    taskHandler = new Handler(getLooper());
  }
  
  private void configInternal(CountDownLatch paramCountDownLatch, AsyncResult paramAsyncResult)
  {
    try
    {
      Log.d("AddLive_SDK", "Setting up hardware camera: " + selectedCam);
      try
      {
        camera = Camera.open(((Integer)id2IdxMap.get(selectedCam)).intValue());
        int i = getOrientation(false);
        camera.setDisplayOrientation(i);
        Camera.Parameters localParameters = camera.getParameters();
        localParameters.setPreviewFormat(17);
        localParameters.setPreviewSize(width, height);
        int[] arrayOfInt = getFrameRateRange(localParameters.getSupportedPreviewFpsRange(), fps);
        localParameters.setPreviewFpsRange(arrayOfInt[0], arrayOfInt[1]);
        camera.setParameters(localParameters);
        camera.setPreviewCallbackWithBuffer(this);
        int j = width * 3 * height / 2;
        i = 0;
        while (i < 2)
        {
          camera.addCallbackBuffer(new byte[j]);
          i += 1;
        }
        prevOrientation = getOrientation(true);
      }
      catch (RuntimeException localRuntimeException)
      {
        Log.e("AddLive_SDK", "Failed to open camera device. It's most likely already in use.", localRuntimeException);
        isSuccess = false;
        error = ("Failed to open camera device. It's most likely already in use." + " (" + localRuntimeException.toString() + ")");
        paramCountDownLatch.countDown();
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("AddLive_SDK", "Failed to configure the camera", localException);
      isSuccess = false;
      error = ("Got an exception: " + localException.toString());
      return;
    }
    finally
    {
      paramCountDownLatch.countDown();
    }
  }
  
  private void doOnCamInternal(CountDownLatch paramCountDownLatch, CamTask paramCamTask, AsyncResult paramAsyncResult)
  {
    try
    {
      paramCamTask.workOnCam(camera);
      return;
    }
    catch (Exception paramCamTask)
    {
      Log.e("AddLive_SDK", "Failed to perform camera operation", paramCamTask);
      isSuccess = false;
      error = ("Got an exception: " + paramCamTask.toString());
      return;
    }
    finally
    {
      paramCountDownLatch.countDown();
    }
  }
  
  public static String getSelectedCam()
  {
    return selectedCam;
  }
  
  private void processFrame(byte[] paramArrayOfByte)
  {
    long l = System.currentTimeMillis();
    try
    {
      if (camera == null)
      {
        Log.w("AddLive_SDK", "Got new frame on already disposed camera");
        return;
      }
      int i = getOrientation(true);
      if (i != prevOrientation)
      {
        camera.setDisplayOrientation(getOrientation(false));
        prevOrientation = i;
      }
      int j = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
      frameReceiver.injectFrame(paramArrayOfByte, width, height, paramArrayOfByte.length, 17, i, j, l);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      Log.e("AddLive_SDK", "Error injectFrame: ", paramArrayOfByte);
    }
  }
  
  public static void setSelectedCam(String paramString)
  {
    selectedCam = paramString;
  }
  
  private void stopInternal(CountDownLatch paramCountDownLatch, AsyncResult paramAsyncResult)
  {
    try
    {
      Camera localCamera = camera;
      if (localCamera == null) {
        return;
      }
      camera.stopPreview();
      camera.release();
      camera = null;
      return;
    }
    catch (Exception localException)
    {
      Log.e("AddLive_SDK", "Failed to configure the camera", localException);
      isSuccess = false;
      error = ("Got an exception: " + localException.toString());
      return;
    }
    finally
    {
      paramCountDownLatch.countDown();
    }
  }
  
  public void checkHardware()
  {
    int j = 0;
    if (context == null) {
      throw new RuntimeException("Invalid context.");
    }
    if ((context.getPackageManager().hasSystemFeature("android.hardware.camera")) || (context.getPackageManager().hasSystemFeature("android.hardware.camera.front"))) {}
    for (int i = 1; i == 0; i = 0) {
      throw new RuntimeException("Camera feature is not supported by system.");
    }
    int k = Camera.getNumberOfCameras();
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    i = j;
    if (i < k)
    {
      Camera.getCameraInfo(i, localCameraInfo);
      if (facing == 1)
      {
        cameraDevices.add(new Device(VideoCaptureDevice.FRONT_CAMERA.getId(), "Front Camera"));
        id2IdxMap.put(VideoCaptureDevice.FRONT_CAMERA.getId(), Integer.valueOf(i));
      }
      for (;;)
      {
        i += 1;
        break;
        cameraDevices.add(new Device(VideoCaptureDevice.BACK_CAMERA.getId(), "Back Camera"));
        id2IdxMap.put(VideoCaptureDevice.BACK_CAMERA.getId(), Integer.valueOf(i));
      }
    }
    if (!id2IdxMap.containsKey(selectedCam)) {
      selectedCam = VideoCaptureDevice.BACK_CAMERA.getId();
    }
  }
  
  public void configure(CountDownLatch paramCountDownLatch)
  {
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    final AsyncResult localAsyncResult = new AsyncResult(null);
    taskHandler.post(new Runnable()
    {
      public void run()
      {
        ADLCameraHelper.this.configInternal(localCountDownLatch, localAsyncResult);
      }
    });
    firstFrameLatch = paramCountDownLatch;
    localCountDownLatch.await();
    if (!isSuccess) {
      throw new IOException(error);
    }
  }
  
  public void dispose()
  {
    quit();
    context = null;
  }
  
  public void doOnCam(final CamTask paramCamTask)
  {
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    final AsyncResult localAsyncResult = new AsyncResult(null);
    taskHandler.post(new Runnable()
    {
      public void run()
      {
        ADLCameraHelper.this.doOnCamInternal(localCountDownLatch, paramCamTask, localAsyncResult);
      }
    });
    localCountDownLatch.await();
    if (!isSuccess) {
      throw new IOException("Failed to stop the camera: " + error);
    }
  }
  
  public List<Device> getCameraDevices()
  {
    return cameraDevices;
  }
  
  public String getDevice()
  {
    return selectedCam;
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
    Log.d("AddLive_SDK", "Looking up for best frame rate range within available ones:");
    Log.d("AddLive_SDK", ((StringBuilder)localObject1).toString());
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
      Log.w("AddLive_SDK", "The camera does not support framerate as low as the requested one. Will use the lowest framerate range possible: [" + paramList[0] + ";" + paramList[1] + "]");
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
    Log.d("AddLive_SDK", "Will use FPS range: [" + paramList[0] + ";" + paramList[1] + "]");
    return paramList;
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public int getOrientation(boolean paramBoolean)
  {
    int i = ((Integer)id2IdxMap.get(selectedCam)).intValue();
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    Camera.getCameraInfo(i, localCameraInfo);
    i = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
    if (paramBoolean)
    {
      if (facing == 1) {
        return (i + orientation / 90) % 4;
      }
      return (orientation / 90 - i + 4) % 4;
    }
    if (facing == 1) {
      return (360 - (i * 90 + orientation) % 360) % 360;
    }
    return (orientation - i * 90 + 360) % 360;
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public boolean isCamWorking()
  {
    return camera != null;
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    processFrame(paramArrayOfByte);
    paramCamera.addCallbackBuffer(paramArrayOfByte);
    if (firstFrameLatch != null)
    {
      firstFrameLatch.countDown();
      firstFrameLatch = null;
    }
  }
  
  public int processProperty(String paramString1, String paramString2)
  {
    int j = 1002;
    try
    {
      if (paramString1.equals("global.dev.camera.FPS"))
      {
        fps = Integer.parseInt(paramString2);
      }
      else if (paramString1.equals("global.dev.camera.height"))
      {
        height = Integer.parseInt(paramString2);
      }
      else if (paramString1.equals("global.dev.camera.width"))
      {
        width = Integer.parseInt(paramString2);
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
        width = Integer.parseInt(paramString1.group(1));
        height = Integer.parseInt(paramString1.group(2));
        fps = Integer.parseInt(paramString1.group(3));
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
    if (!id2IdxMap.keySet().contains(paramString)) {
      throw new IllegalArgumentException("There is no camera device with id: " + paramString);
    }
    if (!selectedCam.equals(paramString)) {
      selectedCam = paramString;
    }
  }
  
  public void stopCam()
  {
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    final AsyncResult localAsyncResult = new AsyncResult(null);
    taskHandler.post(new Runnable()
    {
      public void run()
      {
        ADLCameraHelper.this.stopInternal(localCountDownLatch, localAsyncResult);
      }
    });
    localCountDownLatch.await();
    if (!isSuccess) {
      throw new IOException("Failed to stop the camera: " + error);
    }
  }
  
  class AsyncResult
  {
    String error = "";
    boolean isSuccess = true;
    
    private AsyncResult() {}
  }
  
  public static abstract interface CamTask
  {
    public abstract void workOnCam(Camera paramCamera);
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */