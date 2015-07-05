package com.snapchat.android;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class LeftSwipeViewPager
  extends ViewPager
{
  private boolean a = true;
  
  public LeftSwipeViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public LeftSwipeViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!a) {
      return false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!a) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setLeftSwipeEnable(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LeftSwipeViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */