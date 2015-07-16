package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewPropertyAnimator;
import auq;
import chc;
import com.snapchat.android.analytics.HereAnalytics;

public class LockToStreamView
  extends View
{
  public static final String a = LockToStreamView.class.getSimpleName();
  Paint b;
  Paint c;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  View g;
  float h;
  float i;
  private RectF j;
  private int[] k = new int[2];
  private HereAnalytics l;
  
  public LockToStreamView(@chc Context paramContext, @chc View paramView, @chc HereAnalytics paramHereAnalytics)
  {
    super(paramContext);
    g = paramView;
    l = paramHereAnalytics;
    b = new Paint(1);
    b.setStyle(Paint.Style.STROKE);
    int m = getResources().getDimensionPixelSize(2131296329);
    b.setStrokeWidth(m);
    b.setColor(paramContext.getResources().getColor(2131230768));
    j = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
    setBackgroundColor(0);
    a();
  }
  
  private float b(MotionEvent paramMotionEvent)
  {
    getLocationOnScreen(k);
    return Math.abs(k[1] + getRadius() * getScaleX() - paramMotionEvent.getRawY());
  }
  
  final float a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 < paramFloat2) {
      return getResources().getDimension(2131296333) - getRadius();
    }
    return getParentHeight() - getResources().getDimension(2131296331) - getRadius();
  }
  
  public final void a()
  {
    setVisibility(4);
    setY(-getResources().getDimension(2131296332));
    d = false;
    e = false;
    f = false;
  }
  
  public final void a(int paramInt)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { b.getAlpha(), paramInt });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        LockToStreamView.b(LockToStreamView.this).setAlpha(i);
        invalidate();
      }
    });
    localValueAnimator.setDuration(250L);
    localValueAnimator.start();
  }
  
  final void a(int paramInt1, int paramInt2)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        LockToStreamView.c(LockToStreamView.this).setAlpha(i);
        invalidate();
      }
    });
    localValueAnimator.setDuration(300L);
    localValueAnimator.start();
  }
  
  final void a(MotionEvent paramMotionEvent, boolean paramBoolean)
  {
    if (d) {
      return;
    }
    float f1 = b(paramMotionEvent);
    int m = getResources().getDimensionPixelOffset(2131296326);
    if (f1 > m) {}
    for (f1 = h; paramBoolean; f1 = Math.min(Math.max(auq.a(h, i, (m - f1) / m), h), i))
    {
      float f2 = a(paramMotionEvent.getRawY(), getParentHeight() / 2);
      animate().scaleX(f1).scaleY(f1).translationY(f2).setDuration(300L);
      return;
    }
    setScaleX(f1);
    setScaleY(f1);
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    return b(paramMotionEvent) < getRadius() * getScaleX();
  }
  
  public final void b()
  {
    if (!d) {
      return;
    }
    float f1 = g.getMeasuredWidth();
    float f2 = g.getScaleX();
    float f3 = getResources().getDimensionPixelSize(2131296329) * 2 + f1 * f2;
    int m = getResources().getDimensionPixelOffset(2131296325);
    float f4 = getParentHeight();
    float f5 = f4 / 2.0F;
    f2 = m + f3 / 2.0F;
    f1 = f2;
    if (getY() > f5) {
      f1 = f4 - f2;
    }
    f2 = f3 / getMeasuredHeight();
    setScaleX(f3 / getMeasuredWidth());
    setScaleY(f2);
    setY(f1 - getHeight() / 2.0F);
    f2 = g.getMeasuredHeight() / 2.0F;
    g.setY(f1 - f2);
  }
  
  int getParentHeight()
  {
    View localView = (View)getParent();
    if (localView == null) {
      return 0;
    }
    return localView.getMeasuredHeight();
  }
  
  public float getRadius()
  {
    return getWidth() / 2;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((d) || (e))
    {
      paramCanvas.translate(b.getStrokeWidth(), b.getStrokeWidth());
      paramCanvas.drawArc(j, 0.0F, 360.0F, true, b);
    }
    if (c != null)
    {
      float f1 = getWidth() - (int)(2.0F * b.getStrokeWidth());
      paramCanvas.drawRect(0.0F, 0.0F, f1, f1, c);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    if (paramInt2 == Integer.MIN_VALUE) {}
    for (;;)
    {
      paramInt2 = paramInt1 - (int)(2.0F * b.getStrokeWidth());
      j.set(0.0F, 0.0F, paramInt2, paramInt2);
      setMeasuredDimension(paramInt1, paramInt1);
      return;
      if (paramInt2 != 1073741824) {
        paramInt1 = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.LockToStreamView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */