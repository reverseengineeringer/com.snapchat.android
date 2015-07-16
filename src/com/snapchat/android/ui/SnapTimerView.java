package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import aue;
import awf;
import chc;

public class SnapTimerView
  extends TextView
{
  public long a = 0L;
  public long b = Long.MAX_VALUE;
  public long c = 0L;
  public boolean d = false;
  private boolean e;
  private long f = 0L;
  private long g = 0L;
  private Bitmap h;
  private Paint i;
  private Bitmap j;
  private Paint k;
  private RectF l;
  
  public SnapTimerView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public SnapTimerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public SnapTimerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    setTextColor(-1);
    setTextSize(1, 20.0F);
    setGravity(17);
    i = new Paint();
    i.setAntiAlias(true);
    k = new Paint();
    k.setAntiAlias(true);
    l = new RectF();
  }
  
  private void b()
  {
    int n = 2;
    Object localObject = getText();
    int m;
    if (localObject != null)
    {
      m = ((CharSequence)localObject).length();
      if (m >= 2) {
        break label83;
      }
      m = n;
    }
    label83:
    for (;;)
    {
      if (e) {}
      for (n = 18;; n = 12)
      {
        m = (int)awf.a(m * 12 + n, getContext());
        localObject = getLayoutParams();
        width = m;
        height = m;
        setLayoutParams((ViewGroup.LayoutParams)localObject);
        return;
        m = 0;
        break;
      }
    }
  }
  
  public final void a(long paramLong1, long paramLong2)
  {
    long l1 = SystemClock.elapsedRealtime();
    a = paramLong2;
    f = (l1 - (paramLong2 - paramLong1));
    c = (l1 + paramLong1);
    d = true;
    invalidate();
  }
  
  public void onDraw(@chc Canvas paramCanvas)
  {
    if (d) {
      g = SystemClock.elapsedRealtime();
    }
    int n = getWidth();
    int i1 = getHeight();
    int m;
    label187:
    long l1;
    long l2;
    if ((i1 != 0) && (n != 0))
    {
      if ((h == null) || (h.getWidth() != n) || (h.getHeight() != i1))
      {
        if (h != null) {
          h.recycle();
        }
        if (!e) {
          break label426;
        }
        m = 2130838155;
        h = aue.a(getContext(), m, n, i1);
        i.setShader(new BitmapShader(h, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      }
      if ((j == null) || (j.getWidth() != n) || (j.getHeight() != i1))
      {
        if (j != null) {
          j.recycle();
        }
        if (!e) {
          break label432;
        }
        m = 2130838154;
        j = aue.a(getContext(), m, n, i1);
        k.setShader(new BitmapShader(j, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      }
      m = Math.max(n, i1) / 2;
      int i2 = (int)Math.ceil(Math.sqrt(Math.pow(m, 2.0D) + Math.pow(m, 2.0D)));
      m = i2 - i1 / 2;
      i2 -= n / 2;
      l.set(0 - i2, 0 - m, i2 + n, i1 + m);
      paramCanvas.drawRect(l, k);
      l1 = g - f;
      l2 = c - f;
      if (l1 >= 0L) {
        break label438;
      }
      l1 = 0L;
    }
    for (;;)
    {
      float f1 = (float)(l1 * 360L) / (float)l2;
      i.setAlpha(255);
      paramCanvas.drawArc(l, -90.0F + f1, 360.0F - f1, true, i);
      i.setAlpha(85);
      paramCanvas.drawArc(l, -90.0F, f1, true, i);
      super.onDraw(paramCanvas);
      return;
      label426:
      m = 2130838153;
      break;
      label432:
      m = 2130838152;
      break label187;
      label438:
      if (l1 > l2) {
        l1 = l2;
      } else {
        invalidate((int)l.left, (int)l.top, (int)l.right, (int)l.bottom);
      }
    }
  }
  
  public void setIsStory(boolean paramBoolean)
  {
    if (e == paramBoolean) {
      return;
    }
    e = paramBoolean;
    if (h != null)
    {
      h.recycle();
      h = null;
    }
    if (j != null)
    {
      j.recycle();
      j = null;
    }
    b();
  }
  
  public void setText(String paramString)
  {
    super.setText(paramString);
    b();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapTimerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */