package com.snapchat.android.ui.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import avp;
import awf;
import chc;

public class TakeSnapButton
  extends View
{
  public long a;
  public boolean b;
  public boolean c = true;
  public boolean d;
  public Runnable e = new Runnable()
  {
    public final void run()
    {
      invalidate();
    }
  };
  private final Paint f = new Paint();
  private final Paint g;
  private final Paint h;
  private final RectF i;
  private final float j;
  private final float k;
  private float l;
  private float m;
  private int n = -1;
  private Bitmap o;
  
  public TakeSnapButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    f.setAntiAlias(true);
    f.setStyle(Paint.Style.FILL);
    g = new Paint();
    g.setAntiAlias(true);
    g.setStyle(Paint.Style.STROKE);
    h = new Paint();
    i = new RectF();
    j = awf.a(5.0F, paramContext);
    k = awf.a(1.0F, paramContext);
  }
  
  private void a(@chc Canvas paramCanvas, float paramFloat)
  {
    f.setColor(-1);
    f.setAlpha(127);
    paramCanvas.drawCircle(l, m, n - j / 2.0F, f);
    f.setColor(-65536);
    f.setAlpha(255);
    paramCanvas.drawCircle(l, m, (1.0F - paramFloat) * 0.75F * (n - j / 2.0F), f);
    g.setColor(-1);
    g.setStrokeWidth(j);
    paramCanvas.drawCircle(l, m, n - j / 2.0F, g);
    g.setColor(-16777216);
    g.setStrokeWidth(k);
    paramCanvas.drawCircle(l, m, n + k / 2.0F, g);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (o == null) {
      return;
    }
    if (n == -1) {
      n = ((int)l - 20);
    }
    if (b)
    {
      if (c) {
        invalidate();
      }
      long l1 = SystemClock.elapsedRealtime() - a;
      if (d)
      {
        float f1 = Math.max(0.0F, (float)((l1 - 500L) * 360L) / 10000.0F);
        a(paramCanvas, 0.0F);
        paramCanvas.drawArc(i, -90.0F, f1, true, h);
        return;
      }
      a(paramCanvas, 1.0F - (float)Math.min(l1 - 125L, 375L) / 375.0F);
      return;
    }
    a(paramCanvas, 1.0F);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    o = avp.a(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    if (o == null) {
      return;
    }
    Object localObject = new Canvas(o);
    g.setColor(-65536);
    g.setStrokeWidth(j);
    l = (paramInt1 / 2);
    m = (paramInt2 / 2);
    n = ((int)l - 20);
    ((Canvas)localObject).drawCircle(l, m, n - j / 2.0F, g);
    localObject = new BitmapShader(o, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    h.setShader((Shader)localObject);
    i.set(0.0F, 0.0F, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.camera.TakeSnapButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */