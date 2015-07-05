package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.VideoView;

public class SnapVideoView
  extends VideoView
{
  private int a = 0;
  private int b = 0;
  
  public SnapVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public int getVideoHeight()
  {
    return b;
  }
  
  public int getVideoWidth()
  {
    return a;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(Math.max(1, a), Math.max(1, b));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void setVideoAspect(int paramInt1, int paramInt2)
  {
    a = Math.min(paramInt1, paramInt2);
    b = Math.max(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void start()
  {
    super.start();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */