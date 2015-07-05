package com.addlive.view;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.addlive.impl.Log;
import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;
import com.addlive.service.InvalidateCb;
import com.addlive.service.RenderRequest;

public class VideoView
  extends GLSurfaceView
  implements InvalidateCb
{
  private static final String LOG_TAG = "AddLive_SDK";
  private boolean mirror = false;
  private VideoRenderer renderer = null;
  private String sinkId = "";
  private boolean started = false;
  private VideoViewType type;
  
  public VideoView(Context paramContext)
  {
    super(paramContext);
    if (isInEditMode()) {
      return;
    }
    setEGLContextClientVersion(2);
    type = VideoViewType.RECTANGLE;
    renderer = new VideoRenderer(type);
    setRenderer(renderer);
    setRenderMode(0);
  }
  
  public VideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (isInEditMode()) {
      return;
    }
    setEGLContextClientVersion(2);
    type = VideoViewType.RECTANGLE;
    renderer = new VideoRenderer(type);
    setRenderer(renderer);
    setRenderMode(0);
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
  
  public void invalidate()
  {
    if (isInEditMode()) {}
    while (!isStarted()) {
      return;
    }
    requestRender();
  }
  
  public void resolutionChanged(final int paramInt1, final int paramInt2)
  {
    Log.d("AddLive_SDK", "resolutionChanged: " + paramInt1 + "x" + paramInt2);
    queueEvent(new Runnable()
    {
      public void run()
      {
        renderer.onResolutionChanged(paramInt1, paramInt2);
      }
    });
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
    RenderRequest localRenderRequest = new RenderRequest(sinkId, mirror, this);
    final int i = ADL.getService().renderSink(localRenderRequest);
    setStarted(true);
    queueEvent(new Runnable()
    {
      public void run()
      {
        renderer.onStartRendering(i, mirror);
      }
    });
  }
  
  public void stop()
  {
    ADL.getService().stopRender(renderer.getRendererId());
    setStarted(false);
    queueEvent(new Runnable()
    {
      public void run()
      {
        renderer.onStopRendering();
        requestRender();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.VideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */