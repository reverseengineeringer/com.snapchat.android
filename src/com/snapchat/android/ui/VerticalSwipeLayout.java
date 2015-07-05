package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import avh;
import cf;
import ck;
import md.a;
import q;

public class VerticalSwipeLayout
  extends ViewGroup
{
  int a;
  public boolean b = true;
  private a c = null;
  private int d;
  private int e;
  private float f;
  private float g;
  private Scroller h;
  private float i;
  private boolean j;
  private boolean k;
  private int l;
  private VelocityTracker m;
  private int n;
  
  public VerticalSwipeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, md.a.VerticalSwipeLayout, 0, 0);
    try
    {
      a = paramContext.getInt(0, 0);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  @cf
  private void a()
  {
    f = -1.0F;
    g = 0.0F;
    j = false;
    if (m != null)
    {
      m.recycle();
      m = null;
    }
  }
  
  private boolean a(float paramFloat)
  {
    if (f == -1.0F)
    {
      if (!h.isFinished()) {
        h.abortAnimation();
      }
      f = paramFloat;
      return true;
    }
    return false;
  }
  
  private boolean a(float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    return ((a != 0) && (paramFloat - f > i) && (!paramBoolean1)) || ((a != getChildCount() - 1) && (f - paramFloat > i) && (!paramBoolean2));
  }
  
  @cf
  private void b(float paramFloat)
  {
    int i1 = a;
    if (f - paramFloat > e) {
      i1 = a + 1;
    }
    for (;;)
    {
      int i2 = i1;
      if (i1 == a) {
        i2 = i1 + getFlingType();
      }
      a(Math.max(0, Math.min(i2, getChildCount() - 1)), 1.0D);
      return;
      if (paramFloat - f > e) {
        i1 = a - 1;
      }
    }
  }
  
  private int getFlingType()
  {
    int i1 = getYVelocity();
    if ((i1 > n) && (a > 0)) {
      return -1;
    }
    if ((i1 < -n) && (a < getChildCount() - 1)) {
      return 1;
    }
    return 0;
  }
  
  private int getYVelocity()
  {
    if (m == null) {
      return 0;
    }
    m.computeCurrentVelocity(1000, l);
    return (int)m.getYVelocity();
  }
  
  public final void a(int paramInt, double paramDouble)
  {
    boolean bool;
    if (paramDouble >= 0.0D)
    {
      bool = true;
      ck.a(bool);
      if (paramInt == a) {
        break label144;
      }
    }
    label144:
    for (int i1 = 1;; i1 = 0)
    {
      View localView = getFocusedChild();
      if ((localView != null) && (i1 != 0) && (localView == getChildAt(a))) {
        localView.clearFocus();
      }
      if (c != null) {
        c.a(2, a, paramInt);
      }
      a = paramInt;
      i1 = d;
      int i2 = getScrollY();
      int i3 = (int)(250.0D * paramDouble);
      h.startScroll(0, getScrollY(), 0, i1 * paramInt - i2, i3);
      k = true;
      invalidate();
      return;
      bool = false;
      break;
    }
  }
  
  @cf
  public void a(boolean paramBoolean)
  {
    if (a * d != getScrollY()) {
      a(a, 0.0D);
    }
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    if (!b) {
      return false;
    }
    if (((paramInt < 0) && (getScrollY() != 0)) || ((paramInt > 0) && (getScrollY() != d * (getChildCount() - 1)))) {
      return true;
    }
    return getChildAt(a).canScrollVertically(paramInt);
  }
  
  public void computeScroll()
  {
    if (!h.computeScrollOffset())
    {
      if (k)
      {
        k = false;
        if (c != null) {
          c.c(a);
        }
      }
      return;
    }
    scrollTo(h.getCurrX(), h.getCurrY());
    postInvalidate();
  }
  
  public final void d()
  {
    h = new Scroller(getContext(), new DecelerateInterpolator(1.4F));
    a = 0;
    m = null;
    k = false;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    i = localViewConfiguration.getScaledTouchSlop();
    l = localViewConfiguration.getScaledMaximumFlingVelocity();
    n = ((int)avh.a(50.0F, getContext()));
    a();
  }
  
  public final boolean e()
  {
    boolean bool = false;
    if (h.getCurrY() != h.getFinalY()) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((j) || (i1 != 0)) {
        bool = true;
      }
      return bool;
    }
  }
  
  public int getCurrentPanel()
  {
    return a;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (m == null) {
      m = VelocityTracker.obtain();
    }
    m.addMovement(paramMotionEvent);
    int i1;
    if (paramMotionEvent.getPointerCount() > 1)
    {
      i1 = 1;
      if ((b) && (i1 == 0)) {
        break label50;
      }
    }
    label50:
    float f1;
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        return false;
        i1 = 0;
        break;
        i1 = paramMotionEvent.getAction();
        f1 = paramMotionEvent.getY();
        switch (i1)
        {
        default: 
          return false;
        case 0: 
          if (!h.isFinished()) {
            h.abortAnimation();
          }
          f = f1;
          return false;
        }
      } while (a(f1));
      View localView = getChildAt(a);
      bool1 = ViewCompat.canScrollVertically(localView, -1);
      bool2 = ViewCompat.canScrollVertically(localView, 1);
      if (((f1 - f > i) && (bool1)) || ((f - f1 > i) && (bool2))) {}
      for (i1 = 1; i1 != 0; i1 = 0)
      {
        requestDisallowInterceptTouchEvent(true);
        localView.onTouchEvent(paramMotionEvent);
        return false;
      }
    } while (!a(f1, bool1, bool2));
    f = f1;
    g = getScrollY();
    requestDisallowInterceptTouchEvent(true);
    if (c != null) {
      c.a(1, a, -1);
    }
    j = true;
    return true;
    if (j) {
      return true;
    }
    b(f1);
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i2 = getChildCount();
    paramInt2 = 0;
    int i1;
    for (paramInt4 = 0; paramInt2 < i2; paramInt4 = i1)
    {
      View localView = getChildAt(paramInt2);
      i1 = paramInt4;
      if (localView.getVisibility() != 8)
      {
        localView.layout(0, paramInt4, paramInt3 - paramInt1, d + paramInt4);
        i1 = paramInt4 + d;
      }
      paramInt2 += 1;
    }
    a(paramBoolean);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    int i3 = getChildCount();
    d = View.MeasureSpec.getSize(paramInt2);
    e = ((int)(d * 0.5D));
    paramInt2 = 0;
    while (paramInt2 < i3)
    {
      View localView = getChildAt(paramInt2);
      int i2 = i1;
      if (localView.getVisibility() != 8)
      {
        measureChild(localView, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1), 1073741824), View.MeasureSpec.makeMeasureSpec(d, 1073741824));
        i2 = i1 + d;
      }
      paramInt2 += 1;
      i1 = i2;
    }
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
  }
  
  public boolean onTouchEvent(@q MotionEvent paramMotionEvent)
  {
    if (!b) {}
    float f1;
    do
    {
      do
      {
        return false;
        if (m == null) {
          return true;
        }
        int i1 = paramMotionEvent.getAction();
        f1 = paramMotionEvent.getY();
        switch (i1)
        {
        default: 
          return true;
        case 0: 
          if (!h.isFinished()) {
            h.abortAnimation();
          }
          f = f1;
          return true;
        case 2: 
          m.addMovement(paramMotionEvent);
        }
      } while ((a(f1)) || ((f1 - f > 0.0F) && (a == 0)) || ((f1 - f < 0.0F) && (a == getChildCount() - 1)));
      if (j)
      {
        setScrollY((int)(f - f1 + g));
        return true;
      }
      paramMotionEvent = getChildAt(a);
    } while ((paramMotionEvent == null) || (!a(f1, ViewCompat.canScrollVertically(paramMotionEvent, -1), ViewCompat.canScrollVertically(paramMotionEvent, 1))));
    f = f1;
    g = getScrollY();
    requestDisallowInterceptTouchEvent(true);
    if (c != null) {
      c.a(1, a, -1);
    }
    j = true;
    return true;
    b(f1);
    boolean bool = j;
    a();
    return bool;
    a();
    return false;
  }
  
  public void setOnScrolledListener(a parama)
  {
    c = parama;
  }
  
  public void setScrollable(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt1, int paramInt2, int paramInt3);
    
    public abstract void c(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VerticalSwipeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */