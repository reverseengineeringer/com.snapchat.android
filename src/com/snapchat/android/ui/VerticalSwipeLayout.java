package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
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
import awf;
import bhp;
import cdn;
import cf;
import chc;
import co;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mv.a;
import q;

public class VerticalSwipeLayout
  extends ViewGroup
{
  int a;
  public boolean b = true;
  private List<a> c = new ArrayList();
  private int d;
  private int e;
  private float f;
  private float g;
  private Scroller h;
  private float i;
  private float j;
  private boolean k;
  private boolean l;
  private int m;
  private VelocityTracker n;
  private int o;
  private final Rect p = new Rect();
  private Map<View, b> q = new HashMap();
  
  public VerticalSwipeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, mv.a.VerticalSwipeLayout, 0, 0);
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
  private int a(View paramView, int paramInt)
  {
    paramView = (b)q.get(paramView);
    if (paramView == null) {
      return paramInt;
    }
    int i2 = b;
    int i1 = paramInt;
    if (i2 != 0) {
      if (i2 <= paramInt) {
        break label48;
      }
    }
    label48:
    for (i1 = paramInt;; i1 = i2) {
      return i1 - a;
    }
  }
  
  @cf
  private void a()
  {
    f = -1.0F;
    g = 0.0F;
    k = false;
    if (n != null)
    {
      n.recycle();
      n = null;
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
    boolean bool = false;
    int i1;
    if ((a != 0) && (paramFloat - f > i) && (!paramBoolean1))
    {
      i1 = 1;
      if ((a == getChildCount() - 1) || (f - paramFloat <= i) || (paramBoolean2)) {
        break label88;
      }
    }
    label88:
    for (int i2 = 1;; i2 = 0)
    {
      if (i1 == 0)
      {
        paramBoolean1 = bool;
        if (i2 == 0) {}
      }
      else
      {
        paramBoolean1 = true;
      }
      return paramBoolean1;
      i1 = 0;
      break;
    }
  }
  
  private boolean a(View paramView, Rect paramRect, MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = 0;
    Object localObject = new int[2];
    paramView.getLocationOnScreen((int[])localObject);
    paramRect.set(localObject[0], localObject[1], localObject[0] + paramView.getWidth(), localObject[1] + paramView.getHeight());
    if (paramRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
    {
      if ((paramView instanceof ViewGroup))
      {
        localObject = (ViewGroup)paramView;
        int i2 = ((ViewGroup)localObject).getChildCount();
        while (i1 < i2)
        {
          if (a(((ViewGroup)localObject).getChildAt(i1), paramRect, paramMotionEvent, paramInt)) {
            return true;
          }
          i1 += 1;
        }
      }
      return ViewCompat.canScrollVertically(paramView, paramInt);
    }
    return false;
  }
  
  @cf
  private void b(float paramFloat)
  {
    int i1 = a;
    int i2;
    if (f - paramFloat > e)
    {
      i1 = a + 1;
      i2 = i1;
      if (i1 == a)
      {
        i2 = getYVelocity();
        paramFloat -= f;
        if ((paramFloat <= j) || (i2 <= o) || (a <= 0)) {
          break label124;
        }
        i2 = -1;
      }
    }
    for (;;)
    {
      i2 = i1 + i2;
      a(Math.max(0, Math.min(i2, getChildCount() - 1)), 1.0D);
      return;
      if (paramFloat - f <= e) {
        break;
      }
      i1 = a - 1;
      break;
      label124:
      if ((paramFloat < -j) && (i2 < -o) && (a < getChildCount() - 1)) {
        i2 = 1;
      } else {
        i2 = 0;
      }
    }
  }
  
  private int getYVelocity()
  {
    if (n == null) {
      return 0;
    }
    n.computeCurrentVelocity(1000, m);
    return (int)n.getYVelocity();
  }
  
  public final void a(int paramInt, double paramDouble)
  {
    boolean bool;
    if (paramDouble >= 0.0D)
    {
      bool = true;
      co.a(bool);
      if (paramInt == a) {
        break label110;
      }
    }
    label110:
    for (int i1 = 1;; i1 = 0)
    {
      Object localObject = getFocusedChild();
      if ((localObject != null) && (i1 != 0) && (localObject == getChildAt(a))) {
        ((View)localObject).clearFocus();
      }
      localObject = c.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((a)((Iterator)localObject).next()).a(2, a, paramInt);
      }
      bool = false;
      break;
    }
    a = paramInt;
    int i2;
    if (getChildCount() - 1 == a)
    {
      i2 = getHeight() - d;
      paramInt = getScrollY();
      i1 = (int)(250.0D * paramDouble);
      h.startScroll(0, getScrollY(), 0, i2 - paramInt, i1);
      l = true;
      invalidate();
      return;
    }
    int i3 = 0;
    for (i1 = 0;; i1 = i2 + i1)
    {
      i2 = i1;
      if (i3 >= paramInt) {
        break;
      }
      i2 = a(getChildAt(i3), d);
      i3 += 1;
    }
  }
  
  public final void a(@chc View paramView, int paramInt1, int paramInt2)
  {
    super.addView(paramView);
    View localView;
    b localb;
    if (paramInt2 != 0)
    {
      localView = getChildAt(getChildCount() - 2);
      localb = (b)q.get(localView);
      if (localb != null) {
        break label90;
      }
      localb = new b(0, paramInt2);
    }
    for (;;)
    {
      q.put(localView, localb);
      q.put(paramView, new b(paramInt1, 0));
      return;
      label90:
      a = paramInt2;
    }
  }
  
  @cdn
  public final void a(a parama)
  {
    bhp.a();
    c.add(parama);
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
      if (l)
      {
        l = false;
        Iterator localIterator = c.iterator();
        while (localIterator.hasNext()) {
          ((a)localIterator.next()).c(a);
        }
      }
    }
    else
    {
      scrollTo(h.getCurrX(), h.getCurrY());
      postInvalidate();
    }
  }
  
  public final void d()
  {
    h = new Scroller(getContext(), new DecelerateInterpolator(1.4F));
    a = 0;
    n = null;
    l = false;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    i = localViewConfiguration.getScaledTouchSlop();
    j = localViewConfiguration.getScaledPagingTouchSlop();
    m = localViewConfiguration.getScaledMaximumFlingVelocity();
    o = ((int)awf.a(50.0F, getContext()));
    a();
  }
  
  public final boolean e()
  {
    boolean bool = false;
    if (h.getCurrY() != h.getFinalY()) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((k) || (i1 != 0)) {
        bool = true;
      }
      return bool;
    }
  }
  
  @cdn
  public final void f()
  {
    bhp.a();
    c.clear();
  }
  
  public int getCurrentPanel()
  {
    return a;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (n == null) {
      n = VelocityTracker.obtain();
    }
    n.addMovement(paramMotionEvent);
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
      bool1 = a(localView, p, paramMotionEvent, -1);
      bool2 = a(localView, p, paramMotionEvent, 1);
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
    paramMotionEvent = c.iterator();
    while (paramMotionEvent.hasNext()) {
      ((a)paramMotionEvent.next()).a(1, a, -1);
    }
    k = true;
    return true;
    if (k) {
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
        i1 = a(localView, d);
        localView.layout(0, paramInt4, paramInt3 - paramInt1, paramInt4 + i1);
        i1 = paramInt4 + i1;
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
        i2 = a(localView, d);
        measureChild(localView, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        i2 = i1 + i2;
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
        if (n == null) {
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
          n.addMovement(paramMotionEvent);
        }
      } while ((a(f1)) || ((f1 - f > 0.0F) && (a == 0)) || ((f1 - f < 0.0F) && (a == getChildCount() - 1)));
      if (k)
      {
        setScrollY(Math.max((int)Math.min(f - f1 + g, getHeight() - d), 0));
        return true;
      }
      paramMotionEvent = getChildAt(a);
    } while ((paramMotionEvent == null) || (!a(f1, ViewCompat.canScrollVertically(paramMotionEvent, -1), ViewCompat.canScrollVertically(paramMotionEvent, 1))));
    f = f1;
    g = getScrollY();
    requestDisallowInterceptTouchEvent(true);
    paramMotionEvent = c.iterator();
    while (paramMotionEvent.hasNext()) {
      ((a)paramMotionEvent.next()).a(1, a, -1);
    }
    k = true;
    return true;
    b(f1);
    boolean bool = k;
    a();
    return bool;
    a();
    return false;
  }
  
  public void removeAllViews()
  {
    super.removeAllViews();
    q.clear();
  }
  
  public void removeView(@chc View paramView)
  {
    super.removeView(paramView);
    q.remove(paramView);
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
  
  final class b
  {
    int a;
    int b;
    
    public b(int paramInt1, int paramInt2)
    {
      b = paramInt1;
      a = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VerticalSwipeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */