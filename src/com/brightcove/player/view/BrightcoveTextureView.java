package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View.MeasureSpec;
import com.brightcove.player.util.LayoutUtil;

@TargetApi(14)
public class BrightcoveTextureView
  extends TextureView
  implements RenderView
{
  private static final String TAG = BrightcoveTextureView.class.getSimpleName();
  private Surface surface;
  private int videoHeight;
  private int videoWidth;
  
  public BrightcoveTextureView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SurfaceHolder getHolder()
  {
    return null;
  }
  
  public Surface getSurface()
  {
    if (surface == null) {
      surface = new Surface(getSurfaceTexture());
    }
    return surface;
  }
  
  public int getVideoHeight()
  {
    return videoHeight;
  }
  
  public int getVideoWidth()
  {
    return videoWidth;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    new StringBuilder("onLayout: changed = ").append(paramBoolean).append(", left = ").append(paramInt1).append(", top = ").append(paramInt2).append(", right = ").append(paramInt3).append(", bottom = ").append(paramInt4);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    paramInt2 = View.MeasureSpec.getMode(paramInt2);
    new StringBuilder("onMeasure: width = ").append(i).append(", height = ").append(j).append(", videoWidth = ").append(videoWidth).append(", videoHeight = ").append(videoHeight).append(", widthMode = ").append(LayoutUtil.getSpecMode(paramInt1)).append(", heightMode = ").append(LayoutUtil.getSpecMode(paramInt2));
    paramInt1 = j;
    paramInt2 = i;
    if (videoWidth > 0)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (videoHeight > 0)
      {
        if (videoWidth * j <= videoHeight * i) {
          break label177;
        }
        paramInt1 = videoHeight * i / videoWidth;
        paramInt2 = i;
      }
    }
    for (;;)
    {
      new StringBuilder("setMeasuredDimension: width = ").append(paramInt2).append(", height = ").append(paramInt1);
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      label177:
      paramInt1 = j;
      paramInt2 = i;
      if (videoWidth * j < videoHeight * i)
      {
        paramInt2 = videoWidth * j / videoHeight;
        paramInt1 = j;
      }
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    new StringBuilder("onSizeChanged: width = ").append(paramInt1).append(", height = ").append(paramInt2).append(", oldw = ").append(paramInt3).append(", oldh = ").append(paramInt4);
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setVideoSize(int paramInt1, int paramInt2)
  {
    videoWidth = paramInt1;
    videoHeight = paramInt2;
    if ((paramInt1 != 0) && (paramInt2 != 0))
    {
      super.requestLayout();
      super.invalidate();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveTextureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */