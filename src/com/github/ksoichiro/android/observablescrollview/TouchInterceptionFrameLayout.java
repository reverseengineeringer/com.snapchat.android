package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

public class TouchInterceptionFrameLayout
  extends FrameLayout
{
  private boolean a;
  private boolean b;
  private boolean c;
  private boolean d;
  private PointF e;
  private MotionEvent f;
  private a g;
  
  public TouchInterceptionFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public TouchInterceptionFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public TouchInterceptionFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(MotionEvent paramMotionEvent, MotionEvent... paramVarArgs)
  {
    if (paramMotionEvent == null) {}
    label190:
    for (;;)
    {
      return;
      int i = getChildCount() - 1;
      for (;;)
      {
        if (i < 0) {
          break label190;
        }
        View localView = getChildAt(i);
        if (localView != null)
        {
          Object localObject = new Rect();
          localView.getHitRect((Rect)localObject);
          MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
          if (((Rect)localObject).contains((int)localMotionEvent.getX(), (int)localMotionEvent.getY()))
          {
            float f1 = -localView.getLeft();
            float f2 = -localView.getTop();
            int k = paramVarArgs.length;
            int j = 0;
            boolean bool2;
            for (boolean bool1 = false; j < k; bool1 = bool2)
            {
              localObject = paramVarArgs[j];
              bool2 = bool1;
              if (localObject != null)
              {
                localObject = MotionEvent.obtainNoHistory((MotionEvent)localObject);
                ((MotionEvent)localObject).offsetLocation(f1, f2);
                bool2 = bool1 | localView.dispatchTouchEvent((MotionEvent)localObject);
              }
              j += 1;
            }
            localMotionEvent.offsetLocation(f1, f2);
            if ((bool1 | localView.dispatchTouchEvent(localMotionEvent))) {
              break;
            }
          }
        }
        i -= 1;
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (g == null) {
      return false;
    }
    switch (paramMotionEvent.getActionMasked())
    {
    case 1: 
    default: 
      return false;
    case 0: 
      e = new PointF(paramMotionEvent.getX(), paramMotionEvent.getY());
      f = MotionEvent.obtainNoHistory(paramMotionEvent);
      b = true;
      a = g.a();
      c = a;
      d = false;
      return a;
    }
    if (e == null) {
      e = new PointF(paramMotionEvent.getX(), paramMotionEvent.getY());
    }
    paramMotionEvent.getX();
    float f1 = e.x;
    paramMotionEvent.getY();
    f1 = e.y;
    a = g.a();
    return a;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if (g != null) {}
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      bool = super.onTouchEvent(paramMotionEvent);
    }
    MotionEvent localMotionEvent;
    do
    {
      return bool;
      if (!a) {
        break;
      }
      a(paramMotionEvent, new MotionEvent[0]);
      return true;
      if (e == null) {
        e = new PointF(paramMotionEvent.getX(), paramMotionEvent.getY());
      }
      paramMotionEvent.getX();
      float f1 = e.x;
      paramMotionEvent.getY();
      f1 = e.y;
      a = g.a();
      if (a)
      {
        if (!c)
        {
          c = true;
          MotionEvent.obtainNoHistory(f).setLocation(paramMotionEvent.getX(), paramMotionEvent.getY());
          e = new PointF(paramMotionEvent.getX(), paramMotionEvent.getY());
        }
        if (!d)
        {
          d = true;
          paramMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
          paramMotionEvent.setAction(3);
          a(paramMotionEvent, new MotionEvent[0]);
        }
        b = true;
        return true;
      }
      if (b)
      {
        b = false;
        localMotionEvent = MotionEvent.obtainNoHistory(f);
        localMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY());
        a(paramMotionEvent, new MotionEvent[] { localMotionEvent });
      }
      for (;;)
      {
        c = false;
        d = false;
        break;
        a(paramMotionEvent, new MotionEvent[0]);
      }
      c = false;
    } while (d);
    d = true;
    if (b)
    {
      b = false;
      localMotionEvent = MotionEvent.obtainNoHistory(f);
      localMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY());
      a(paramMotionEvent, new MotionEvent[] { localMotionEvent });
      return true;
    }
    a(paramMotionEvent, new MotionEvent[0]);
    return true;
  }
  
  public void setScrollInterceptionListener(a parama)
  {
    g = parama;
  }
  
  public static abstract interface a
  {
    public abstract boolean a();
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.TouchInterceptionFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */