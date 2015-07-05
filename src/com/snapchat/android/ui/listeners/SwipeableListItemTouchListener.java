package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import ban;
import beq;
import cgc;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.squareup.otto.Bus;

public class SwipeableListItemTouchListener
  implements View.OnTouchListener
{
  private int a;
  public int b;
  protected ListView c;
  public boolean d;
  public boolean e;
  public boolean f;
  public View g;
  public View h;
  public boolean i;
  private int j;
  private int k;
  private int l;
  private float m;
  private a n;
  private int o = 1;
  private SwipeDirection p;
  private float q;
  private float r;
  private float s;
  private float t;
  private boolean u;
  private int v;
  private VelocityTracker w;
  
  public SwipeableListItemTouchListener(ListView paramListView, SwipeDirection paramSwipeDirection, a parama)
  {
    Resources localResources = paramListView.getContext().getResources();
    float f1 = getDisplayMetricsdensity;
    b = ViewConfiguration.get(paramListView.getContext()).getScaledTouchSlop();
    a = ((int)(400.0F * f1));
    j = ((int)(f1 * 25.0F));
    k = localResources.getInteger(17694720);
    c = paramListView;
    n = parama;
    p = paramSwipeDirection;
  }
  
  private void a(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView, paramInt1, paramInt2, new LinearInterpolator());
  }
  
  private void a(final View paramView, int paramInt1, int paramInt2, Interpolator paramInterpolator)
  {
    if (paramInt1 == 0) {}
    for (final boolean bool = true;; bool = false)
    {
      ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { (int)m, paramInt1 }).setDuration(paramInt2);
      localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
          SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this).b(g);
          SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this).a(paramView, SwipeableListItemTouchListener.b(SwipeableListItemTouchListener.this), SwipeableListItemTouchListener.c(SwipeableListItemTouchListener.this), SwipeableListItemTouchListener.d(SwipeableListItemTouchListener.this));
        }
      });
      localValueAnimator.addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          int i = a(paramView);
          if ((SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this) != null) && (i != -1)) {
            SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this).a(paramView, i, bool);
          }
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      localValueAnimator.setInterpolator(paramInterpolator);
      localValueAnimator.start();
      return;
    }
  }
  
  private void b()
  {
    w.recycle();
    w = null;
    q = 0.0F;
    s = 0.0F;
    g = null;
    f = false;
    u = false;
    l = 0;
    m = 0.0F;
  }
  
  protected final int a(View paramView)
  {
    if ((c == null) || (paramView == null) || (paramView.getParent() == null)) {
      return -1;
    }
    try
    {
      int i1 = c.getPositionForView(paramView);
      return i1;
    }
    catch (NullPointerException paramView) {}
    return -1;
  }
  
  public final AbsListView.OnScrollListener a()
  {
    new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        paramAnonymousAbsListView = SwipeableListItemTouchListener.this;
        if (paramAnonymousInt == 0) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousAbsListView.a(bool);
          return;
        }
      }
    };
  }
  
  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      i = paramBoolean;
      return;
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = null;
    MotionEvent localMotionEvent = null;
    int i4 = 1;
    int i3 = 1;
    int i2 = 1;
    if (o < 2) {
      o = c.getWidth();
    }
    int i1;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
    case 0: 
      Object localObject;
      label212:
      do
      {
        do
        {
          return false;
          h = null;
        } while (i);
        paramView = new Rect();
        i2 = c.getChildCount();
        localObject = new int[2];
        c.getLocationOnScreen((int[])localObject);
        i3 = (int)paramMotionEvent.getRawX();
        i4 = localObject[0];
        int i5 = (int)paramMotionEvent.getRawY();
        int i6 = localObject[1];
        i1 = 0;
        if (i1 < i2)
        {
          localObject = c.getChildAt(i1);
          ((View)localObject).getHitRect(paramView);
          if (!paramView.contains(i3 - i4, i5 - i6)) {
            break label364;
          }
          if (!(c instanceof StickyListHeadersListView)) {
            break label358;
          }
          paramView = localMotionEvent;
          if (localObject != null)
          {
            if (((View)localObject).getParent() != null) {
              break;
            }
            paramView = localMotionEvent;
          }
          g = paramView;
        }
      } while (g == null);
      q = paramMotionEvent.getRawX();
      s = paramMotionEvent.getRawY();
      r = paramMotionEvent.getX();
      t = paramMotionEvent.getY();
      if (d) {}
      for (l = ((int)n.a(g));; l = 0)
      {
        m = l;
        w = VelocityTracker.obtain();
        w.addMovement(paramMotionEvent);
        return false;
        i1 = c.getPositionForView((View)localObject);
        i2 = c.getFirstVisiblePosition();
        i3 = c.getHeaderViewsCount();
        paramView = ((StickyListHeadersListView)c).getWrappedView(i3 + (i1 - i2));
        break label212;
        label358:
        paramView = (View)localObject;
        break label212;
        label364:
        i1 += 1;
        break;
      }
    }
    for (i3 = 1; (w != null) && (!i); i3 = 0)
    {
      float f1 = paramMotionEvent.getRawX() - q;
      w.addMovement(paramMotionEvent);
      w.computeCurrentVelocity(1000);
      float f2 = w.getXVelocity();
      float f3 = Math.abs(f2);
      float f4 = Math.abs(w.getYVelocity());
      if (Math.abs(f1) >= n.b(g)) {
        if (f1 > 0.0F) {
          i1 = 1;
        }
      }
      for (;;)
      {
        if (i2 != 0)
        {
          if (d) {
            if ((p == SwipeDirection.LEFT) && (i1 != 0)) {
              a(g, 0, k);
            }
          }
          for (;;)
          {
            h = g;
            b();
            return false;
            i1 = 0;
            break;
            if (a <= f2)
            {
              if (f1 > 0.0F)
              {
                i1 = 1;
                break;
              }
              i1 = 0;
              break;
            }
            if ((a > f3) || (f4 >= f3) || (!f)) {
              break label1554;
            }
            if (f2 < 0.0F)
            {
              i1 = 1;
              label610:
              if (f1 >= 0.0F) {
                break label660;
              }
              i2 = 1;
              label619:
              if (i1 != i2) {
                break label666;
              }
              i1 = 1;
              label629:
              if (f1 <= 0.0F) {
                break label672;
              }
            }
            label660:
            label666:
            label672:
            for (i2 = i4;; i2 = 0)
            {
              i4 = i2;
              i2 = i1;
              i1 = i4;
              break;
              i1 = 0;
              break label610;
              i2 = 0;
              break label619;
              i1 = 0;
              break label629;
            }
            a(g, -n.b(g), k);
            continue;
            if ((i3 == 0) && (f1 > 0.0F))
            {
              a(g, 0, k);
              ban.a().a(new beq());
            }
            else if (u)
            {
              a(g, n.b(g), 50, new DecelerateInterpolator());
            }
            else
            {
              m = 0.0F;
            }
          }
        }
        if ((n instanceof b))
        {
          i1 = a(g);
          if (i1 != -1) {
            ((b)n).a(i1);
          }
        }
        if (l != 0)
        {
          f1 = n.b(g) / 2.0F;
          if (l <= f1) {
            break label928;
          }
          l = n.b(g);
          if (!p.equals(SwipeDirection.LEFT)) {}
        }
        label928:
        for (l *= -1;; l = 0)
        {
          a(g, l, k);
          break;
        }
        if ((w == null) || (i)) {
          break;
        }
        w.addMovement(paramMotionEvent);
        f1 = paramMotionEvent.getRawX() - q;
        f2 = paramMotionEvent.getRawY();
        f3 = s;
        if (!u)
        {
          w.computeCurrentVelocity(1000);
          f4 = w.getXVelocity();
          if ((f4 <= w.getYVelocity()) || (f4 <= a)) {
            break label1140;
          }
          i1 = 1;
          label1033:
          if (f1 <= j) {
            break label1146;
          }
          i2 = 1;
          label1046:
          if ((i2 != 0) && (i1 != 0)) {
            u = true;
          }
        }
        if (f1 > 0.0F)
        {
          i1 = 1;
          label1070:
          i2 = (int)n.a(g);
          if (((i2 != 0) || (i1 != 0) || (p != SwipeDirection.RIGHT)) && ((i2 != 0) || (i1 == 0) || (p != SwipeDirection.LEFT))) {
            break label1158;
          }
          paramView = Boolean.valueOf(false);
        }
        label1140:
        label1146:
        label1158:
        label1216:
        label1263:
        do
        {
          while (paramView != null)
          {
            return paramView.booleanValue();
            i1 = 0;
            break label1033;
            i2 = 0;
            break label1046;
            i1 = 0;
            break label1070;
            if ((!d) || (i1 == 0) || (l < 0)) {
              break label1216;
            }
            if ((g != null) && (f)) {
              a(g, 0, k);
            }
            b();
            paramView = Boolean.valueOf(false);
          }
          if ((Math.abs(f1) > b) && (Math.abs(f2 - f3) < Math.abs(f1) / 2.0F))
          {
            f = true;
            if (i1 == 0) {
              break label1538;
            }
            i1 = b;
            v = i1;
            c.requestDisallowInterceptTouchEvent(true);
            localMotionEvent = MotionEvent.obtain(paramMotionEvent);
            localMotionEvent.setAction(paramMotionEvent.getActionIndex() << 8 | 0x3);
            c.onTouchEvent(localMotionEvent);
            localMotionEvent.recycle();
          }
        } while ((!f) && (!u));
        m = (l + f1 - v);
        if ((p == SwipeDirection.LEFT) && (m > 0.0F)) {
          m = 0.0F;
        }
        if ((p == SwipeDirection.RIGHT) && (m < 0.0F)) {
          m = 0.0F;
        }
        n.b(g);
        if ((Math.abs(f1) >= n.b(g)) && (n.a(g) >= n.b(g))) {}
        for (i1 = i3;; i1 = 0)
        {
          if ((u) || (i1 != 0))
          {
            if (e) {
              c.requestDisallowInterceptTouchEvent(false);
            }
            n.a(g, u);
          }
          paramView = Boolean.valueOf(n.a(g, m, r, t));
          break;
          label1538:
          i1 = -b;
          break label1263;
        }
        label1554:
        i1 = 0;
        i2 = 0;
      }
    }
  }
  
  public static enum SwipeDirection
  {
    LEFT,  RIGHT;
    
    private SwipeDirection() {}
  }
  
  public static abstract interface a
  {
    public abstract float a(View paramView);
    
    public abstract void a(View paramView, int paramInt, boolean paramBoolean);
    
    public abstract void a(View paramView, boolean paramBoolean);
    
    public abstract boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3);
    
    public abstract int b(@cgc View paramView);
  }
  
  public static abstract interface b
    extends SwipeableListItemTouchListener.a
  {
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableListItemTouchListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */