package com.addlive.impl.cam;

import android.hardware.Camera;

class ADLCameraSurfaceView$1
  implements ADLCameraHelper.CamTask
{
  ADLCameraSurfaceView$1(ADLCameraSurfaceView paramADLCameraSurfaceView) {}
  
  public void workOnCam(Camera paramCamera)
  {
    paramCamera.setPreviewDisplay(ADLCameraSurfaceView.access$000(this$0));
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraSurfaceView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */