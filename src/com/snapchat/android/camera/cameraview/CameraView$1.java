package com.snapchat.android.camera.cameraview;

import android.graphics.SurfaceTexture;
import android.view.TextureView.SurfaceTextureListener;

final class CameraView$1
  implements TextureView.SurfaceTextureListener
{
  CameraView$1(CameraView paramCameraView, CameraView.b paramb) {}
  
  public final void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    a.a(paramSurfaceTexture);
  }
  
  public final boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    return true;
  }
  
  public final void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public final void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.cameraview.CameraView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */