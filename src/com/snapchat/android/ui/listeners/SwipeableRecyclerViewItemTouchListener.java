package com.snapchat.android.ui.listeners;

import ad;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.j;
import android.support.v7.widget.RecyclerView.s;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

public final class SwipeableRecyclerViewItemTouchListener
  implements View.OnTouchListener
{
  private long A;
  protected int a;
  public boolean b;
  protected boolean c;
  protected boolean d;
  public a e;
  public b f;
  public c g;
  private int h;
  private int i;
  private int j;
  private int k;
  private float l;
  private final RecyclerView m;
  private final d n;
  private final SwipeDirection o;
  private final Handler p;
  private boolean q;
  private float r;
  private float s;
  private float t;
  private float u;
  private Integer v;
  private Integer w;
  private boolean x;
  private int y;
  private VelocityTracker z;
  
  public SwipeableRecyclerViewItemTouchListener(RecyclerView paramRecyclerView, SwipeDirection paramSwipeDirection, d paramd)
  {
    Resources localResources = paramRecyclerView.getContext().getResources();
    float f1 = getDisplayMetricsdensity;
    a = ViewConfiguration.get(paramRecyclerView.getContext()).getScaledTouchSlop();
    h = ((int)(400.0F * f1));
    i = ((int)(f1 * 25.0F));
    j = localResources.getInteger(17694720);
    m = paramRecyclerView;
    n = paramd;
    o = paramSwipeDirection;
    p = new Handler();
  }
  
  private void a()
  {
    z.recycle();
    z = null;
    r = 0.0F;
    t = 0.0F;
    v = null;
    c = false;
    x = false;
    k = 0;
    l = 0.0F;
    A = 0L;
  }
  
  private void a(Integer paramInteger, int paramInt1, int paramInt2)
  {
    a(paramInteger, paramInt1, paramInt2, new LinearInterpolator());
  }
  
  private void a(final Integer paramInteger, int paramInt1, int paramInt2, Interpolator paramInterpolator)
  {
    if (paramInt1 == 0) {}
    for (final boolean bool = true;; bool = false)
    {
      ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { (int)l, paramInt1 }).setDuration(paramInt2);
      localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          float f2 = 1.0F;
          RecyclerView.s locals = SwipeableRecyclerViewItemTouchListener.a(SwipeableRecyclerViewItemTouchListener.this).a(paramInteger.intValue(), false);
          float f1;
          if (locals != null)
          {
            SwipeableRecyclerViewItemTouchListener.a(SwipeableRecyclerViewItemTouchListener.this, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
            int i = SwipeableRecyclerViewItemTouchListener.d(SwipeableRecyclerViewItemTouchListener.this).a(locals);
            float f3 = -SwipeableRecyclerViewItemTouchListener.e(SwipeableRecyclerViewItemTouchListener.this) / i;
            f1 = f3;
            if (f3 < 0.0F) {
              f1 = 0.0F;
            }
            if (f1 <= 1.0F) {
              break label134;
            }
            f1 = f2;
          }
          label134:
          for (;;)
          {
            SwipeableRecyclerViewItemTouchListener.d(SwipeableRecyclerViewItemTouchListener.this).a(locals, SwipeableRecyclerViewItemTouchListener.e(SwipeableRecyclerViewItemTouchListener.this), f1, SwipeableRecyclerViewItemTouchListener.f(SwipeableRecyclerViewItemTouchListener.this), SwipeableRecyclerViewItemTouchListener.g(SwipeableRecyclerViewItemTouchListener.this));
            return;
          }
        }
      });
      localValueAnimator.addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if ((SwipeableRecyclerViewItemTouchListener.d(SwipeableRecyclerViewItemTouchListener.this) != null) && (paramInteger.intValue() != -1)) {
            SwipeableRecyclerViewItemTouchListener.a(SwipeableRecyclerViewItemTouchListener.this).a(paramInteger.intValue(), false);
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
  
  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      d = paramBoolean;
      return;
    }
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = null;
    float f1 = 0.0F;
    int i4 = 1;
    int i3 = 1;
    int i2 = 1;
    Object localObject;
    float f2;
    final int i1;
    label86:
    float f3;
    float f4;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
    case 0: 
      label168:
      do
      {
        do
        {
          return false;
        } while (d);
        localObject = m;
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        i1 = c.a() - 1;
        if (i1 < 0) {
          break label340;
        }
        paramView = c.b(i1);
        f3 = ViewCompat.getTranslationX(paramView);
        f4 = ViewCompat.getTranslationY(paramView);
        if ((f1 < paramView.getLeft() + f3) || (f1 > f3 + paramView.getRight()) || (f2 < paramView.getTop() + f4) || (f2 > paramView.getBottom() + f4)) {
          break;
        }
        v = Integer.valueOf(RecyclerView.c(paramView));
      } while (v.intValue() == -1);
      r = paramMotionEvent.getRawX();
      t = paramMotionEvent.getRawY();
      s = paramMotionEvent.getX();
      u = paramMotionEvent.getY();
      paramView = m.a(v.intValue(), false);
      if (q) {}
      for (k = ((int)n.c(paramView));; k = 0)
      {
        l = k;
        z = VelocityTracker.obtain();
        z.addMovement(paramMotionEvent);
        A = SystemClock.uptimeMillis();
        if (g == null) {
          break;
        }
        i1 = v.intValue();
        p.postDelayed(new Runnable()
        {
          public final void run()
          {
            RecyclerView.s locals = SwipeableRecyclerViewItemTouchListener.a(SwipeableRecyclerViewItemTouchListener.this).a(i1, false);
            SwipeableRecyclerViewItemTouchListener.b(SwipeableRecyclerViewItemTouchListener.this).g(locals);
          }
        }, ViewConfiguration.getLongPressTimeout());
        return false;
        i1 -= 1;
        break label86;
        label340:
        paramView = null;
        break label168;
      }
    }
    for (i3 = 1; (z != null) && (!d) && (v.intValue() != -1); i3 = 0)
    {
      p.removeCallbacksAndMessages(null);
      paramView = m.a(v.intValue(), false);
      f1 = paramMotionEvent.getRawX() - r;
      z.addMovement(paramMotionEvent);
      z.computeCurrentVelocity(1000);
      f2 = z.getXVelocity();
      f3 = Math.abs(f2);
      f4 = Math.abs(z.getYVelocity());
      if (n.b(paramView)) {
        if (Math.abs(f1) >= n.a(paramView)) {
          if (f1 > 0.0F) {
            i1 = 1;
          }
        }
      }
      for (;;)
      {
        if (i2 != 0) {
          if (q) {
            if ((o == SwipeDirection.LEFT) && (i1 != 0)) {
              a(v, 0, j);
            }
          }
        }
        label619:
        label628:
        label638:
        label669:
        label675:
        label681:
        label921:
        do
        {
          for (;;)
          {
            a();
            return false;
            i1 = 0;
            break;
            if (h <= f2)
            {
              if (f1 > 0.0F)
              {
                i1 = 1;
                break;
              }
              i1 = 0;
              break;
            }
            if ((h > f3) || (f4 >= f3) || (!c)) {
              break label1819;
            }
            if (f2 < 0.0F)
            {
              i1 = 1;
              if (f1 >= 0.0F) {
                break label669;
              }
              i2 = 1;
              if (i1 != i2) {
                break label675;
              }
              i1 = 1;
              if (f1 <= 0.0F) {
                break label681;
              }
            }
            for (i2 = i4;; i2 = 0)
            {
              i4 = i1;
              i1 = i2;
              i2 = i4;
              break;
              i1 = 0;
              break label619;
              i2 = 0;
              break label628;
              i1 = 0;
              break label638;
            }
            a(v, -n.a(paramView), j);
            continue;
            if ((i3 == 0) && (f1 > 0.0F))
            {
              a(v, 0, j);
              n.d(paramView);
            }
            else if (x)
            {
              a(v, n.a(paramView), 50, new DecelerateInterpolator());
            }
            else
            {
              l = 0.0F;
            }
          }
          if ((Math.abs(f1) <= a) && (Math.abs(paramMotionEvent.getRawY() - t) <= a))
          {
            if ((e != null) && (SystemClock.uptimeMillis() - A <= 190L) && (v.intValue() != -1)) {
              e.e(paramView);
            }
            if (f != null)
            {
              if ((v == null) || (v.intValue() == -1) || (!v.equals(w))) {
                break label1050;
              }
              f.f(paramView);
              new Handler().postDelayed(new Runnable()
              {
                public final void run()
                {
                  SwipeableRecyclerViewItemTouchListener.c(SwipeableRecyclerViewItemTouchListener.this);
                }
              }, ViewConfiguration.getDoubleTapTimeout());
            }
          }
          paramView = m.b(v.intValue());
        } while (paramView == null);
        if (k != 0)
        {
          f1 = n.a(paramView) / 2.0F;
          if (k <= f1) {
            break label1061;
          }
          k = n.a(paramView);
          if (!o.equals(SwipeDirection.LEFT)) {}
        }
        label1050:
        label1061:
        for (k *= -1;; k = 0)
        {
          a(v, k, j);
          break;
          w = v;
          break label921;
        }
        if ((z == null) || (d) || (v.intValue() == -1)) {
          break;
        }
        if ((Math.abs(paramMotionEvent.getRawX() - r) > a) || (Math.abs(paramMotionEvent.getRawY() - t) > a)) {
          p.removeCallbacksAndMessages(null);
        }
        z.addMovement(paramMotionEvent);
        f3 = paramMotionEvent.getRawX() - r;
        f2 = paramMotionEvent.getRawY();
        f4 = t;
        if (!x)
        {
          z.computeCurrentVelocity(1000);
          float f5 = z.getXVelocity();
          if ((f5 <= z.getYVelocity()) || (f5 <= h)) {
            break label1381;
          }
          i1 = 1;
          label1228:
          if (f3 <= i) {
            break label1387;
          }
          i2 = 1;
          label1242:
          if ((i2 != 0) && (i1 != 0)) {
            x = true;
          }
        }
        localObject = m.b(v.intValue());
        if (!n.b((RecyclerView.s)localObject)) {
          break;
        }
        localObject = m.b(v.intValue());
        if (f3 > 0.0F)
        {
          i1 = 1;
          label1313:
          i2 = (int)n.c((RecyclerView.s)localObject);
          if (((i2 != 0) || (i1 != 0) || (o != SwipeDirection.RIGHT)) && ((i2 != 0) || (i1 == 0) || (o != SwipeDirection.LEFT))) {
            break label1399;
          }
          paramView = Boolean.valueOf(false);
        }
        label1381:
        label1387:
        label1399:
        label1455:
        label1504:
        do
        {
          while (paramView != null)
          {
            return paramView.booleanValue();
            i1 = 0;
            break label1228;
            i2 = 0;
            break label1242;
            i1 = 0;
            break label1313;
            if ((!q) || (i1 == 0) || (k < 0)) {
              break label1455;
            }
            if ((localObject != null) && (c)) {
              a(v, 0, j);
            }
            a();
            paramView = Boolean.valueOf(false);
          }
          if ((Math.abs(f3) > a) && (Math.abs(f2 - f4) < Math.abs(f3) / 2.0F))
          {
            c = true;
            if (i1 == 0) {
              break label1797;
            }
            i1 = a;
            y = i1;
            m.requestDisallowInterceptTouchEvent(true);
            MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
            localMotionEvent.setAction(paramMotionEvent.getActionIndex() << 8 | 0x3);
            m.onTouchEvent(localMotionEvent);
            localMotionEvent.recycle();
          }
        } while ((!c) && (!x));
        l = (k + f3 - y);
        if ((o == SwipeDirection.LEFT) && (l > 0.0F)) {
          l = 0.0F;
        }
        if ((o == SwipeDirection.RIGHT) && (l < 0.0F)) {
          l = 0.0F;
        }
        i1 = n.a((RecyclerView.s)localObject);
        f2 = -l / i1;
        if (f2 < 0.0F) {}
        for (;;)
        {
          f2 = f1;
          if (f1 > 1.0F) {
            f2 = 1.0F;
          }
          i1 = n.a((RecyclerView.s)localObject);
          if ((Math.abs(f3) >= i1) && (n.c((RecyclerView.s)localObject) >= i1)) {}
          for (i1 = i3;; i1 = 0)
          {
            if ((x) || (i1 != 0))
            {
              if (b) {
                m.requestDisallowInterceptTouchEvent(false);
              }
              n.a((RecyclerView.s)localObject, x);
            }
            paramView = Boolean.valueOf(n.a((RecyclerView.s)localObject, l, f2, s, u));
            break;
            label1797:
            i1 = -a;
            break label1504;
          }
          f1 = f2;
        }
        label1819:
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
  
  public static abstract interface a<VH extends RecyclerView.s>
  {
    public abstract void e(VH paramVH);
  }
  
  public static abstract interface b<VH extends RecyclerView.s>
  {
    public abstract void f(VH paramVH);
  }
  
  public static abstract interface c<VH extends RecyclerView.s>
  {
    public abstract void g(VH paramVH);
  }
  
  public static abstract interface d<VH extends RecyclerView.s>
  {
    public abstract int a(VH paramVH);
    
    public abstract void a(VH paramVH, boolean paramBoolean);
    
    public abstract boolean a(VH paramVH, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
    
    public abstract boolean b(VH paramVH);
    
    public abstract float c(VH paramVH);
    
    public abstract void d(VH paramVH);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */