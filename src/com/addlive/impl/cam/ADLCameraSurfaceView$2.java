package com.addlive.impl.cam;

import android.hardware.Camera;
import com.addlive.impl.Log;

class ADLCameraSurfaceView$2
  implements ADLCameraHelper.CamTask
{
  ADLCameraSurfaceView$2(ADLCameraSurfaceView paramADLCameraSurfaceView) {}
  
  public void workOnCam(Camera paramCamera)
  {
    Log.i("AddLive_SDK_SCam", "Setting preview display");
    paramCamera.setPreviewDisplay(ADLCameraSurfaceView.access$000(this$0));
    paramCamera.startPreview();
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraSurfaceView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */