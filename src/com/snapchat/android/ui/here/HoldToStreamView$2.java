package com.snapchat.android.ui.here;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import com.snapchat.android.camera.model.CameraModel.CameraType;

final class HoldToStreamView$2
  extends GestureDetector.SimpleOnGestureListener
{
  HoldToStreamView$2(HoldToStreamView paramHoldToStreamView) {}
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    if (HoldToStreamView.k(a)) {
      return true;
    }
    if (HoldToStreamView.l(a) == CameraModel.CameraType.BACK_FACING) {
      HoldToStreamView.a(a, CameraModel.CameraType.FRONT_FACING);
    }
    for (;;)
    {
      HoldToStreamView.m(a);
      return true;
      HoldToStreamView.a(a, CameraModel.CameraType.BACK_FACING);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HoldToStreamView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */