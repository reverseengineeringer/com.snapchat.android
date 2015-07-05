package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.media.SubtitleController.Anchor;
import android.media.SubtitleTrack.RenderingWidget;
import android.media.SubtitleTrack.RenderingWidget.OnChangedListener;
import android.os.Looper;

public class BrightcoveClosedCaptioningSurfaceView
  extends BrightcoveSurfaceView
  implements SubtitleController.Anchor
{
  private static final String TAG = BrightcoveClosedCaptioningSurfaceView.class.getSimpleName();
  private SubtitleTrack.RenderingWidget subtitleWidget;
  private SubtitleTrack.RenderingWidget.OnChangedListener subtitlesChangedListener;
  
  public BrightcoveClosedCaptioningSurfaceView(Context paramContext)
  {
    super(paramContext);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (subtitleWidget != null)
    {
      int i = paramCanvas.save();
      paramCanvas.translate(getPaddingLeft(), getPaddingTop());
      subtitleWidget.draw(paramCanvas);
      paramCanvas.restoreToCount(i);
    }
  }
  
  public Looper getSubtitleLooper()
  {
    return Looper.getMainLooper();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (subtitleWidget != null) {
      subtitleWidget.onAttachedToWindow();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (subtitleWidget != null) {
      subtitleWidget.onDetachedFromWindow();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (subtitleWidget != null)
    {
      paramInt1 = getWidth();
      paramInt2 = getPaddingLeft();
      paramInt3 = getPaddingRight();
      paramInt4 = getHeight();
      int i = getPaddingTop();
      int j = getPaddingBottom();
      subtitleWidget.setSize(paramInt1 - paramInt2 - paramInt3, paramInt4 - i - j);
    }
  }
  
  @TargetApi(19)
  public void setSubtitleWidget(SubtitleTrack.RenderingWidget paramRenderingWidget)
  {
    if (subtitleWidget == paramRenderingWidget) {
      return;
    }
    boolean bool = isAttachedToWindow();
    if (subtitleWidget != null)
    {
      if (bool) {
        subtitleWidget.onDetachedFromWindow();
      }
      subtitleWidget.setOnChangedListener(null);
    }
    subtitleWidget = paramRenderingWidget;
    if (paramRenderingWidget != null)
    {
      if (subtitlesChangedListener == null) {
        subtitlesChangedListener = new SubtitleTrack.RenderingWidget.OnChangedListener()
        {
          public void onChanged(SubtitleTrack.RenderingWidget paramAnonymousRenderingWidget)
          {
            invalidate();
          }
        };
      }
      setWillNotDraw(false);
      paramRenderingWidget.setOnChangedListener(subtitlesChangedListener);
      if (bool)
      {
        paramRenderingWidget.onAttachedToWindow();
        requestLayout();
      }
    }
    for (;;)
    {
      invalidate();
      return;
      setWillNotDraw(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveClosedCaptioningSurfaceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */