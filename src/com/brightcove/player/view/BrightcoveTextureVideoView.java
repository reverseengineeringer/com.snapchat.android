package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;

@TargetApi(14)
public class BrightcoveTextureVideoView
  extends BaseVideoView
{
  private static final String TAG = BrightcoveTextureVideoView.class.getSimpleName();
  protected BrightcoveTextureView brightcoveTextureView;
  protected TextureListener textureListener;
  
  public BrightcoveTextureVideoView(Context paramContext)
  {
    super(paramContext);
  }
  
  public BrightcoveTextureVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BrightcoveTextureVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public RenderView getRenderView()
  {
    return brightcoveTextureView;
  }
  
  public TextureView getTextureView()
  {
    return brightcoveTextureView;
  }
  
  public int getVideoHeight()
  {
    return brightcoveTextureView.getVideoHeight();
  }
  
  public int getVideoWidth()
  {
    return brightcoveTextureView.getVideoWidth();
  }
  
  protected void init(Context paramContext)
  {
    brightcoveTextureView = new BrightcoveTextureView(paramContext);
    textureListener = new TextureListener(null);
    brightcoveTextureView.setSurfaceTextureListener(textureListener);
    addView(brightcoveTextureView);
    super.init(paramContext);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((brightcoveTextureView.isShown()) && (mediaController != null))
    {
      if (!mediaController.isShowing()) {
        break label36;
      }
      mediaController.hide();
    }
    for (;;)
    {
      return false;
      label36:
      mediaController.show();
    }
  }
  
  protected void resetMetaData()
  {
    if (brightcoveTextureView != null) {
      brightcoveTextureView.setVideoSize(0, 0);
    }
    super.resetMetaData();
  }
  
  protected void setChildLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(width, height);
    gravity = 17;
    brightcoveTextureView.setLayoutParams(localLayoutParams);
    super.setChildLayoutParams(paramLayoutParams);
  }
  
  public void setEventEmitter(EventEmitter paramEventEmitter)
  {
    super.setEventEmitter(paramEventEmitter);
    videoDisplay = new VideoDisplayComponent(brightcoveTextureView, paramEventEmitter);
  }
  
  protected void showMediaController()
  {
    if ((brightcoveTextureView.isShown()) && (mediaController != null)) {
      mediaController.show();
    }
  }
  
  class TextureListener
    implements TextureView.SurfaceTextureListener
  {
    private TextureListener() {}
    
    public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
    {
      eventEmitter.emit("readyToPlay");
      videoDisplay.onSurfaceTextureAvailable(paramSurfaceTexture, paramInt1, paramInt2);
    }
    
    public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
    {
      videoDisplay.onSurfaceTextureDestroyed(paramSurfaceTexture);
      return true;
    }
    
    public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
    {
      videoDisplay.onSurfaceTextureSizeChanged(paramSurfaceTexture, paramInt1, paramInt2);
    }
    
    public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture)
    {
      videoDisplay.onSurfaceTextureUpdated(paramSurfaceTexture);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveTextureVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */