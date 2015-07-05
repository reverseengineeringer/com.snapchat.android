package com.addlive.view;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import com.addlive.impl.Log;
import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;
import com.addlive.service.InvalidateCb;
import com.addlive.service.RenderRequest;

public class CircleVideoTextureView
  extends TextureView
  implements TextureView.SurfaceTextureListener
{
  private static final String LOG_TAG = "AddLive_SDK";
  private GLThread glThread;
  private boolean mirror = false;
  private VideoRenderer renderer = null;
  private String sinkId = "";
  private boolean started = false;
  private VideoViewType type;
  
  public CircleVideoTextureView(Context paramContext)
  {
    super(paramContext);
    constructCommon();
  }
  
  public CircleVideoTextureView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    constructCommon();
  }
  
  private void constructCommon()
  {
    if (isInEditMode()) {
      return;
    }
    type = VideoViewType.CIRCLE;
    renderer = new VideoRenderer(type);
    setOpaque(false);
    glThread = new GLThread(renderer, type);
    glThread.start();
    if (isAvailable()) {
      onSurfaceTextureAvailable(getSurfaceTexture(), getWidth(), getHeight());
    }
    setSurfaceTextureListener(this);
  }
  
  private boolean isStarted()
  {
    try
    {
      boolean bool = started;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void setStarted(boolean paramBoolean)
  {
    try
    {
      started = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getSinkId()
  {
    return sinkId;
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    glThread.setSurface(paramSurfaceTexture);
    glThread.surfaceCreated();
    glThread.onWindowResize(paramInt1, paramInt2);
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    glThread.surfaceDestroyed();
    return false;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    if (isStarted()) {
      glThread.onWindowResize(paramInt1, paramInt2);
    }
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
  public void resolutionChanged(final int paramInt1, final int paramInt2)
  {
    Log.d("AddLive_SDK", "resolutionChanged: " + paramInt1 + "x" + paramInt2);
    glThread.queueEvent(new Runnable()
    {
      public void run()
      {
        renderer.onResolutionChanged(paramInt1, paramInt2);
      }
    });
  }
  
  public void setRadius(float paramFloat)
  {
    renderer.setRadius(paramFloat);
  }
  
  public void setSinkId(String paramString)
  {
    if (isStarted()) {
      throw new IllegalStateException("Cannot update the sink Id as rendering is active. Stop first.");
    }
    sinkId = paramString;
  }
  
  public void start()
  {
    Log.i("AddLive_SDK", "Starting ALVideoTextureView");
    RenderRequest localRenderRequest = new RenderRequest(sinkId, mirror, new InvalidateCallback(null));
    final int i = ADL.getService().renderSink(localRenderRequest);
    setStarted(true);
    glThread.queueEvent(new Runnable()
    {
      public void run()
      {
        renderer.onStartRendering(i, mirror);
      }
    });
    glThread.onWindowResize(getWidth(), getHeight());
    glThread.onResume();
    forceLayout();
  }
  
  public void stop()
  {
    Log.i("AddLive_SDK", "Stopping ALVideoTextureView");
    ADL.getService().stopRender(renderer.getRendererId());
    setStarted(false);
    glThread.queueEvent(new Runnable()
    {
      public void run()
      {
        renderer.onStopRendering();
      }
    });
    glThread.requestRender();
    glThread.onPause();
  }
  
  class InvalidateCallback
    implements InvalidateCb
  {
    private InvalidateCallback() {}
    
    public void invalidate()
    {
      glThread.requestRender();
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.CircleVideoTextureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */