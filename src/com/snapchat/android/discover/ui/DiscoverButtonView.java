package com.snapchat.android.discover.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import avh;
import bgk;

public class DiscoverButtonView
  extends View
{
  public boolean a = false;
  public final Runnable b = new Runnable()
  {
    public final void run()
    {
      invalidate();
    }
  };
  private final Paint c;
  private final Paint d;
  private final float e;
  private final float f;
  private final bgk g = new bgk();
  private float h;
  private float i;
  private long j;
  private float k = -1.0F;
  private final Runnable l = new Runnable()
  {
    public final void run()
    {
      DiscoverButtonView.a(DiscoverButtonView.this, SystemClock.elapsedRealtime());
      invalidate();
    }
  };
  
  public DiscoverButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e = avh.a(2.0F, paramContext);
    f = avh.a(1.0F, paramContext);
    c = new Paint();
    c.setColor(getResources().getColor(2131230784));
    c.setStyle(Paint.Style.FILL_AND_STROKE);
    c.setAntiAlias(true);
    c.setStrokeWidth(e);
    d = new Paint();
    d.setColor(getResources().getColor(2131230784));
    d.setStyle(Paint.Style.STROKE);
    d.setAntiAlias(true);
  }
  
  private void a(float paramFloat)
  {
    if (k == -1.0F) {
      k = (Math.round(0.67F * paramFloat) - e / 2.0F);
    }
  }
  
  public final void a()
  {
    if (a) {
      return;
    }
    a = true;
    postDelayed(l, 150L);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    a(h);
    if (a)
    {
      long l1 = SystemClock.elapsedRealtime() - j;
      double d1;
      double d2;
      if (l1 < 650L)
      {
        invalidate();
        d.setAlpha(255);
        d.setStrokeWidth(e);
        paramCanvas.drawCircle(h, i, k, d);
        d1 = l1 / 650.0D;
        d2 = k;
        paramCanvas.drawCircle(h, i, (float)(d1 * d2), c);
        return;
      }
      paramCanvas.drawCircle(h, i, k, c);
      l1 = (l1 - 650L) % 1450L;
      if (l1 < 1300L)
      {
        invalidate();
        d1 = l1 / 1300.0D;
        int m = (int)Math.round(255.0D * Math.sin(3.141592653589793D * d1));
        d.setAlpha(m);
        d2 = e;
        double d3 = f;
        d.setStrokeWidth((float)((1.0D - d1) * d2 + d3 * d1));
        d2 = k;
        d3 = h - f / 2.0F;
        paramCanvas.drawCircle(h, i, (float)(d1 * d3 + (1.0D - d1) * d2), d);
        return;
      }
      postDelayed(b, 150L);
      return;
    }
    d.setAlpha(255);
    d.setStrokeWidth(e);
    paramCanvas.drawCircle(h, i, k, d);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    h = (paramInt1 / 2);
    i = (paramInt2 / 2);
    a(h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DiscoverButtonView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */