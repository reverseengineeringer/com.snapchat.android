package com.snapchat.android.camera;

import com.snapchat.android.analytics.CameraEventAnalytics;

final class CameraFragment$1
  implements Runnable
{
  CameraFragment$1(CameraFragment paramCameraFragment) {}
  
  public final void run()
  {
    CameraFragment.a(a).d();
    a.k.a = TakeSnapButtonTouchIntent.MediaCaptureType.VIDEO;
    a.m();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.CameraFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */