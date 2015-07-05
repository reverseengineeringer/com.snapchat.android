package com.snapchat.android.camera.cameraview;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.snapchat.android.Timber;

public final class CameraView$3
  implements SurfaceHolder.Callback
{
  public CameraView$3(CameraView paramCameraView, CameraView.b paramb) {}
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Timber.c("CameraView", "Surface Changed to [%d x %d]", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
  }
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    a.a(paramSurfaceHolder.getSurface());
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Timber.c("CameraView", "Surface Destroyed", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.cameraview.CameraView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */