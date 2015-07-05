package com.snapchat.android.camera;

import android.view.ViewPropertyAnimator;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.model.CameraModel;

final class CameraFragment$5
  implements Runnable
{
  CameraFragment$5(CameraFragment paramCameraFragment) {}
  
  public final void run()
  {
    if ((!a.i.d()) && (a.b != null) && (a.b.getAlpha() == 0.0F)) {
      a.b.animate().alpha(1.0F).setDuration(100L).start();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.CameraFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */