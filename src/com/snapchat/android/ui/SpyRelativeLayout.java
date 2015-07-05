package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SpyRelativeLayout
  extends RelativeLayout
{
  public List<a> a = new ArrayList();
  
  public SpyRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public SpyRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SpyRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(paramMotionEvent);
    }
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(paramMotionEvent);
    }
    return true;
  }
  
  public static abstract interface a
  {
    public abstract void a(MotionEvent paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SpyRelativeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */