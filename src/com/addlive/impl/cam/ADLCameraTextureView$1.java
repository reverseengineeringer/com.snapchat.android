package com.addlive.impl.cam;

import android.hardware.Camera;

class ADLCameraTextureView$1
  implements ADLCameraHelper.CamTask
{
  ADLCameraTextureView$1(ADLCameraTextureView paramADLCameraTextureView) {}
  
  public void workOnCam(Camera paramCamera)
  {
    paramCamera.setPreviewTexture(ADLCameraTextureView.access$000(this$0));
    paramCamera.startPreview();
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraTextureView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */