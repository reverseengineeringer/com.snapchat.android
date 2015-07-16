package com.snapchat.android.discover.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import awf;
import bhk;

public class DiscoverButtonView
  extends View
{
  private final Paint a;
  private final Paint b;
  private final float c;
  private final bhk d = new bhk();
  private float e;
  private float f;
  private long g;
  private float h = -1.0F;
  private boolean i = false;
  private final Runnable j = new Runnable()
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
    c = awf.a(2.0F, paramContext);
    a = new Paint();
    a.setColor(getResources().getColor(2131230785));
    a.setStyle(Paint.Style.FILL_AND_STROKE);
    a.setAntiAlias(true);
    a.setStrokeWidth(c);
    b = new Paint();
    b.setColor(getResources().getColor(2131230785));
    b.setStyle(Paint.Style.STROKE);
    b.setAntiAlias(true);
    b.setStrokeWidth(c);
  }
  
  private void a(float paramFloat)
  {
    if (h == -1.0F) {
      h = (Math.round(0.67F * paramFloat) - c / 2.0F);
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    a(e);
    if (i)
    {
      long l = SystemClock.elapsedRealtime() - g;
      if (l < 650L)
      {
        invalidate();
        paramCanvas.drawCircle(e, f, h, b);
        double d1 = l / 650.0D;
        double d2 = h;
        paramCanvas.drawCircle(e, f, (float)(d1 * d2), a);
        return;
      }
      paramCanvas.drawCircle(e, f, h, a);
      return;
    }
    paramCanvas.drawCircle(e, f, h, b);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    e = (paramInt1 / 2);
    f = (paramInt2 / 2);
    a(e);
  }
  
  public void setFilled(boolean paramBoolean)
  {
    if (i == paramBoolean) {
      return;
    }
    i = paramBoolean;
    if (paramBoolean)
    {
      postDelayed(j, 150L);
      return;
    }
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DiscoverButtonView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */