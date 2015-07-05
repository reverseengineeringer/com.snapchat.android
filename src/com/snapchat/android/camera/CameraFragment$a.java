package com.snapchat.android.camera;

import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.model.CameraModel;
import vm;
import vw;
import wr;

final class CameraFragment$a
  implements wr
{
  private CameraFragment$a(CameraFragment paramCameraFragment) {}
  
  public final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    a.b.setScaleX(paramFloat1);
    a.b.setScaleY(paramFloat2);
    a.b.setTranslationY(paramFloat3);
  }
  
  public final void a(vm paramvm)
  {
    if (a.b == null) {
      return;
    }
    a.m.b(a.b, paramvm, CameraFragment.b(a));
  }
  
  public final boolean a()
  {
    return a.i.b();
  }
  
  public final boolean b()
  {
    return a.i.c();
  }
  
  public final void c()
  {
    a.b(false);
  }
  
  public final boolean d()
  {
    return !a.i.d;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.CameraFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */