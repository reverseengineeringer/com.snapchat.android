package com.brightcove.player.view;

import android.graphics.SurfaceTexture;
import android.view.TextureView.SurfaceTextureListener;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;

class BrightcoveTextureVideoView$TextureListener
  implements TextureView.SurfaceTextureListener
{
  private BrightcoveTextureVideoView$TextureListener(BrightcoveTextureVideoView paramBrightcoveTextureVideoView) {}
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    BrightcoveTextureVideoView.access$100();
    this$0.eventEmitter.emit("readyToPlay");
    this$0.videoDisplay.onSurfaceTextureAvailable(paramSurfaceTexture, paramInt1, paramInt2);
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    BrightcoveTextureVideoView.access$100();
    this$0.videoDisplay.onSurfaceTextureDestroyed(paramSurfaceTexture);
    return true;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    BrightcoveTextureVideoView.access$100();
    this$0.videoDisplay.onSurfaceTextureSizeChanged(paramSurfaceTexture, paramInt1, paramInt2);
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture)
  {
    this$0.videoDisplay.onSurfaceTextureUpdated(paramSurfaceTexture);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveTextureVideoView.TextureListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */