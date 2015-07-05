package com.addlive.impl.cam;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

class ADLCameraFrameLayout$1
  implements Runnable
{
  int deviceOrient = wm.getDefaultDisplay().getRotation();
  long now = System.currentTimeMillis();
  int orient = ADLCameraFrameLayout.access$000(this$0).getOrientation();
  WindowManager wm = (WindowManager)ADLCameraFrameLayout.access$100(this$0).getSystemService("window");
  
  ADLCameraFrameLayout$1(ADLCameraFrameLayout paramADLCameraFrameLayout) {}
  
  public void run()
  {
    ADLCameraFrameLayout.access$200(this$0).drawFrame(orient, deviceOrient, now);
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraFrameLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */