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
import bbo;
import bfp;
import chd;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.squareup.otto.Bus;

public class SwipeableListItemTouchListener
  implements View.OnTouchListener
{
  private int a;
  protected int b;
  protected ListView c;
  public boolean d;
  protected boolean e;
  protected View f;
  protected View g;
  protected boolean h;
  private int i;
  private int j;
  private int k;
  private float l;
  private a m;
  private int n = 1;
  private boolean o;
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
    i = ((int)(f1 * 25.0F));
    j = localResources.getInteger(17694720);
    c = paramListView;
    m = parama;
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
      ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { (int)l, paramInt1 }).setDuration(paramInt2);
      localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
          SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this).b(f);
          SwipeableListItemTouchListener.a(SwipeableListItemTouchListener.this).a(paramView, SwipeableListItemTouchListener.b(SwipeableListItemTouchListener.this));
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
    f = null;
    e = false;
    u = false;
    k = 0;
    l = 0.0F;
  }
  
  protected final int a(View paramView)
  {
    if ((c == null) || (paramView == null) || (paramView.getParent() == null)) {
      return -1;
    }
    try
    {
      int i1 = c.getPositionForView(paramView);
      int i2 = c.getHeaderViewsCount();
      return i1 - i2;
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
      h = paramBoolean;
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
    if (n < 2) {
      n = c.getWidth();
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
          g = null;
        } while (h);
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
            break label352;
          }
          if (!(c instanceof StickyListHeadersListView)) {
            break label346;
          }
          paramView = localMotionEvent;
          if (localObject != null)
          {
            if (((View)localObject).getParent() != null) {
              break;
            }
            paramView = localMotionEvent;
          }
          f = paramView;
        }
      } while (f == null);
      q = paramMotionEvent.getRawX();
      s = paramMotionEvent.getRawY();
      r = paramMotionEvent.getX();
      t = paramMotionEvent.getY();
      if (d) {}
      for (k = ((int)m.a(f));; k = 0)
      {
        l = k;
        w = VelocityTracker.obtain();
        w.addMovement(paramMotionEvent);
        return false;
        i1 = c.getPositionForView((View)localObject);
        i2 = c.getFirstVisiblePosition();
        paramView = ((StickyListHeadersListView)c).getWrappedView(i1 - i2);
        break label212;
        label346:
        paramView = (View)localObject;
        break label212;
        label352:
        i1 += 1;
        break;
      }
    }
    for (i3 = 1; (w != null) && (!h); i3 = 0)
    {
      float f1 = paramMotionEvent.getRawX() - q;
      w.addMovement(paramMotionEvent);
      w.computeCurrentVelocity(1000);
      float f2 = w.getXVelocity();
      float f3 = Math.abs(f2);
      float f4 = Math.abs(w.getYVelocity());
      if (Math.abs(f1) >= m.b(f)) {
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
              a(f, 0, j);
            }
          }
          for (;;)
          {
            g = f;
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
            if ((a > f3) || (f4 >= f3) || (!e)) {
              break label1517;
            }
            if (f2 < 0.0F)
            {
              i1 = 1;
              label598:
              if (f1 >= 0.0F) {
                break label648;
              }
              i2 = 1;
              label607:
              if (i1 != i2) {
                break label654;
              }
              i1 = 1;
              label617:
              if (f1 <= 0.0F) {
                break label660;
              }
            }
            label648:
            label654:
            label660:
            for (i2 = i4;; i2 = 0)
            {
              i4 = i2;
              i2 = i1;
              i1 = i4;
              break;
              i1 = 0;
              break label598;
              i2 = 0;
              break label607;
              i1 = 0;
              break label617;
            }
            a(f, -m.b(f), j);
            continue;
            if ((i3 == 0) && (f1 > 0.0F))
            {
              a(f, 0, j);
              bbo.a().a(new bfp());
            }
            else if (u)
            {
              a(f, m.b(f), 50, new DecelerateInterpolator());
            }
            else
            {
              l = 0.0F;
            }
          }
        }
        if ((m instanceof b))
        {
          i1 = a(f);
          if (i1 != -1) {
            ((b)m).a(i1);
          }
        }
        if (k != 0)
        {
          f1 = m.b(f) / 2.0F;
          if (k <= f1) {
            break label916;
          }
          k = m.b(f);
          if (!p.equals(SwipeDirection.LEFT)) {}
        }
        label916:
        for (k *= -1;; k = 0)
        {
          a(f, k, j);
          break;
        }
        if ((w == null) || (h)) {
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
            break label1128;
          }
          i1 = 1;
          label1021:
          if (f1 <= i) {
            break label1134;
          }
          i2 = 1;
          label1034:
          if ((i2 != 0) && (i1 != 0)) {
            u = true;
          }
        }
        if (f1 > 0.0F)
        {
          i1 = 1;
          label1058:
          i2 = (int)m.a(f);
          if (((i2 != 0) || (i1 != 0) || (p != SwipeDirection.RIGHT)) && ((i2 != 0) || (i1 == 0) || (p != SwipeDirection.LEFT))) {
            break label1146;
          }
          paramView = Boolean.valueOf(false);
        }
        label1128:
        label1134:
        label1146:
        label1204:
        label1251:
        do
        {
          while (paramView != null)
          {
            return paramView.booleanValue();
            i1 = 0;
            break label1021;
            i2 = 0;
            break label1034;
            i1 = 0;
            break label1058;
            if ((!d) || (i1 == 0) || (k < 0)) {
              break label1204;
            }
            if ((f != null) && (e)) {
              a(f, 0, j);
            }
            b();
            paramView = Boolean.valueOf(false);
          }
          if ((Math.abs(f1) > b) && (Math.abs(f2 - f3) < Math.abs(f1) / 2.0F))
          {
            e = true;
            if (i1 == 0) {
              break label1501;
            }
            i1 = b;
            v = i1;
            c.requestDisallowInterceptTouchEvent(true);
            localMotionEvent = MotionEvent.obtain(paramMotionEvent);
            localMotionEvent.setAction(paramMotionEvent.getActionIndex() << 8 | 0x3);
            c.onTouchEvent(localMotionEvent);
            localMotionEvent.recycle();
          }
        } while ((!e) && (!u));
        l = (k + f1 - v);
        if ((p == SwipeDirection.LEFT) && (l > 0.0F)) {
          l = 0.0F;
        }
        if ((p == SwipeDirection.RIGHT) && (l < 0.0F)) {
          l = 0.0F;
        }
        m.b(f);
        if ((Math.abs(f1) >= m.b(f)) && (m.a(f) >= m.b(f))) {}
        for (i1 = i3;; i1 = 0)
        {
          if (((u) || (i1 != 0)) && (o)) {
            c.requestDisallowInterceptTouchEvent(false);
          }
          paramView = Boolean.valueOf(m.a(f, l));
          break;
          label1501:
          i1 = -b;
          break label1251;
        }
        label1517:
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
    
    public abstract boolean a(View paramView, float paramFloat);
    
    public abstract int b(@chd View paramView);
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