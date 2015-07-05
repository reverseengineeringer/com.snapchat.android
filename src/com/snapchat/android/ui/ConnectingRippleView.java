package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.SystemClock;
import android.view.View;
import avh;

public class ConnectingRippleView
  extends View
{
  private final Paint a = new Paint();
  private final float b;
  private float c;
  private float d;
  private float e;
  private boolean f;
  private long g;
  
  public ConnectingRippleView(Context paramContext)
  {
    super(paramContext);
    a.setStyle(Paint.Style.STROKE);
    float f1 = avh.a(1.0F, paramContext);
    a.setStrokeWidth(f1);
    a.setColor(11711154);
    a.setAntiAlias(true);
    b = avh.a(3.0F, paramContext);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    long l2 = SystemClock.elapsedRealtime() - g;
    long l1 = l2;
    if (l2 > 1800L)
    {
      if (!f) {
        return;
      }
      l1 = 0L;
      g = SystemClock.elapsedRealtime();
    }
    float f1 = (float)l1 / 1800.0F;
    float f2 = 2.0F * e * f1;
    a.setAlpha((int)((1.0F - f1) * 255.0F));
    paramCanvas.drawCircle(c, d, f2, a);
    paramCanvas.drawCircle(c, d, f2 + b, a);
    invalidate();
  }
  
  public void setRippleCenter(float paramFloat1, float paramFloat2)
  {
    c = paramFloat1;
    d = paramFloat2;
  }
  
  public void setRippleScale(float paramFloat)
  {
    e = paramFloat;
  }
  
  public void setRipplesEnabled(boolean paramBoolean)
  {
    if ((paramBoolean) && (!f))
    {
      g = SystemClock.elapsedRealtime();
      invalidate();
    }
    f = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ConnectingRippleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */