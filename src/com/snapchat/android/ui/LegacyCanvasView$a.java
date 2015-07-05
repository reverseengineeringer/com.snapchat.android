package com.snapchat.android.ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;

public final class LegacyCanvasView$a
{
  public Paint a;
  Path b;
  private float d;
  
  public LegacyCanvasView$a(LegacyCanvasView paramLegacyCanvasView, int paramInt, float paramFloat)
  {
    d = paramFloat;
    b = new Path();
    a = new Paint();
    a.setColor(paramInt);
    a.setAntiAlias(true);
    a.setStyle(Paint.Style.STROKE);
    a.setStrokeWidth(d * 6.5F);
    a.setStrokeJoin(Paint.Join.ROUND);
    a.setStrokeCap(Paint.Cap.ROUND);
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    b.lineTo(paramFloat1, paramFloat2);
  }
  
  public final void a(Canvas paramCanvas)
  {
    paramCanvas.drawPath(b, a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LegacyCanvasView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */