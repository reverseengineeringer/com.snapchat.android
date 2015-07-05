package com.addlive.impl.cam;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.view.Display;
import android.view.WindowManager;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.service.Device;
import com.addlive.service.VideoCaptureDevice;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class ADLCameraFrameLayout$InternalCamera
{
  private Camera mCamera;
  private List<Device> mCameraDevices = new LinkedList();
  private Context mContext;
  private int mFps;
  private ADLInjectFrameCb mFrameReceiver;
  private int mHeight;
  private Map<String, Integer> mId2IdxMap = new HashMap();
  private int mWidth;
  
  public ADLCameraFrameLayout$InternalCamera(ADLCameraFrameLayout paramADLCameraFrameLayout, Context paramContext, CaptureConfig paramCaptureConfig)
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
    paramADLCameraFrameLayout = new Camera.CameraInfo();
    i = j;
    if (i < k)
    {
      Camera.getCameraInfo(i, paramADLCameraFrameLayout);
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

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraFrameLayout.InternalCamera
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */