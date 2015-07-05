package com.snapchat.android.ui;

import android.graphics.SurfaceTexture;
import android.view.TextureView.SurfaceTextureListener;
import android.widget.MediaController;

final class TextureVideoView$8
  implements TextureView.SurfaceTextureListener
{
  TextureVideoView$8(TextureVideoView paramTextureVideoView) {}
  
  public final void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    TextureVideoView.o(a);
  }
  
  public final boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    if (TextureVideoView.g(a) != null) {
      TextureVideoView.g(a).hide();
    }
    TextureVideoView.p(a);
    return false;
  }
  
  public final void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    int j = 1;
    TextureVideoView.d(a, paramInt1);
    TextureVideoView.e(a, paramInt2);
    int i;
    if (TextureVideoView.i(a) == 3)
    {
      i = 1;
      if ((a.a != paramInt1) || (a.b != paramInt2)) {
        break label117;
      }
    }
    label117:
    for (paramInt1 = j;; paramInt1 = 0)
    {
      if ((TextureVideoView.f(a) != null) && (i != 0) && (paramInt1 != 0))
      {
        if (TextureVideoView.h(a) != 0) {
          a.seekTo(TextureVideoView.h(a));
        }
        a.start();
      }
      return;
      i = 0;
      break;
    }
  }
  
  public final void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */