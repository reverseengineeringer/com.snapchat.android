package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import avp;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

public class KarelView
  extends View
{
  private int a;
  private Handler b = new Handler();
  private Random c = new Random();
  private Paint d = new Paint();
  private Bitmap e;
  private int f;
  private int g;
  private int h;
  private Bitmap i;
  private Set<Point> j = new HashSet();
  private final Runnable k = new Runnable()
  {
    public final void run()
    {
      if (KarelView.a(KarelView.this).nextInt(4) == 0)
      {
        Point localPoint = new Point();
        x = KarelView.a(KarelView.b(KarelView.this), KarelView.c(KarelView.this));
        y = KarelView.a(KarelView.d(KarelView.this), 8);
        if (KarelView.e(KarelView.this).add(localPoint))
        {
          invalidate();
          return;
        }
      }
      if (KarelView.a(KarelView.this).nextInt(3) == 0) {
        KarelView.f(KarelView.this);
      }
      for (;;)
      {
        invalidate();
        return;
        int i = KarelView.a(KarelView.g(KarelView.this), 4);
        switch (i)
        {
        default: 
          throw new RuntimeException("Something is rotten in the state of Denmark: " + i);
        case 0: 
          KarelView.h(KarelView.this);
          break;
        case 1: 
          KarelView.i(KarelView.this);
          break;
        case 2: 
          KarelView.j(KarelView.this);
          break;
        case 3: 
          KarelView.k(KarelView.this);
        }
      }
    }
  };
  
  public KarelView(Context paramContext)
  {
    super(paramContext);
  }
  
  public KarelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public KarelView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private static Matrix a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramInt3 / paramInt1, paramInt4 / paramInt2);
    paramInt1 = b(paramInt5, 4);
    switch (paramInt1)
    {
    default: 
      throw new RuntimeException("Something is rotten in the state of Denmark: " + paramInt1);
    case 1: 
      localMatrix.postRotate(90.0F, paramInt3 / 2, paramInt4 / 2);
    case 0: 
      return localMatrix;
    case 2: 
      localMatrix.postRotate(180.0F, paramInt3 / 2, paramInt4 / 2);
      return localMatrix;
    }
    localMatrix.postRotate(270.0F, paramInt3 / 2, paramInt4 / 2);
    return localMatrix;
  }
  
  private static int b(int paramInt1, int paramInt2)
  {
    int m = paramInt1 % paramInt2;
    paramInt1 = m;
    if (m < 0) {
      paramInt1 = m + paramInt2;
    }
    return paramInt1;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    e = avp.a(getContext(), 2130837857, false);
    i = avp.a(getContext(), 2130837638, false);
    d.setAntiAlias(false);
    d.setFilterBitmap(false);
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    e.recycle();
    e = null;
    i.recycle();
    i = null;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int n = paramCanvas.getWidth();
    int m = paramCanvas.getHeight();
    a = (n / (m / 8));
    Object localObject;
    int i1;
    int i2;
    if ((i != null) && (j != null))
    {
      localObject = j.iterator();
      while (((Iterator)localObject).hasNext())
      {
        Point localPoint = (Point)((Iterator)localObject).next();
        Matrix localMatrix = a(i.getWidth(), i.getHeight(), n / a, m / 8, 0);
        i1 = x;
        i2 = n / a;
        int i3 = y;
        int i4 = m / 8;
        localMatrix.postTranslate(i1 * i2, i3 * i4);
        paramCanvas.drawBitmap(i, localMatrix, d);
      }
    }
    if (e != null)
    {
      localObject = a(e.getWidth(), e.getHeight(), n / a, m / 8, h);
      i1 = b(f, a);
      n /= a;
      i2 = b(g, 8);
      m /= 8;
      ((Matrix)localObject).postTranslate(n * i1, m * i2);
      paramCanvas.drawBitmap(e, (Matrix)localObject, d);
    }
    b.removeCallbacks(k);
    b.postDelayed(k, 400L);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.KarelView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */