package com.brightcove.player.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class BrightcoveVideoView
  extends BaseVideoView
{
  private static final String TAG = BrightcoveVideoView.class.getSimpleName();
  protected BrightcoveSurfaceView brightcoveSurfaceView;
  protected Class<? extends BrightcoveSurfaceView> brightcoveSurfaceViewClass;
  protected SurfaceListener surfaceListener;
  
  public BrightcoveVideoView(Context paramContext)
  {
    super(paramContext);
  }
  
  public BrightcoveVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BrightcoveVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public RenderView getRenderView()
  {
    return brightcoveSurfaceView;
  }
  
  public SurfaceView getSurfaceView()
  {
    return brightcoveSurfaceView;
  }
  
  public int getVideoHeight()
  {
    return brightcoveSurfaceView.getVideoHeight();
  }
  
  public int getVideoWidth()
  {
    return brightcoveSurfaceView.getVideoWidth();
  }
  
  protected void init(Context paramContext)
  {
    if (brightcoveSurfaceViewClass == null)
    {
      if (Build.VERSION.SDK_INT < 19) {
        break label91;
      }
      brightcoveSurfaceViewClass = BrightcoveClosedCaptioningSurfaceView.class;
    }
    try
    {
      for (;;)
      {
        brightcoveSurfaceView = ((BrightcoveSurfaceView)brightcoveSurfaceViewClass.getConstructors()[0].newInstance(new Object[] { paramContext }));
        surfaceListener = new SurfaceListener(null);
        brightcoveSurfaceView.getHolder().addCallback(surfaceListener);
        addView(brightcoveSurfaceView);
        super.init(paramContext);
        return;
        label91:
        brightcoveSurfaceViewClass = BrightcoveSurfaceView.class;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      for (;;)
      {
        localInstantiationException.printStackTrace();
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        localInvocationTargetException.printStackTrace();
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((brightcoveSurfaceView.isShown()) && (mediaController != null))
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
    if (brightcoveSurfaceView != null) {
      brightcoveSurfaceView.setVideoSize(0, 0);
    }
    super.resetMetaData();
  }
  
  protected void setChildLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    int j = 0;
    int k = getChildCount();
    int i = 0;
    while (i < k)
    {
      if (getChildAt(i).getClass().getName().equals("com.brightcove.ima.GoogleIMAVideoAdPlayer")) {
        j = 1;
      }
      i += 1;
    }
    if (j == 0)
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(width, height);
      gravity = 17;
      brightcoveSurfaceView.setLayoutParams(localLayoutParams);
    }
    super.setChildLayoutParams(paramLayoutParams);
  }
  
  public void setEventEmitter(EventEmitter paramEventEmitter)
  {
    super.setEventEmitter(paramEventEmitter);
    videoDisplay = new VideoDisplayComponent(brightcoveSurfaceView, paramEventEmitter);
  }
  
  protected void showMediaController()
  {
    if ((brightcoveSurfaceView.isShown()) && (mediaController != null)) {
      mediaController.show();
    }
  }
  
  class SurfaceListener
    implements SurfaceHolder.Callback
  {
    private SurfaceListener() {}
    
    public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
    {
      new StringBuilder("Surface changed to ").append(paramInt2).append(", ").append(paramInt3);
      videoDisplay.surfaceChanged(paramSurfaceHolder, paramInt1, paramInt2, paramInt3);
    }
    
    public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
    {
      eventEmitter.emit("readyToPlay");
      videoDisplay.surfaceCreated(paramSurfaceHolder);
    }
    
    public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
    {
      videoDisplay.surfaceDestroyed(paramSurfaceHolder);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */